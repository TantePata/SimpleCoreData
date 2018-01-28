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
    
    func getAll(entityClass: NSManagedObject) -> [NSManagedObject] {
        //context.fetch()
    }
    
    func getById(entityDescr: NSEntityDescription) -> NSManagedObject {
        <#function body#>
    }
    
    func create(entityDescr: NSEntityDescription) -> NSManagedObject {
        <#function body#>
    }
    
    func modify(entityDescr: NSEntityDescription) -> Bool {
        return false
    }
}
