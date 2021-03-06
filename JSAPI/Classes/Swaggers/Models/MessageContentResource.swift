//
// MessageContentResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class MessageContentResource: JSONEncodable {

    /** The content of the email */
    public var email: String?
    /** The content of the mobile app push notification */
    public var push: String?
    /** The content of the sms */
    public var sms: String?
    /** The content of the templated email */
    public var templatedEmail: TemplatedEmail?
    /** The content of the websocket message */
    public var websocket: Any?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["email"] = self.email
        nillableDictionary["push"] = self.push
        nillableDictionary["sms"] = self.sms
        nillableDictionary["templated_email"] = self.templatedEmail?.encodeToJSON()
        nillableDictionary["websocket"] = self.websocket

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
