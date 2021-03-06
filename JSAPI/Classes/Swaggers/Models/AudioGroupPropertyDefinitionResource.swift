//
// AudioGroupPropertyDefinitionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class AudioGroupPropertyDefinitionResource: FileGroupPropertyDefinitionResource {

    /** If provided, the maximum length of the audio */
    public var maxLength: Int32?
    /** If provided, the minimum length of the audio */
    public var minLength: Int32?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["max_length"] = self.maxLength?.encodeToJSON()
        nillableDictionary["min_length"] = self.minLength?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
