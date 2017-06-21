//
// CartShippingOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CartShippingOption: JSONEncodable {
    public var currencyCode: String?
    public var description: String?
    public var name: String?
    public var originalPrice: Double?
    public var price: Double?
    public var shippingItemId: Int32?
    public var sku: String?
    public var taxable: Bool?
    public var vendorId: Int32?
    public var vendorName: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["currency_code"] = self.currencyCode
        nillableDictionary["description"] = self.description
        nillableDictionary["name"] = self.name
        nillableDictionary["original_price"] = self.originalPrice
        nillableDictionary["price"] = self.price
        nillableDictionary["shipping_item_id"] = self.shippingItemId?.encodeToJSON()
        nillableDictionary["sku"] = self.sku
        nillableDictionary["taxable"] = self.taxable
        nillableDictionary["vendor_id"] = self.vendorId?.encodeToJSON()
        nillableDictionary["vendor_name"] = self.vendorName
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
