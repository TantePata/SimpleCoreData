import XCTest
import CoreData
@testable import ESGISimpleCoreData

class ESGISimpleCoreDataTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    // Simple CoreData test cover : 17%
    // TODO create a dedicated error class
    func testDidNotSetContext() {
        let dummy = NSManagedObject()
        XCTAssertThrowsError(try SimpleCoreData.create(entityDescr: NSManagedObject.self))
        XCTAssertThrowsError(try SimpleCoreData.getAll(entityClass: NSManagedObject.self))
        XCTAssertThrowsError(try SimpleCoreData.delete(entity: dummy))
    }
}
