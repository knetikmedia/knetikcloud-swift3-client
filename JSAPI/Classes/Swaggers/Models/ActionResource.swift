//
// ActionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ActionResource: JSONEncodable {
    public enum Category: String { 
        case achievement = "achievement"
        case behavior = "behavior"
        case comment = "comment"
        case disposition = "disposition"
        case device = "device"
        case entitlement = "entitlement"
        case friends = "friends"
        case fulfillment = "fulfillment"
        case gamification = "gamification"
        case inventory = "inventory"
        case invoice = "invoice"
        case media = "media"
        case scheduler = "scheduler"
        case store = "store"
        case subscription = "subscription"
        case user = "user"
        case wallet = "wallet"
        case custom = "custom"
        case challenge = "challenge"
        case activity = "activity"
        case campaign = "campaign"
        case event = "event"
    }
    /** The category the action is in. All customer specific actions are in the &#39;custom&#39; category */
    public var category: Category?
    /** The description of the action */
    public var description: String?
    /** The name of the action. Used as the unique id for reference */
    public var name: String?
    /** A list of tags for searching */
    public var tags: [String]?
    /** The variables required for the action */
    public var variables: [ActionVariableResource]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["category"] = self.category?.rawValue
        nillableDictionary["description"] = self.description
        nillableDictionary["name"] = self.name
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["variables"] = self.variables?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
