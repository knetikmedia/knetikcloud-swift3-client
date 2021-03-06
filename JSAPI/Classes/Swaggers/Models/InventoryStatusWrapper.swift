//
// InventoryStatusWrapper.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class InventoryStatusWrapper: JSONEncodable {

    public enum Value: String { 
        case pending = "pending"
        case active = "active"
        case inactive = "inactive"
    }
    public var value: Value?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["value"] = self.value?.rawValue

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
