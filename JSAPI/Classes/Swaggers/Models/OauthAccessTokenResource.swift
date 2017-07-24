//
// OauthAccessTokenResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class OauthAccessTokenResource: JSONEncodable {

    /** The key of the client assosciated with the token */
    public var clientId: String?
    /** The token.  Not shown in list view */
    public var token: String?
    /** The username of the user associated with the token */
    public var username: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["client_id"] = self.clientId
        nillableDictionary["token"] = self.token
        nillableDictionary["username"] = self.username

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
