//
// EventContextResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Expressions are instructions for the rule engine to resolve certain values. For example instead of &#x60;user 1&#x60; it&#39;d state &#x60;user provided by the event&#x60;. Full list and definitions available at GET /bre/expressions. */
open class EventContextResource: JSONEncodable {

    public var definition: String?
    public var eventName: String?
    public var parameters: [String:ExpressionResource]?
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["definition"] = self.definition
        nillableDictionary["event_name"] = self.eventName
        nillableDictionary["parameters"] = self.parameters?.encodeToJSON()
        nillableDictionary["type"] = self.type

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
