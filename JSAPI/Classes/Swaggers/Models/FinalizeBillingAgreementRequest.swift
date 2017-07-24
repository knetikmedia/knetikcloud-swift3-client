//
// FinalizeBillingAgreementRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class FinalizeBillingAgreementRequest: JSONEncodable {

    /** The ID of the invoice being paid along with the creation of this agreement */
    public var invoiceId: Int32?
    /** Whether the new payment method created should be the user&#39;s default */
    public var newDefault: Bool?
    /** The payer ID from PayPal (passed as a parameter in the return URL). Only required if an invoice ID was included */
    public var payerId: String?
    /** The token from PayPal (passed as a parameter in the return URL) */
    public var token: String?
    /** The ID of the user. Defaults to the logged in user */
    public var userId: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["invoice_id"] = self.invoiceId?.encodeToJSON()
        nillableDictionary["new_default"] = self.newDefault
        nillableDictionary["payer_id"] = self.payerId
        nillableDictionary["token"] = self.token
        nillableDictionary["user_id"] = self.userId?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
