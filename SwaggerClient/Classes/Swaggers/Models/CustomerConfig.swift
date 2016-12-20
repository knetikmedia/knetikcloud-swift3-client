//
// CustomerConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CustomerConfig: JSONEncodable {
    public var aliases: String?
    public var database: DatabaseConfig?
    public var name: String?
    public var uploadBucket: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["aliases"] = self.aliases
        nillableDictionary["database"] = self.database?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["upload_bucket"] = self.uploadBucket
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}