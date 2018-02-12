//
// GroupResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class GroupResource: JSONEncodable {

    public enum Status: String { 
        case open = "open"
        case closed = "closed"
    }
    /** A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
    public var additionalProperties: [String:Property]?
    /** A description of the group */
    public var description: String?
    /** The number of users in the group */
    public var memberCount: Int32?
    /** A message of the day for members of the group */
    public var messageOfTheDay: String?
    /** The name of the group. Max 50 characters */
    public var name: String?
    /** The unique name of another group that this group is a subset of */
    public var parent: String?
    /** The status which describes whether other users can freely join the group or not */
    public var status: Status?
    /** The number of users in child groups */
    public var subMemberCount: Int32?
    /** Tags for search */
    public var tags: [String]?
    /** A group template this group is validated against. May be null and no validation of additional_properties will be done */
    public var template: String?
    /** Unique name used in url and references. Uppercase, lowercase, numbers and hyphens only. Max 50 characters. Cannot be altered once created. Default: random UUID */
    public var uniqueName: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["additional_properties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["member_count"] = self.memberCount?.encodeToJSON()
        nillableDictionary["message_of_the_day"] = self.messageOfTheDay
        nillableDictionary["name"] = self.name
        nillableDictionary["parent"] = self.parent
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["sub_member_count"] = self.subMemberCount?.encodeToJSON()
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["template"] = self.template
        nillableDictionary["unique_name"] = self.uniqueName

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
