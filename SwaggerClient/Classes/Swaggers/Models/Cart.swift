//
// Cart.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Cart: JSONEncodable {
    public enum Status: String { 
        case active = "active"
        case processing = "processing"
        case closed = "closed"
        case onhold = "onhold"
    }
    public var countryTax: Double?
    public var coupons: [CouponDefinition]?
    public var created: Int64?
    public var currencyCode: String?
    public var discountTotal: Double?
    public var errorCode: Int32?
    public var errorMessage: String?
    public var grandTotal: Double?
    public var id: String?
    public var invoiceId: Double?
    public var items: [CartLineItem]?
    public var owner: Int32?
    public var selectedShippingOptions: [CartShippingOption]?
    public var shippable: Bool?
    public var shippingAddress: CartShippingAddressRequest?
    public var shippingCost: Double?
    public var shippingOptions: [String:Set]?
    public var stateTax: Double?
    public var status: Status?
    public var subtotal: Double?
    public var updated: Int64?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["country_tax"] = self.countryTax
        nillableDictionary["coupons"] = self.coupons?.encodeToJSON()
        nillableDictionary["created"] = self.created?.encodeToJSON()
        nillableDictionary["currency_code"] = self.currencyCode
        nillableDictionary["discount_total"] = self.discountTotal
        nillableDictionary["error_code"] = self.errorCode?.encodeToJSON()
        nillableDictionary["error_message"] = self.errorMessage
        nillableDictionary["grand_total"] = self.grandTotal
        nillableDictionary["id"] = self.id
        nillableDictionary["invoice_id"] = self.invoiceId
        nillableDictionary["items"] = self.items?.encodeToJSON()
        nillableDictionary["owner"] = self.owner?.encodeToJSON()
        nillableDictionary["selected_shipping_options"] = self.selectedShippingOptions?.encodeToJSON()
        nillableDictionary["shippable"] = self.shippable
        nillableDictionary["shipping_address"] = self.shippingAddress?.encodeToJSON()
        nillableDictionary["shipping_cost"] = self.shippingCost
        nillableDictionary["shipping_options"] = self.shippingOptions?.encodeToJSON()
        nillableDictionary["state_tax"] = self.stateTax
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["subtotal"] = self.subtotal
        nillableDictionary["updated"] = self.updated?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
