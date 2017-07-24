//
// CouponItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CouponItem: StoreItem {

    public enum CouponTypeHint: String { 
        case cart = "coupon_cart"
        case singleItem = "coupon_single_item"
        case voucher = "coupon_voucher"
        case vendor = "coupon_vendor"
        case tag = "coupon_tag"
    }
    public enum DiscountType: String { 
        case value = "value"
        case percentage = "percentage"
    }
    /** The type of coupon */
    public var couponTypeHint: CouponTypeHint?
    /** The amount this coupon is maxed out at.  Applies if coupon_type_hint is coupon_cart */
    public var discountMax: Double?
    /** The minimium amount needed in the cart for the coupon to apply.  Applies if coupon_type_hint is coupon_cart */
    public var discountMinCartValue: Double?
    /** The type of discount in terms of how it deducts price. Value based discount not available for coupon_cart type coupons */
    public var discountType: DiscountType?
    /** The amount the coupon will discount the item. If discount_type is &#39;value&#39; this will be a flat amount of currency. If discount type is &#39;percentage&#39; this will be a fraction (0.2 for 20% off) multiplied by the price of the matching item or items. */
    public var discountValue: Double?
    /** Whether this coupon is exclusive or not (true means cannot be in same cart as another).  Default &#x3D; false */
    public var exclusive: Bool?
    /** The id of the item the coupon is applied to.  Applies if coupon_type_hint is coupon_single_item or coupon_voucher */
    public var itemId: Int32?
    /** The maximum quantity of items the coupon can apply to, null if no limit and minimum 1 otherwise.  Applies if coupon_type_hint is coupon_single_item or coupon_voucher */
    public var maxQuantity: Int32?
    /** Whether this coupon is exclusive to itself or not (true means cannot add two of this same coupon to the same cart).  Default &#x3D; false */
    public var selfExclusive: Bool?
    /** A list of tags for a coupon.  The coupon can only apply to an item that has at least one of these tags.  Applies if coupon_type_hint is coupon_tag */
    public var validForTags: [String]?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["coupon_type_hint"] = self.couponTypeHint?.rawValue
        nillableDictionary["discount_max"] = self.discountMax
        nillableDictionary["discount_min_cart_value"] = self.discountMinCartValue
        nillableDictionary["discount_type"] = self.discountType?.rawValue
        nillableDictionary["discount_value"] = self.discountValue
        nillableDictionary["exclusive"] = self.exclusive
        nillableDictionary["item_id"] = self.itemId?.encodeToJSON()
        nillableDictionary["max_quantity"] = self.maxQuantity?.encodeToJSON()
        nillableDictionary["self_exclusive"] = self.selfExclusive
        nillableDictionary["valid_for_tags"] = self.validForTags?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}