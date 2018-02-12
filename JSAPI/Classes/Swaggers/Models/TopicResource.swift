//
// TopicResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class TopicResource: JSONEncodable {

    /** The created date of the topic */
    public var createdDate: Int64?
    /** The display name of the topic */
    public var displayName: String?
    /** The unique ID for this topic */
    public var id: String?
    /** Whether this topic is locked or not. */
    public var locked: Bool?
    /** Random tags to facilitate search */
    public var tags: [String]?
    /** The last time the topic was updated */
    public var updatedDate: Int64?
    /** The subscribed user count of the topic */
    public var userCount: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["display_name"] = self.displayName
        nillableDictionary["id"] = self.id
        nillableDictionary["locked"] = self.locked
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        nillableDictionary["user_count"] = self.userCount?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}