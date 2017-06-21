//
// UserBaseResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class UserBaseResource: JSONEncodable {
    /** The url of the user&#39;s avatar image */
    public var avatarUrl: String?
    /** The chosen display name of the user, defaults to username if not present */
    public var displayName: String?
    /** The user&#39;s email address (private). May be required and/or unique depending on system configuration (both on by default). Must match standard email requirements if provided (RFC 2822) */
    public var email: String?
    /** The user&#39;s full name (private) */
    public var fullname: String?
    /** The id of the user */
    public var id: Int32?
    /** The date the user&#39;s info was last updated as a unix timestamp */
    public var lastUpdated: Int64?
    /** The user&#39;s date of registration as a unix timestamp */
    public var memberSince: Int64?
    /** The login username for the user (private). May be set to match email if system does not require usernames separately. */
    public var username: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["avatar_url"] = self.avatarUrl
        nillableDictionary["display_name"] = self.displayName
        nillableDictionary["email"] = self.email
        nillableDictionary["fullname"] = self.fullname
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["last_updated"] = self.lastUpdated?.encodeToJSON()
        nillableDictionary["member_since"] = self.memberSince?.encodeToJSON()
        nillableDictionary["username"] = self.username
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
