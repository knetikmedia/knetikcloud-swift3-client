//
// ReactivateSubscriptionRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ReactivateSubscriptionRequest: JSONEncodable {
    /** The inventory to reactivate. Only required if using the deprecated subscriptions service */
    public var inventoryId: Int32?
    /** Whether to add the additional reactivation fee in addition to the recurring fee */
    public var reactivationFee: Bool?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["inventory_id"] = self.inventoryId?.encodeToJSON()
        nillableDictionary["reactivation_fee"] = self.reactivationFee
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
