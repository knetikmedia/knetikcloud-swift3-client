//
// SubscriptionStatusWrapper.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class SubscriptionStatusWrapper: JSONEncodable {

    public enum Value: String { 
        case current = "current"
        case canceled = "canceled"
        case stopped = "stopped"
        case paymentFailed = "payment_failed"
        case suspended = "suspended"
    }
    public var value: Value?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["value"] = self.value?.rawValue

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
