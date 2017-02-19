//
// NestedCategory.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class NestedCategory: JSONEncodable {
    /** Whether the category is active */
    public var active: Bool?
    /** The id of the category */
    public var id: String?
    /** The name of the category */
    public var name: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["active"] = self.active
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
