//
// TemplatedEmail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class TemplatedEmail: JSONEncodable {

    /** The external template ID used by the email provider */
    public var externalTemplateId: String?
    /** The map of data used by the template */
    public var templateData: Any?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["external_template_id"] = self.externalTemplateId
        nillableDictionary["template_data"] = self.templateData

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
