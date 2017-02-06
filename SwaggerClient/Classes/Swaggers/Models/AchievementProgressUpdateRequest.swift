//
// AchievementProgressUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class AchievementProgressUpdateRequest: JSONEncodable {
    /** Whether to add one to the current progress instead of setting it to progress_value. Default: false */
    public var incrementValue: Bool?
    /** The amount of progress towards earning the achievement. The max/target depends on the achievement. Required if increment_value is false/missing. */
    public var progressValue: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["increment_value"] = self.incrementValue
        nillableDictionary["progress_value"] = self.progressValue?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
