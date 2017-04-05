//
// RewardSetResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class RewardSetResource: JSONEncodable {
    /** The date/time this resource was created in seconds since unix epoch */
    public var createdDate: Int64?
    /** The currency to give as rewards */
    public var currencyRewards: [RewardCurrencyResource]?
    /** The assigned unique ID for this reward set */
    public var id: Int32?
    /** The items to give as rewards */
    public var itemRewards: [RewardItemResource]?
    /** A longer describe the reward set, usually included in details */
    public var longDescription: String?
    /** The maximum placing that will receive a reward */
    public var maxPlacing: Int32?
    /** The user friendly name for this reward set */
    public var name: String?
    /** A short paragraph to describe the reward set, usually included in listings.  Max 255 characters */
    public var shortDescription: String?
    /** A provided unique key for this reward set */
    public var uniqueKey: String?
    /** The date/time this resource was last updated in seconds since unix epoch */
    public var updatedDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["currency_rewards"] = self.currencyRewards?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["item_rewards"] = self.itemRewards?.encodeToJSON()
        nillableDictionary["long_description"] = self.longDescription
        nillableDictionary["max_placing"] = self.maxPlacing?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["short_description"] = self.shortDescription
        nillableDictionary["unique_key"] = self.uniqueKey
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
