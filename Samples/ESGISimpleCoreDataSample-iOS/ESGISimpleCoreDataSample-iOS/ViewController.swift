//
//  ViewController.swift
//  ESGISimpleCoreDataSample-iOS
//
//  Created by Benoit BRIATTE on 23/12/2016.
//  Copyright © 2016 Digipolitan. All rights reserved.
//

import UIKit
import ESGISimpleCoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let customer = try SimpleCoreData.create(entityDescr: Customer.self)
            let customers = try SimpleCoreData.getAll(entityClass: Customer.self)
            print(customers)
            let suppressed = try SimpleCoreData.delete(entity: customer!)
            print("OK")
        } catch {
            print("\(error)")
        }
        
    }
}
