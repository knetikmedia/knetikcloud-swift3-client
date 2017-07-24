//
// EventContextResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class EventContextResource: JSONEncodable {

    public var eventName: String?
    public var parameters: [String:ExpressionResource]?
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["event_name"] = self.eventName
        nillableDictionary["parameters"] = self.parameters?.encodeToJSON()
        nillableDictionary["type"] = self.type

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}