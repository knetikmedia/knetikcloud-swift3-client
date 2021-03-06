//
// VideoGroupPropertyDefinitionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class VideoGroupPropertyDefinitionResource: FileGroupPropertyDefinitionResource {

    /** If provided, the maximum height of each video */
    public var maxHeight: Int32?
    /** If provided, the maximum length of each video */
    public var maxLength: Int32?
    /** If provided, the maximum width of each video */
    public var maxWidth: Int32?
    /** If provided, the minimum height of each video */
    public var minHeight: Int32?
    /** If provided, the minimum length of each video */
    public var minLength: Int32?
    /** If provided, the minimum width of each video */
    public var minWidth: Int32?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["max_height"] = self.maxHeight?.encodeToJSON()
        nillableDictionary["max_length"] = self.maxLength?.encodeToJSON()
        nillableDictionary["max_width"] = self.maxWidth?.encodeToJSON()
        nillableDictionary["min_height"] = self.minHeight?.encodeToJSON()
        nillableDictionary["min_length"] = self.minLength?.encodeToJSON()
        nillableDictionary["min_width"] = self.minWidth?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
