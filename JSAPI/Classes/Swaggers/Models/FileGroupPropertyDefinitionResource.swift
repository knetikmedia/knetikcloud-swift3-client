//
// FileGroupPropertyDefinitionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class FileGroupPropertyDefinitionResource: PropertyDefinitionResource {

    /** If provided, a file type that the property must match */
    public var fileType: String?
    /** If provided, the maximum number of files in the group */
    public var maxCount: Int32?
    /** If provided, the maximum allowed size per file in bytes */
    public var maxFileSize: Int64?
    /** If provided, the minimum number of files in the group */
    public var minCount: Int32?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["file_type"] = self.fileType
        nillableDictionary["max_count"] = self.maxCount?.encodeToJSON()
        nillableDictionary["max_file_size"] = self.maxFileSize?.encodeToJSON()
        nillableDictionary["min_count"] = self.minCount?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}