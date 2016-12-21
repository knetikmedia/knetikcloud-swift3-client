//
// MongoDatabaseConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class MongoDatabaseConfig: JSONEncodable {
    public var dbName: String?
    public var options: String?
    public var password: String?
    public var servers: String?
    public var username: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["db_name"] = self.dbName
        nillableDictionary["options"] = self.options
        nillableDictionary["password"] = self.password
        nillableDictionary["servers"] = self.servers
        nillableDictionary["username"] = self.username
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
