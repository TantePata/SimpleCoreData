//
//  ViewController.swift
//  ESGISimpleCoreDataSample-iOS
//
//  Created by Caroline Chaudey on 02/02/2018.
//  Copyright © 2018 LittlePoneyInc. All rights reserved.
//

import UIKit
import ESGISimpleCoreData

@available(iOS 10.0, *)
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let customer = try SimpleCoreData.create(entityDescr: Customer.self)
            var customers = try SimpleCoreData.getAll(entityClass: Customer.self)
            print(customers as Any)
            try SimpleCoreData.delete(entity: customer!)

            customers = try SimpleCoreData.getAll(entityClass: Customer.self)
            print(customers as Any)

            print("OK")
        } catch {
            print("\(error)")
        }
    }
}
