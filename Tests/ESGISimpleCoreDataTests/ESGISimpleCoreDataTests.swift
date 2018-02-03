import XCTest
import CoreData
@testable import ESGISimpleCoreData

@available(iOS 10.0, *)
class ESGISimpleCoreDataTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    // Simple CoreData test cover : 17%
    func testDidNotSetContext() {
        let dummy = createDummyObject()

        XCTAssertThrowsError(try SimpleCoreData.create(entityDescr: NSManagedObject.self)) { (error) -> Void in
            XCTAssertEqual(error as? SimpleCoreDataError, SimpleCoreDataError.undefinedContainer)
        }
        XCTAssertThrowsError(try SimpleCoreData.getAll(entityClass: NSManagedObject.self)) { (error) -> Void in
            XCTAssertEqual(error as? SimpleCoreDataError, SimpleCoreDataError.undefinedContainer)
        }
        XCTAssertThrowsError(try SimpleCoreData.delete(entity: dummy)) { (error) -> Void in
            XCTAssertEqual(error as? SimpleCoreDataError, SimpleCoreDataError.undefinedContainer)
        }
    }

    // UTILS

    func createDummyObject() -> NSManagedObject {
        let dummyDescr = NSEntityDescription()
        dummyDescr.name = "dummy"
        return NSManagedObject(entity: dummyDescr, insertInto: nil)
    }
}
