//
// ChallengeActivityResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ChallengeActivityResource: JSONEncodable {
    /** The id of the activity */
    public var activityId: Int64?
    /** The id of the challenge */
    public var challengeId: Int64?
    /** The entitlement item needed to participate in the activity as part of this event. Null indicates free entry. When creating/updating only id is used. Item must be pre-existing */
    public var entitlement: ActivityEntitlementResource?
    /** The unique ID for this resource */
    public var id: Int64?
    /** The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing */
    public var rewardSet: RewardSetResource?
    /** The list of settings and the select options */
    public var settings: [SelectedSettingResource]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["activity_id"] = self.activityId?.encodeToJSON()
        nillableDictionary["challenge_id"] = self.challengeId?.encodeToJSON()
        nillableDictionary["entitlement"] = self.entitlement?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["reward_set"] = self.rewardSet?.encodeToJSON()
        nillableDictionary["settings"] = self.settings?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}