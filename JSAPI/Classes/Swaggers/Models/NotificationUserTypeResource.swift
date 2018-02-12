//
// NotificationUserTypeResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class NotificationUserTypeResource: JSONEncodable {

    /** Whether the user has muted direct notification of this type. Notifications can still be retrieved via the api */
    public var silenced: Bool?
    /** The notification type id */
    public var type: String?
    /** The user&#39;s id */
    public var userId: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["silenced"] = self.silenced
        nillableDictionary["type"] = self.type
        nillableDictionary["user_id"] = self.userId?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}