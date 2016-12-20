//
// Currency.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Currency: JSONEncodable {
    public enum ModelType: String { 
        case real = "real"
        case virtual = "virtual"
    }
    public var active: Bool?
    public var code: String?
    public var dateCreated: Int64?
    public var dateUpdated: Int64?
    public var factor: Double?
    public var icon: String?
    public var id: Int32?
    public var name: String?
    public var type: ModelType?
    public var virtual: Bool?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["active"] = self.active
        nillableDictionary["code"] = self.code
        nillableDictionary["date_created"] = self.dateCreated?.encodeToJSON()
        nillableDictionary["date_updated"] = self.dateUpdated?.encodeToJSON()
        nillableDictionary["factor"] = self.factor
        nillableDictionary["icon"] = self.icon
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["type"] = self.type?.rawValue
        nillableDictionary["virtual"] = self.virtual
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}