//
//  SimpleCoreData.swift
//  ESGISimpleCoreData-iOS
//
//  Created by Caroline Chaudey on 27/01/2018.
//  Copyright © 2018 Digipolitan. All rights reserved.
//

import Foundation
import CoreData


open class SimpleCoreData {
    var context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    func delete(entity: NSManagedObject) /*-> Bool*/ {
        context.delete(entity)
        // TODO verify that the deletion happened and return the result
    }
    
    func getAll(entityClass: NSManagedObject.Type) throws -> [NSManagedObject]? {
        if #available(iOS 10.0, *) {
            return try context.fetch(entityClass.fetchRequest()) as? [NSManagedObject]
        } else {
            // TODO find another way
            NSLog("getAll() not available for iOS <= 10")
            return nil
        }
    }
    /*
    func getById(entityDescr: NSEntityDescription) -> NSManagedObject {
        <#function body#>
    }
    
    func create(entityDescr: NSEntityDescription) -> NSManagedObject {
        <#function body#>
    }
    
    func modify(entityDescr: NSEntityDescription) -> Bool {
        return false
    }*/
}
