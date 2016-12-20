//
// Permission.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Permission: JSONEncodable {
    public var createdDate: Int64?
    public var description: String?
    public var id: Int32?
    public var locked: Bool?
    public var name: String?
    public var parent: String?
    public var permission: String?
    public var permissionRole: [Role]?
    public var updatedDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["locked"] = self.locked
        nillableDictionary["name"] = self.name
        nillableDictionary["parent"] = self.parent
        nillableDictionary["permission"] = self.permission
        nillableDictionary["permission_role"] = self.permissionRole?.encodeToJSON()
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
