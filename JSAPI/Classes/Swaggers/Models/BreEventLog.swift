//
// BreEventLog.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class BreEventLog: JSONEncodable {
    /** The customer of the BRE event log */
    public var customer: String?
    /** The event id of the BRE event log */
    public var eventId: String?
    /** The event name of the BRE event log */
    public var eventName: String?
    /** The event start date of the BRE event log */
    public var eventStartDate: Int64?
    /** The id of the BRE event log */
    public var id: String?
    /** The event paramters of the BRE event log */
    public var parameters: Any?
    /** The rules of the BRE event log */
    public var rules: [BreRuleLog]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["customer"] = self.customer
        nillableDictionary["event_id"] = self.eventId
        nillableDictionary["event_name"] = self.eventName
        nillableDictionary["event_start_date"] = self.eventStartDate?.encodeToJSON()
        nillableDictionary["id"] = self.id
        nillableDictionary["parameters"] = self.parameters
        nillableDictionary["rules"] = self.rules?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
