//
// GuestPlayable.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class GuestPlayable: Behavior {

    /** Whether guests are allowed to use items */
    public var allowed: Bool?
    /** Whether guests are allowed on the leaderboard */
    public var leaderboard: Bool?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["allowed"] = self.allowed
        nillableDictionary["leaderboard"] = self.leaderboard

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
