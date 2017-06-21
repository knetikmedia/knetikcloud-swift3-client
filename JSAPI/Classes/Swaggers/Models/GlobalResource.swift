//
// GlobalResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class GlobalResource: JSONEncodable {
    public var globalDefId: String?
    public var scopes: [String:ExpressionResource]?
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["global_def_id"] = self.globalDefId
        nillableDictionary["scopes"] = self.scopes?.encodeToJSON()
        nillableDictionary["type"] = self.type
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
