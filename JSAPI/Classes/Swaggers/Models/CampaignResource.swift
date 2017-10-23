//
// CampaignResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CampaignResource: JSONEncodable {

    public enum RewardStatus: String { 
        case pending = "pending"
        case failed = "failed"
        case complete = "complete"
        case partial = "partial"
    }
    /** Whether the campaign is active or not.  Defaults to false */
    public var active: Bool?
    /** A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
    public var additionalProperties: [String:Property]?
    /** The date/time this resource was created in seconds since unix epoch */
    public var createdDate: Int64?
    /** The unique ID for that resource */
    public var id: Int64?
    /** The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service */
    public var leaderboardStrategy: String?
    /** The user friendly name of that resource. Defaults to blank string */
    public var longDescription: String?
    /** The user friendly name of that resource */
    public var name: String?
    /** The name of the next challenge coming up */
    public var nextChallenge: String?
    /** The date/time of the next challenge coming up */
    public var nextChallengeDate: Int64?
    /** The rewards to give at the end of the campaign. When creating/updating only id is used. Reward set must be pre-existing */
    public var rewardSet: RewardSetResource?
    /** Indicate if the rewards have been given out already */
    public var rewardStatus: RewardStatus?
    /** The user friendly name of that resource. Defaults to blank string */
    public var shortDescription: String?
    /** A campaign template this campaign is validated against (private). May be null and no validation of additional_properties will be done */
    public var template: String?
    /** The date/time this resource was last updated in seconds since unix epoch */
    public var updatedDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["active"] = self.active
        nillableDictionary["additional_properties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["leaderboard_strategy"] = self.leaderboardStrategy
        nillableDictionary["long_description"] = self.longDescription
        nillableDictionary["name"] = self.name
        nillableDictionary["next_challenge"] = self.nextChallenge
        nillableDictionary["next_challenge_date"] = self.nextChallengeDate?.encodeToJSON()
        nillableDictionary["reward_set"] = self.rewardSet?.encodeToJSON()
        nillableDictionary["reward_status"] = self.rewardStatus?.rawValue
        nillableDictionary["short_description"] = self.shortDescription
        nillableDictionary["template"] = self.template
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
