//
// ChallengeResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ChallengeResource: JSONEncodable {
    /** The number of activities allowed to this challenge */
    public var activities: Int32?
    /** A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
    public var additionalProperties: [String:Property]?
    /** The id of the campaign this challenge is a part of. The challenge must be tied to an active campaign before it will spawn events */
    public var campaignId: Int64?
    /** The ID of the original challenge it was copied from */
    public var copyOf: Int64?
    /** The date/time this resource was created in seconds since unix epoch */
    public var createdDate: Int64?
    /** The end date of this challenge in seconds since epoch. required if part of a campaign */
    public var endDate: Int64?
    /** The unique ID for that resource */
    public var id: Int64?
    /** The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service. */
    public var leaderboardStrategy: String?
    /** The user friendly name of that resource. Defaults to blank string */
    public var longDescription: String?
    /** The user friendly name of that resource */
    public var name: String?
    /** The next date this challenge will be occur in seconds since epoch */
    public var nextEventDate: Int64?
    /** The number of minutes minimum to wait at the end of this challenge before running rewards, to allow activities to complete */
    public var rewardLagMinutes: Int32?
    /** The rewards to give at the end of the challenge. When creating/updating only id is used. Reward set must be pre-existing */
    public var rewardSet: RewardSetResource?
    /** The repeat schedule for the challenge */
    public var schedule: Schedule?
    /** The user friendly name of that resource. Defaults to blank string */
    public var shortDescription: String?
    /** The start date of this challenge in seconds since epoch. required if part of a campaign */
    public var startDate: Int64?
    /** A challenge template this challenge is validated against (private). May be null and no validation of additional_properties will be done */
    public var template: String?
    /** The date/time this resource was last updated in seconds since unix epoch */
    public var updatedDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["activities"] = self.activities?.encodeToJSON()
        nillableDictionary["additional_properties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["campaign_id"] = self.campaignId?.encodeToJSON()
        nillableDictionary["copy_of"] = self.copyOf?.encodeToJSON()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["end_date"] = self.endDate?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["leaderboard_strategy"] = self.leaderboardStrategy
        nillableDictionary["long_description"] = self.longDescription
        nillableDictionary["name"] = self.name
        nillableDictionary["next_event_date"] = self.nextEventDate?.encodeToJSON()
        nillableDictionary["reward_lag_minutes"] = self.rewardLagMinutes?.encodeToJSON()
        nillableDictionary["reward_set"] = self.rewardSet?.encodeToJSON()
        nillableDictionary["schedule"] = self.schedule?.encodeToJSON()
        nillableDictionary["short_description"] = self.shortDescription
        nillableDictionary["start_date"] = self.startDate?.encodeToJSON()
        nillableDictionary["template"] = self.template
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
