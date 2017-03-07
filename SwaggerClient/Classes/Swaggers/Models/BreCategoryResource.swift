//
// BreCategoryResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class BreCategoryResource: JSONEncodable {
    /** A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
    public var additionalProperties: [String:Property]?
    /** The name of the category. Serves as the unique id */
    public var name: String?
    /** A template this BRE category is validated against (private). May be null and no validation of additional_properties will be done */
    public var template: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["additional_properties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["template"] = self.template
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
