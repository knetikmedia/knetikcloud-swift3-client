//
// GlobalCheckAndIncrementResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Expressions are instructions for the rule engine to resolve certain values. For example instead of &#x60;user 1&#x60; it&#39;d state &#x60;user provided by the event&#x60;. Full list and definitions available at GET /bre/expressions. */
open class GlobalCheckAndIncrementResource: JSONEncodable {

    public var checkValueResource: ExpressionResource?
    public var definition: String?
    public var globalResource: ExpressionResource?
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["check_value_resource"] = self.checkValueResource?.encodeToJSON()
        nillableDictionary["definition"] = self.definition
        nillableDictionary["global_resource"] = self.globalResource?.encodeToJSON()
        nillableDictionary["type"] = self.type

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
