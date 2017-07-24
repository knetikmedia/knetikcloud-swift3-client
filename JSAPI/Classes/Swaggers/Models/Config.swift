//
// Config.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Config: JSONEncodable {

    /** The description of the config.  Max 140 characters */
    public var description: String?
    /** The name of the config */
    public var name: String?
    /** Whether the config is public for viewing. True means that it can be publicly viewed by all. Default: false */
    public var publicRead: Bool?
    /** The value of the config */
    public var value: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["description"] = self.description
        nillableDictionary["name"] = self.name
        nillableDictionary["public_read"] = self.publicRead
        nillableDictionary["value"] = self.value

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}