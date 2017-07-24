//
// LookupResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class LookupResource: JSONEncodable {

    public var lookupKey: ExpressionResource?
    public var type: String?
    public var valueType: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["lookup_key"] = self.lookupKey?.encodeToJSON()
        nillableDictionary["type"] = self.type
        nillableDictionary["value_type"] = self.valueType

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
