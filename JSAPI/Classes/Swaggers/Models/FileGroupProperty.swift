//
// FileGroupProperty.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class FileGroupProperty: Property {

    /** The list of files */
    public var files: [FileProperty]?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["files"] = self.files?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
