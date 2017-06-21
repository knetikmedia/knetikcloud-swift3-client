//
// FinalizePayPalPaymentRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class FinalizePayPalPaymentRequest: JSONEncodable {
    /** The ID of the invoice that is being paid. Must match the invoice sent in originally */
    public var invoiceId: Int32?
    /** The ID of the payer that PayPal returned with the user at the return URL */
    public var payerId: String?
    /** The token that PayPal returned with the user in the return URL */
    public var token: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["invoice_id"] = self.invoiceId?.encodeToJSON()
        nillableDictionary["payer_id"] = self.payerId
        nillableDictionary["token"] = self.token
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
