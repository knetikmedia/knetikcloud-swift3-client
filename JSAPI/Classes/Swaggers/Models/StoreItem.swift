//
// StoreItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class StoreItem: Item {
    public enum GeoPolicyType: String { 
        case whitelist = "whitelist"
        case blacklist = "blacklist"
    }
    /** Whether or not the item is currently displayable.  Default &#x3D; true */
    public var displayable: Bool?
    /** A list of country ID to include in the blacklist/whitelist geo policy */
    public var geoCountryList: [String]?
    /** Whether to use the geo_country_list as a black list or white list for item geographical availability */
    public var geoPolicyType: GeoPolicyType?
    /** Provides the abstract shipping needs if this item is physical and can be shipped.  A value of zero means no shipping needed.  Default &#x3D; 0 */
    public var shippingTier: Int32?
    /** The skus for the item. Each defines a unique configuration for the item to be purchased (Large-Blue, Small-Green, etc). These are what is ultimately selected in the store and added to the cart */
    public var skus: [Sku]?
    /** The date the item will leave the store, unix timestamp in seconds.  If set to null, item will never leave the store */
    public var storeEnd: Int64?
    /** The date the item will appear in the store, unix timestamp in seconds.  If set to null, item will appear in store immediately */
    public var storeStart: Int64?
    /** The vendor who provides the item */
    public var vendorId: Int32?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["displayable"] = self.displayable
        nillableDictionary["geo_country_list"] = self.geoCountryList?.encodeToJSON()
        nillableDictionary["geo_policy_type"] = self.geoPolicyType?.rawValue
        nillableDictionary["shipping_tier"] = self.shippingTier?.encodeToJSON()
        nillableDictionary["skus"] = self.skus?.encodeToJSON()
        nillableDictionary["store_end"] = self.storeEnd?.encodeToJSON()
        nillableDictionary["store_start"] = self.storeStart?.encodeToJSON()
        nillableDictionary["vendor_id"] = self.vendorId?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
