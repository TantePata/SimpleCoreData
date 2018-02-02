//
//  Person+CoreDataProperties.swift
//  ESGISimpleCoreDataSample-iOS
//
//  Created by TantePata on 02/02/2018.
//  Copyright © 2018 Digipolitan. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var surname: String?
    @NSManaged public var name: String?

}
