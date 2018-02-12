//
// TemplateEmailResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class TemplateEmailResource: JSONEncodable {

    /** Address to attribute the outgoing message to. Optional if the config email.out_address is set. */
    public var from: String?
    /** A list of user ids to send the message to. */
    public var recipients: [Int32]?
    /** The subject for email */
    public var subject: String?
    /** The key for the template */
    public var templateKey: String?
    /** A list of variables to fill in the template */
    public var templateVars: [KeyValuePairstringstring]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["from"] = self.from
        nillableDictionary["recipients"] = self.recipients?.encodeToJSON()
        nillableDictionary["subject"] = self.subject
        nillableDictionary["template_key"] = self.templateKey
        nillableDictionary["template_vars"] = self.templateVars?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
