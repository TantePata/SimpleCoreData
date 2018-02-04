//
//  SimpleCoreData.swift
//  ESGISimpleCoreData-iOS
//
//  Created by Caroline Chaudey on 27/01/2018.
//  Copyright © 2018 LittlePoneyInc. All rights reserved.
//

import Foundation
import CoreData
import UIKit

// code usually generated in AppDelegate
@available(iOS 10.0, *)
open class SimpleCoreData {

    private init() {}
    open static var persistentContainer: NSPersistentContainer?
    open static func loadContainer (name: String) {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: name)
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.

                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        self.persistentContainer = container
    }

    open class func saveContext () throws {
        guard let container = persistentContainer else {
            throw SimpleCoreDataError.undefinedContainer
        }
        let context = container.viewContext
        if context.hasChanges {
            do {
                print("Saving.")
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        } else {
            print("No changes detected.")
        }
    }
}

// simplified methods
@available(iOS 10.0, *)
extension SimpleCoreData {

    open class func delete(entity: NSManagedObject) throws {
        guard let container = persistentContainer else {
            throw SimpleCoreDataError.undefinedContainer
        }
        do {
            print("Deleting ...")
            container.viewContext.delete(entity)
            try saveContext()
        } catch {
            print("In SimpleCoreData:delete() : \(error)")
        }
    }

    open class func getAll(entityClass: NSManagedObject.Type) throws -> [NSManagedObject]? {
        guard let container = persistentContainer else {
            throw SimpleCoreDataError.undefinedContainer
        }
        return try container.viewContext.fetch(entityClass.fetchRequest()) as? [NSManagedObject]
    }

    open class func create(entityDescr: NSManagedObject.Type) throws -> NSManagedObject? {
        guard let container = persistentContainer else {
            throw SimpleCoreDataError.undefinedContainer
        }
        do {
            print("Saving ...")
            let entity = entityDescr.init(context: container.viewContext)
            try saveContext()
            return entity
        } catch {
            print("In SimpleCoreData:create() : \(error)")
            return nil
        }
    }
    /*
    func getById(entityDescr: NSEntityDescription) -> NSManagedObject? {
        return nil
    }
    */
    /*
    func modify(entityDescr: NSEntityDescription) -> Bool {
        return false
    }*/
}
