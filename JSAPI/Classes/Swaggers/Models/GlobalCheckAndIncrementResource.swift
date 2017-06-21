//
// GlobalCheckAndIncrementResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class GlobalCheckAndIncrementResource: JSONEncodable {
    public var checkValueResource: ExpressionResource?
    public var globalResource: ExpressionResource?
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["check_value_resource"] = self.checkValueResource?.encodeToJSON()
        nillableDictionary["global_resource"] = self.globalResource?.encodeToJSON()
        nillableDictionary["type"] = self.type
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
