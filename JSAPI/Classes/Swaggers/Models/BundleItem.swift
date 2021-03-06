//
// BundleItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class BundleItem: StoreItem {

    /** The skus of items to be included in this bundle, and how they influence the bundle total price.  Must have at least one SKU */
    public var bundledSkus: [BundledSku]?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["bundled_skus"] = self.bundledSkus?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
