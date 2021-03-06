//
// MapPropertyDefinitionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class MapPropertyDefinitionResource: PropertyDefinitionResource {

    /** Whether to allow additional properties beyond those specified or not */
    public var allowAdditional: Bool?
    /** If provided, a list of property definitions for each map entry */
    public var properties: [PropertyDefinitionResource]?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["allow_additional"] = self.allowAdditional
        nillableDictionary["properties"] = self.properties?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
