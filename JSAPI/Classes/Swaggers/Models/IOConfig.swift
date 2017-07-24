//
// IOConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class IOConfig: JSONEncodable {

    public var customer: String?
    public var enabled: Bool?
    public var environment: String?
    public var product: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["customer"] = self.customer
        nillableDictionary["enabled"] = self.enabled
        nillableDictionary["environment"] = self.environment
        nillableDictionary["product"] = self.product

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}