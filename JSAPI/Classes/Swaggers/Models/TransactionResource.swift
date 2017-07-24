//
// TransactionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class TransactionResource: JSONEncodable {

    public enum Source: String { 
        case digital = "digital"
        case physical = "physical"
    }
    /** The unix timestamp in seconds of the transaction */
    public var createDate: Int64?
    /** The code of the currency for the transaction */
    public var currencyCode: String?
    /** The specific details of the transaction, such as a message from the admin that created it */
    public var details: String?
    /** The id of the transaction */
    public var id: Int32?
    /** The id of the invoice that spawned the transaction, if any */
    public var invoiceId: Int32?
    /** Whether the transaction has been refunded */
    public var isRefunded: Bool?
    /** The response */
    public var response: String?
    /** The root source of the transaction */
    public var source: Source?
    /** If the transaction was successful */
    public var successful: Bool?
    /** The payment gateway (external) transaction ID */
    public var transactionId: String?
    /** The general type of the transaction */
    public var type: String?
    /** The table name of the subclass */
    public var typeHint: String?
    /** The amount of the transaction, positive if a gain, negative if an expenditure */
    public var value: Double?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["create_date"] = self.createDate?.encodeToJSON()
        nillableDictionary["currency_code"] = self.currencyCode
        nillableDictionary["details"] = self.details
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["invoice_id"] = self.invoiceId?.encodeToJSON()
        nillableDictionary["is_refunded"] = self.isRefunded
        nillableDictionary["response"] = self.response
        nillableDictionary["source"] = self.source?.rawValue
        nillableDictionary["successful"] = self.successful
        nillableDictionary["transaction_id"] = self.transactionId
        nillableDictionary["type"] = self.type
        nillableDictionary["type_hint"] = self.typeHint
        nillableDictionary["value"] = self.value

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
