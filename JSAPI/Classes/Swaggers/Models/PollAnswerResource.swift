//
// PollAnswerResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PollAnswerResource: JSONEncodable {
    /** The number of users that selected this answer */
    public var count: Int32?
    /** The key to the answer (for code reference) */
    public var key: String?
    /** The text of the answer (for user display) */
    public var text: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["count"] = self.count?.encodeToJSON()
        nillableDictionary["key"] = self.key
        nillableDictionary["text"] = self.text
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
