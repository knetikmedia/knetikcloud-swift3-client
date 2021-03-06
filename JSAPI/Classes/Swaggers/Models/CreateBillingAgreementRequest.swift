//
// CreateBillingAgreementRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CreateBillingAgreementRequest: JSONEncodable {

    /** The endpoint URL to which PayPal should forward the user if they cancel (do not accept) the agreement */
    public var cancelUrl: String?
    /** The endpoint URL to which PayPal should forward the user after they accept the agreement. This endpoint will receive information needed for the next step */
    public var returnUrl: String?
    /** The ID of the user. Defaults to the logged in user */
    public var userId: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["cancel_url"] = self.cancelUrl
        nillableDictionary["return_url"] = self.returnUrl
        nillableDictionary["user_id"] = self.userId?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
