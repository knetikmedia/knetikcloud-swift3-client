//
// ConstantResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ConstantResource: JSONEncodable {

    public var type: String?
    public var value: Any?
    public var valueType: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["type"] = self.type
        nillableDictionary["value"] = self.value
        nillableDictionary["value_type"] = self.valueType

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}