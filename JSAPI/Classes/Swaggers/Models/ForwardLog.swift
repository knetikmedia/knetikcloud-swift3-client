//
// ForwardLog.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ForwardLog: JSONEncodable {

    /** The end date of the forward log entry */
    public var endDate: Int64?
    public var errorMsg: String?
    public var eventId: String?
    public var headers: String?
    /** The http status code the forward log entry */
    public var httpStatusCode: Int32?
    /** The id of the forward log entry */
    public var id: String?
    public var method: String?
    /** The payload of the forward log entry */
    public var payload: Any?
    /** The response string of the forward log entry */
    public var response: String?
    /** The retry count of the forward log entry */
    public var retryCount: Int32?
    public var retryable: Bool?
    public var ruleId: String?
    /** The start date of the forward log entry */
    public var startDate: Int64?
    public var success: Bool?
    /** The endpoint url of the forward log entry */
    public var url: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["end_date"] = self.endDate?.encodeToJSON()
        nillableDictionary["error_msg"] = self.errorMsg
        nillableDictionary["event_id"] = self.eventId
        nillableDictionary["headers"] = self.headers
        nillableDictionary["http_status_code"] = self.httpStatusCode?.encodeToJSON()
        nillableDictionary["id"] = self.id
        nillableDictionary["method"] = self.method
        nillableDictionary["payload"] = self.payload
        nillableDictionary["response"] = self.response
        nillableDictionary["retry_count"] = self.retryCount?.encodeToJSON()
        nillableDictionary["retryable"] = self.retryable
        nillableDictionary["rule_id"] = self.ruleId
        nillableDictionary["start_date"] = self.startDate?.encodeToJSON()
        nillableDictionary["success"] = self.success
        nillableDictionary["url"] = self.url

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
