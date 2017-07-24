//
// CacheClearEvent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CacheClearEvent: BroadcastableEvent {

    public var customerSetup: Bool?
    public var customerTeardown: Bool?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["customer_setup"] = self.customerSetup
        nillableDictionary["customer_teardown"] = self.customerTeardown

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}