import Foundation
import CoreData

@testable import SugarRecord

func testCoreData() -> CoreDataDefaultStorage {
    let store = CoreData.Store.Named("testing")
    let bundle = Bundle(for: CoreDataDefaultStorageTests.classForCoder())
    let model = CoreData.ObjectModel.Merged([bundle])
    let defaultStorage = try! CoreDataDefaultStorage(store: store, model: model)
    return defaultStorage
}
