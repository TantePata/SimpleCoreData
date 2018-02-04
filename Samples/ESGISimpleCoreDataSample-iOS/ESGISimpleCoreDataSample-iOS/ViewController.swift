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
            print("CREATION")
            let customer = try SimpleCoreData.create(entityDescr: Customer.self)
            var customers = verifyCustomers()
            print(customers as Any)

            print("DELETION")
            try SimpleCoreData.delete(entity: customer!)
            customers = verifyCustomers()
            print(customers as Any)

            print("OK")
        } catch {
            print("\(error)")
        }
    }

    private func verifyCustomers() -> [Customer]? {
        do {
            return try SimpleCoreData.getAll(entityClass: Customer.self) as? [Customer]
        } catch {
            print("\(error)")
            return nil
        }
    }
}
