//
// CartLineItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CartLineItem: JSONEncodable {
    public var currencyCode: String?
    public var description: String?
    public var discount: Discount?
    public var lineTotal: Double?
    public var name: String?
    public var originalLineTotal: Double?
    public var originalUnitPrice: Double?
    public var qty: Int32?
    public var saleName: String?
    public var sku: String?
    public var skuDescription: String?
    public var storeItemId: Int32?
    public var tags: [String]?
    public var thumbUrl: String?
    public var unitPrice: Double?
    public var vendorId: Int32?
    public var vendorName: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["currency_code"] = self.currencyCode
        nillableDictionary["description"] = self.description
        nillableDictionary["discount"] = self.discount?.encodeToJSON()
        nillableDictionary["line_total"] = self.lineTotal
        nillableDictionary["name"] = self.name
        nillableDictionary["original_line_total"] = self.originalLineTotal
        nillableDictionary["original_unit_price"] = self.originalUnitPrice
        nillableDictionary["qty"] = self.qty?.encodeToJSON()
        nillableDictionary["sale_name"] = self.saleName
        nillableDictionary["sku"] = self.sku
        nillableDictionary["sku_description"] = self.skuDescription
        nillableDictionary["store_item_id"] = self.storeItemId?.encodeToJSON()
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["thumb_url"] = self.thumbUrl
        nillableDictionary["unit_price"] = self.unitPrice
        nillableDictionary["vendor_id"] = self.vendorId?.encodeToJSON()
        nillableDictionary["vendor_name"] = self.vendorName
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
