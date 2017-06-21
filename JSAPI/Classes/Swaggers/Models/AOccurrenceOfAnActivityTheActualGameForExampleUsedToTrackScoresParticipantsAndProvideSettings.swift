//
// AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings: JSONEncodable {
    public enum RewardStatus: String { 
        case pending = "pending"
        case failed = "failed"
        case complete = "complete"
        case partial = "partial"
    }
    public enum Status: String { 
        case setup = "SETUP"
        case open = "OPEN"
        case playing = "PLAYING"
        case finished = "FINISHED"
        case abandoned = "ABANDONED"
    }
    /** The id of the activity */
    public var activityId: Int64?
    /** The id of the challenge activity (as part of the event, required if eventId set) */
    public var challengeActivityId: Int64?
    /** The date this occurrence was created, unix timestamp in seconds */
    public var createdDate: Int64?
    /** The entitlement item required to enter the occurrence. Required if not part of an event. Must come from the set of entitlement items listed in the activity */
    public var entitlement: ActivityEntitlementResource?
    /** The id of the event */
    public var eventId: Int64?
    /** The id of the activity occurrence */
    public var id: Int64?
    /** Indicate if the rewards have been given out already */
    public var rewardStatus: RewardStatus?
    /** The values selected from the available settings defined for the activity. Ex: difficulty: hard. Can be left out if the activity is played during an event and the settings are already set at the event level. Ex: every monday, difficulty: hard, number of questions: 10, category: sport. Otherwise, the set must exactly match those of the activity. */
    public var settings: [SelectedSettingResource]?
    /** Whether this occurrence will be ran as a simulation. Simulations will not be rewarded. Useful for bot play or trials */
    public var simulated: Bool?
    /** The date this occurrence was started, unix timestamp in seconds. null if not yet started */
    public var startDate: Int64?
    /** The current status of the occurrence (default: OPEN) */
    public var status: Status?
    /** The date this occurrence was last updated, unix timestamp in seconds */
    public var updatedDate: Int64?
    /** The list of users participating in this occurrence. Can only be set directly with ACTIVITIES_ADMIN permission */
    public var users: [ActivityUserResource]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["activity_id"] = self.activityId?.encodeToJSON()
        nillableDictionary["challenge_activity_id"] = self.challengeActivityId?.encodeToJSON()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["entitlement"] = self.entitlement?.encodeToJSON()
        nillableDictionary["event_id"] = self.eventId?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["reward_status"] = self.rewardStatus?.rawValue
        nillableDictionary["settings"] = self.settings?.encodeToJSON()
        nillableDictionary["simulated"] = self.simulated
        nillableDictionary["start_date"] = self.startDate?.encodeToJSON()
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        nillableDictionary["users"] = self.users?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
