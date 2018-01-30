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

open class SimpleCoreData {
    //static let sharedInstance = SimpleCoreData()
    static var context: NSManagedObjectContext?
    
    private init() {}
    
    
    class func delete(entity: NSManagedObject) throws -> Bool {
        guard let context = context else {
            throw NSError()
        }
        do {
            context.delete(entity)
            try context.save()
            return entity.isDeleted && entity.hasPersistentChangedValues
        } catch {
            print("In SimpleCoreData:delete() : \(error)")
            return false
        }
    }
    
    class func getAll(entityClass: NSManagedObject.Type) throws -> [NSManagedObject]? {
        guard let context = context else {
            throw NSError()
        }
        if #available(iOS 10.0, *) {
            return try context.fetch(entityClass.fetchRequest()) as? [NSManagedObject]
        } else {
            // TODO find another way or throw a proper error
            print("getAll() not available for iOS <= 10")
            return nil
        }
    }
    
    class func create(entityDescr: NSManagedObject.Type) throws -> NSManagedObject? {
        guard let context = context else {
            throw NSError()
        }
        if #available(iOS 10.0, *) {
            do {
                let entity = entityDescr.init(context: context)
                try context.save()
                return entity
            } catch {
                print("In SimpleCoreData:create() : \(error)")
                return nil
            }
        } else {
            // TODO find another way or throw a proper error
            print("create() not available for iOS <= 10")
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
