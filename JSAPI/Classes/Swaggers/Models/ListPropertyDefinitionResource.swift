//
// ListPropertyDefinitionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ListPropertyDefinitionResource: PropertyDefinitionResource {

    /** If provided, the maximum number of files in the group */
    public var maxCount: Int32?
    /** If provided, the minimum number of files in the group */
    public var minCount: Int32?
    /** If provided, a property definition for validating values within list */
    public var valueDefinition: PropertyDefinitionResource?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["max_count"] = self.maxCount?.encodeToJSON()
        nillableDictionary["min_count"] = self.minCount?.encodeToJSON()
        nillableDictionary["value_definition"] = self.valueDefinition?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
