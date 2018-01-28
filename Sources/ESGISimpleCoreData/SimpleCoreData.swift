//
//  SimpleCoreData.swift
//  ESGISimpleCoreData-iOS
//
//  Created by Caroline Chaudey on 27/01/2018.
//  Copyright © 2018 LittlePoneyInc. All rights reserved.
//

import Foundation
import CoreData


open class SimpleCoreData {
    var context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    func delete(entity: NSManagedObject) -> Bool {
        do {
            context.delete(entity)
            try context.save()
            return entity.isDeleted && entity.hasPersistentChangedValues
        } catch {
            return false
        }
    }
    
    func getAll(entityClass: NSManagedObject.Type) throws -> [NSManagedObject]? {
        if #available(iOS 10.0, *) {
            return try context.fetch(entityClass.fetchRequest()) as? [NSManagedObject]
        } else {
            // TODO find another way or throw a proper error
            NSLog("getAll() not available for iOS <= 10")
            return nil
        }
    }
    
    func create(entityDescr: NSManagedObject.Type) -> NSManagedObject? {
        if #available(iOS 10.0, *) {
            do {
                let entity = entityDescr.init(context: context)
                try context.save()
                return entity
            } catch {
                NSLog("error on create()")
                return nil
            }
        } else {
            // TODO find another way or throw a proper error
            NSLog("create() not available for iOS <= 10")
            return nil
        }
    }
    
    /*
    func getById(entityDescr: NSEntityDescription) -> NSManagedObject {
        <#function body#>
    }
    */
    
    /*
    func modify(entityDescr: NSEntityDescription) -> Bool {
        return false
    }*/
}
