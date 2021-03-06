//
// CartItemRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CartItemRequest: JSONEncodable {

    /** The affiliate key of the item */
    public var affiliateKey: String?
    /** The catalog SKU of the item */
    public var catalogSku: String?
    /** Allows to override the price of an item, if the behavior configuration permits it */
    public var priceOverride: Double?
    /** The quantity of the item */
    public var quantity: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["affiliate_key"] = self.affiliateKey
        nillableDictionary["catalog_sku"] = self.catalogSku
        nillableDictionary["price_override"] = self.priceOverride
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
