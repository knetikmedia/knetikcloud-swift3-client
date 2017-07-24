//
// GooglePaymentRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class GooglePaymentRequest: JSONEncodable {

    /** The json payload exactly as sent from Google */
    public var jsonPayload: String?
    /** The signature from Google to verify the payload */
    public var signature: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["json_payload"] = self.jsonPayload
        nillableDictionary["signature"] = self.signature

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}