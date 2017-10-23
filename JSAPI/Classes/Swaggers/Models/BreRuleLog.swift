//
// BreRuleLog.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class BreRuleLog: JSONEncodable {

    /** Whether the rule ran */
    public var ran: Bool?
    /** The reason for the rule */
    public var reason: String?
    /** The end date of the rule in seconds */
    public var ruleEndDate: Int64?
    /** The id of the rule */
    public var ruleId: String?
    /** The name of the rule */
    public var ruleName: String?
    /** The start date of the rule in seconds */
    public var ruleStartDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["ran"] = self.ran
        nillableDictionary["reason"] = self.reason
        nillableDictionary["rule_end_date"] = self.ruleEndDate?.encodeToJSON()
        nillableDictionary["rule_id"] = self.ruleId
        nillableDictionary["rule_name"] = self.ruleName
        nillableDictionary["rule_start_date"] = self.ruleStartDate?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
