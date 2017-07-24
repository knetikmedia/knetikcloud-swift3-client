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
    /** The http status code the forward log entry */
    public var httpStatusCode: Int32?
    /** The id of the forward log entry */
    public var id: String?
    /** The payload of the forward log entry */
    public var payload: Any?
    /** The response string of the forward log entry */
    public var response: String?
    /** The retry count of the forward log entry */
    public var retryCount: Int32?
    /** The start date of the forward log entry */
    public var startDate: Int64?
    /** The endpoint url of the forward log entry */
    public var url: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["end_date"] = self.endDate?.encodeToJSON()
        nillableDictionary["error_msg"] = self.errorMsg
        nillableDictionary["http_status_code"] = self.httpStatusCode?.encodeToJSON()
        nillableDictionary["id"] = self.id
        nillableDictionary["payload"] = self.payload
        nillableDictionary["response"] = self.response
        nillableDictionary["retry_count"] = self.retryCount?.encodeToJSON()
        nillableDictionary["start_date"] = self.startDate?.encodeToJSON()
        nillableDictionary["url"] = self.url

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
