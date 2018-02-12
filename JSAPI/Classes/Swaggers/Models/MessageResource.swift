//
// MessageResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class MessageResource: JSONEncodable {

    public enum RecipientType: String { 
        case user = "user"
        case topic = "topic"
    }
    /** The content of the message in various formats */
    public var content: MessageContentResource?
    /** The id of the recipient, dependent on the recipient_type. The user&#39;s id or the topic&#39;s id. Required if sending directly to messaging service */
    public var recipient: String?
    /** The type of recipient for the message. Either a user, or all users in a topic. Required if sending directly to messaging service */
    public var recipientType: RecipientType?
    /** The subject of the message. Required for email messages */
    public var subject: String?
    /** The type of message for websocket type hinting. will be added to the payload with the key _type */
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["content"] = self.content?.encodeToJSON()
        nillableDictionary["recipient"] = self.recipient
        nillableDictionary["recipient_type"] = self.recipientType?.rawValue
        nillableDictionary["subject"] = self.subject
        nillableDictionary["type"] = self.type

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
