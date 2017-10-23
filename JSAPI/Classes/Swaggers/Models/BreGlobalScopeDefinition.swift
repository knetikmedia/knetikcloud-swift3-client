//
// BreGlobalScopeDefinition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class BreGlobalScopeDefinition: JSONEncodable {

    /** The name of the scoping parameter. This is used as the unique identifier of this scope */
    public var name: String?
    /** The variable type of this scoping parameter. See Bre Variables endpoint for list */
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["type"] = self.type

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
