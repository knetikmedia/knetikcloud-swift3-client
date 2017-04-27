//
// PropertyFieldResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PropertyFieldResource: JSONEncodable {
    public enum InnerType: String { 
        case integer = "integer"
        case number = "number"
        case bool = "bool"
        case string = "string"
        case enumeration = "enumeration"
        case list = "list"
        case object = "object"
    }
    public enum ModelType: String { 
        case integer = "integer"
        case number = "number"
        case bool = "bool"
        case string = "string"
        case enumeration = "enumeration"
        case list = "list"
        case object = "object"
    }
    /** A description of the field */
    public var description: String?
    /** The type of values within a &#39;list&#39; type field */
    public var innerType: InnerType?
    /** A description of fields within objects within a &#39;list&#39; type field, when inner_type is &#39;object&#39; */
    public var innerTypeFields: [PropertyFieldResource]?
    /** The name of the field */
    public var name: String?
    /** Whether the field is required */
    public var _required: Bool?
    /** The type of the field */
    public var type: ModelType?
    /** A list of valid values for &#39;enum&#39; type fields */
    public var validValues: [String]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["description"] = self.description
        nillableDictionary["inner_type"] = self.innerType?.rawValue
        nillableDictionary["inner_type_fields"] = self.innerTypeFields?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["required"] = self._required
        nillableDictionary["type"] = self.type?.rawValue
        nillableDictionary["valid_values"] = self.validValues?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
