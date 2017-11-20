//
// StoreShoppingCartsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class StoreShoppingCartsAPI: APIBase {
    /**
     Adds a custom discount to the cart
     - parameter id: (path) The id of the cart 
     - parameter customDiscount: (body) The details of the discount to add (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addCustomDiscount(id: String, customDiscount: CouponDefinition? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        addCustomDiscountWithRequestBuilder(id: id, customDiscount: customDiscount).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Adds a custom discount to the cart
     - POST /carts/{id}/custom-discounts
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the cart 
     - parameter customDiscount: (body) The details of the discount to add (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addCustomDiscountWithRequestBuilder(id: String, customDiscount: CouponDefinition? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/custom-discounts"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = customDiscount?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Adds a discount coupon to the cart
     - parameter id: (path) The id of the cart 
     - parameter skuRequest: (body) The request of the sku (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addDiscountToCart(id: String, skuRequest: SkuRequest? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        addDiscountToCartWithRequestBuilder(id: id, skuRequest: skuRequest).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Adds a discount coupon to the cart
     - POST /carts/{id}/discounts
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the cart 
     - parameter skuRequest: (body) The request of the sku (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addDiscountToCartWithRequestBuilder(id: String, skuRequest: SkuRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/discounts"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = skuRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add an item to the cart
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addItemToCart(id: String, cartItemRequest: CartItemRequest? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        addItemToCartWithRequestBuilder(id: id, cartItemRequest: cartItemRequest).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Add an item to the cart
     - POST /carts/{id}/items
     - Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addItemToCartWithRequestBuilder(id: String, cartItemRequest: CartItemRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/items"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = cartItemRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a cart
     - parameter owner: (query) Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required (optional)
     - parameter currencyCode: (query) Set the currency for the cart, by currency code. May be disallowed by site settings. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCart(owner: Int32? = nil, currencyCode: String? = nil, completion: @escaping ((_ data: String?, _ error: ErrorResponse?) -> Void)) {
        createCartWithRequestBuilder(owner: owner, currencyCode: currencyCode).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a cart
     - POST /carts
     - You don't have to have a user to create a cart but the API requires authentication to checkout
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=""}]
     - parameter owner: (query) Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required (optional)
     - parameter currencyCode: (query) Set the currency for the cart, by currency code. May be disallowed by site settings. (optional)
     - returns: RequestBuilder<String> 
     */
    open class func createCartWithRequestBuilder(owner: Int32? = nil, currencyCode: String? = nil) -> RequestBuilder<String> {
        let path = "/carts"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "owner": owner?.encodeToJSON(), 
            "currency_code": currencyCode
        ])

        let requestBuilder: RequestBuilder<String>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns the cart with the given GUID
     - parameter id: (path) The id of the cart 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCart(id: String, completion: @escaping ((_ data: Cart?, _ error: ErrorResponse?) -> Void)) {
        getCartWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns the cart with the given GUID
     - GET /carts/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "country_tax" : 5.63737665663332876420099637471139430999755859375,
  "error_message" : "error_message",
  "owner" : 9,
  "discount_total" : 1.231513536777255612975068288506008684635162353515625,
  "shipping_cost" : 6.438423552598546706349225132726132869720458984375,
  "created" : 7,
  "state_tax" : 3.557195227068097320710649000830017030239105224609375,
  "currency_code" : "currency_code",
  "selected_shipping_options" : [ {
    "original_price" : 0.80082819046101150206595775671303272247314453125,
    "taxable" : true,
    "shipping_item_id" : 1,
    "price" : 6.02745618307040320615897144307382404804229736328125,
    "vendor_id" : 5,
    "name" : "name",
    "description" : "description",
    "vendor_name" : "vendor_name",
    "sku" : "sku",
    "currency_code" : "currency_code"
  }, {
    "original_price" : 0.80082819046101150206595775671303272247314453125,
    "taxable" : true,
    "shipping_item_id" : 1,
    "price" : 6.02745618307040320615897144307382404804229736328125,
    "vendor_id" : 5,
    "name" : "name",
    "description" : "description",
    "vendor_name" : "vendor_name",
    "sku" : "sku",
    "currency_code" : "currency_code"
  } ],
  "shippable" : true,
  "coupons" : [ {
    "code" : "code",
    "max_quantity" : 7,
    "unique_key" : "unique_key",
    "self_exclusive" : false,
    "description" : "description",
    "target_item_id" : 3,
    "valid_for_tags" : [ "valid_for_tags", "valid_for_tags" ],
    "discount_type" : "value",
    "type" : "coupon_cart",
    "min_cart_total" : 9.301444243932575517419536481611430644989013671875,
    "vendor_id" : 4,
    "name" : "name",
    "exclusive" : false,
    "max_discount" : 2.3021358869347654518833223846741020679473876953125,
    "value" : 2.027123023002321833274663731572218239307403564453125
  }, {
    "code" : "code",
    "max_quantity" : 7,
    "unique_key" : "unique_key",
    "self_exclusive" : false,
    "description" : "description",
    "target_item_id" : 3,
    "valid_for_tags" : [ "valid_for_tags", "valid_for_tags" ],
    "discount_type" : "value",
    "type" : "coupon_cart",
    "min_cart_total" : 9.301444243932575517419536481611430644989013671875,
    "vendor_id" : 4,
    "name" : "name",
    "exclusive" : false,
    "max_discount" : 2.3021358869347654518833223846741020679473876953125,
    "value" : 2.027123023002321833274663731572218239307403564453125
  } ],
  "subtotal" : 6.96511769763884558415156789124011993408203125,
  "invoice_id" : 6.8468526983526398765889098285697400569915771484375,
  "error_code" : 1,
  "grand_total" : 1.489415909854170383397331534069962799549102783203125,
  "id" : "id",
  "shipping_address" : {
    "zip" : "zip",
    "country_code_iso3" : "country_code_iso3",
    "name_prefix" : "name_prefix",
    "postal_state_code" : "postal_state_code",
    "city" : "city",
    "order_notes" : "order_notes",
    "last_name" : "last_name",
    "shipping_address_line2" : "shipping_address_line2",
    "phone_number" : "phone_number",
    "shipping_address_line1" : "shipping_address_line1",
    "first_name" : "first_name",
    "email" : "email"
  },
  "available_shipping_options" : [ {
    "original_price" : 0.80082819046101150206595775671303272247314453125,
    "taxable" : true,
    "shipping_item_id" : 1,
    "price" : 6.02745618307040320615897144307382404804229736328125,
    "vendor_id" : 5,
    "name" : "name",
    "description" : "description",
    "vendor_name" : "vendor_name",
    "sku" : "sku",
    "currency_code" : "currency_code"
  }, {
    "original_price" : 0.80082819046101150206595775671303272247314453125,
    "taxable" : true,
    "shipping_item_id" : 1,
    "price" : 6.02745618307040320615897144307382404804229736328125,
    "vendor_id" : 5,
    "name" : "name",
    "description" : "description",
    "vendor_name" : "vendor_name",
    "sku" : "sku",
    "currency_code" : "currency_code"
  } ],
  "items" : [ {
    "thumb_url" : "thumb_url",
    "store_item_id" : 9,
    "unique_key" : "unique_key",
    "description" : "description",
    "discount" : {
      "unique_key" : "unique_key",
      "name" : "name",
      "description" : "description",
      "sku" : "sku",
      "value" : 7.4577447736837658709418974467553198337554931640625
    },
    "vendor_name" : "vendor_name",
    "original_unit_price" : 5.02500479152029466689555192715488374233245849609375,
    "original_line_total" : 4.9652184929849543237878606305457651615142822265625,
    "unit_price" : 6.683562403749608193948006373830139636993408203125,
    "currency_code" : "currency_code",
    "line_total" : 1.173074250955943309548956676735542714595794677734375,
    "tags" : [ "tags", "tags" ],
    "qty" : 9,
    "vendor_id" : 8,
    "name" : "name",
    "sale_name" : "sale_name",
    "sku" : "sku",
    "sku_description" : "sku_description"
  }, {
    "thumb_url" : "thumb_url",
    "store_item_id" : 9,
    "unique_key" : "unique_key",
    "description" : "description",
    "discount" : {
      "unique_key" : "unique_key",
      "name" : "name",
      "description" : "description",
      "sku" : "sku",
      "value" : 7.4577447736837658709418974467553198337554931640625
    },
    "vendor_name" : "vendor_name",
    "original_unit_price" : 5.02500479152029466689555192715488374233245849609375,
    "original_line_total" : 4.9652184929849543237878606305457651615142822265625,
    "unit_price" : 6.683562403749608193948006373830139636993408203125,
    "currency_code" : "currency_code",
    "line_total" : 1.173074250955943309548956676735542714595794677734375,
    "tags" : [ "tags", "tags" ],
    "qty" : 9,
    "vendor_id" : 8,
    "name" : "name",
    "sale_name" : "sale_name",
    "sku" : "sku",
    "sku_description" : "sku_description"
  } ],
  "updated" : 1,
  "status" : "active"
}}]
     - parameter id: (path) The id of the cart 
     - returns: RequestBuilder<Cart> 
     */
    open class func getCartWithRequestBuilder(id: String) -> RequestBuilder<Cart> {
        var path = "/carts/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Cart>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of carts
     - parameter filterOwnerId: (query) Filter by the id of the owner (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCarts(filterOwnerId: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceCartSummary?, _ error: ErrorResponse?) -> Void)) {
        getCartsWithRequestBuilder(filterOwnerId: filterOwnerId, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of carts
     - GET /carts
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 2,
  "last" : true,
  "size" : 9,
  "total_elements" : 3,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 7,
  "content" : [ {
    "subtotal" : 5.63737665663332876420099637471139430999755859375,
    "invoice_id" : 1.46581298050294517310021547018550336360931396484375,
    "created_date" : 0,
    "grand_total" : 6.02745618307040320615897144307382404804229736328125,
    "id" : "id",
    "items_in_cart" : 5,
    "currency_code" : "currency_code",
    "status" : "active"
  }, {
    "subtotal" : 5.63737665663332876420099637471139430999755859375,
    "invoice_id" : 1.46581298050294517310021547018550336360931396484375,
    "created_date" : 0,
    "grand_total" : 6.02745618307040320615897144307382404804229736328125,
    "id" : "id",
    "items_in_cart" : 5,
    "currency_code" : "currency_code",
    "status" : "active"
  } ],
  "first" : true
}}]
     - parameter filterOwnerId: (query) Filter by the id of the owner (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - returns: RequestBuilder<PageResourceCartSummary> 
     */
    open class func getCartsWithRequestBuilder(filterOwnerId: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCartSummary> {
        let path = "/carts"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_owner_id": filterOwnerId?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceCartSummary>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns whether a cart requires shipping
     - parameter id: (path) The id of the cart 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippable(id: String, completion: @escaping ((_ data: CartShippableResponse?, _ error: ErrorResponse?) -> Void)) {
        getShippableWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns whether a cart requires shipping
     - GET /carts/{id}/shippable
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "cart_id" : 0,
  "shippable" : false
}}]
     - parameter id: (path) The id of the cart 
     - returns: RequestBuilder<CartShippableResponse> 
     */
    open class func getShippableWithRequestBuilder(id: String) -> RequestBuilder<CartShippableResponse> {
        var path = "/carts/{id}/shippable"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CartShippableResponse>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the list of available shipping countries per vendor
     - parameter id: (path) The id of the cart 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippingCountries(id: String, completion: @escaping ((_ data: SampleCountriesResponse?, _ error: ErrorResponse?) -> Void)) {
        getShippingCountriesWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the list of available shipping countries per vendor
     - GET /carts/{id}/countries
     - Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "vendor_id2" : [ {
    "name" : "name",
    "id" : 0,
    "iso2" : "iso2",
    "iso3" : "iso3"
  }, {
    "name" : "name",
    "id" : 0,
    "iso2" : "iso2",
    "iso3" : "iso3"
  } ],
  "vendor_id1" : [ {
    "name" : "name",
    "id" : 0,
    "iso2" : "iso2",
    "iso3" : "iso3"
  }, {
    "name" : "name",
    "id" : 0,
    "iso2" : "iso2",
    "iso3" : "iso3"
  } ]
}}]
     - parameter id: (path) The id of the cart 
     - returns: RequestBuilder<SampleCountriesResponse> 
     */
    open class func getShippingCountriesWithRequestBuilder(id: String) -> RequestBuilder<SampleCountriesResponse> {
        var path = "/carts/{id}/countries"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SampleCountriesResponse>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Removes a discount coupon from the cart
     - parameter id: (path) The id of the cart 
     - parameter code: (path) The SKU code of the coupon to remove 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeDiscountFromCart(id: String, code: String, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        removeDiscountFromCartWithRequestBuilder(id: id, code: code).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Removes a discount coupon from the cart
     - DELETE /carts/{id}/discounts/{code}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the cart 
     - parameter code: (path) The SKU code of the coupon to remove 
     - returns: RequestBuilder<Void> 
     */
    open class func removeDiscountFromCartWithRequestBuilder(id: String, code: String) -> RequestBuilder<Void> {
        var path = "/carts/{id}/discounts/{code}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{code}", with: "\(code)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Sets the currency to use for the cart
     - parameter id: (path) The id of the cart 
     - parameter currencyCode: (body) The code of the currency (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setCartCurrency(id: String, currencyCode: StringWrapper? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        setCartCurrencyWithRequestBuilder(id: id, currencyCode: currencyCode).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Sets the currency to use for the cart
     - PUT /carts/{id}/currency
     - May be disallowed by site settings.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the cart 
     - parameter currencyCode: (body) The code of the currency (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func setCartCurrencyWithRequestBuilder(id: String, currencyCode: StringWrapper? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/currency"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = currencyCode?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Sets the owner of a cart if none is set already
     - parameter id: (path) The id of the cart 
     - parameter userId: (body) The id of the user (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setCartOwner(id: String, userId: IntWrapper? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        setCartOwnerWithRequestBuilder(id: id, userId: userId).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Sets the owner of a cart if none is set already
     - PUT /carts/{id}/owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the cart 
     - parameter userId: (body) The id of the user (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func setCartOwnerWithRequestBuilder(id: String, userId: IntWrapper? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/owner"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = userId?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Changes the quantity of an item already in the cart
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateItemInCart(id: String, cartItemRequest: CartItemRequest? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        updateItemInCartWithRequestBuilder(id: id, cartItemRequest: cartItemRequest).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Changes the quantity of an item already in the cart
     - PUT /carts/{id}/items
     - A quantity of zero will remove the item from the cart altogether.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updateItemInCartWithRequestBuilder(id: String, cartItemRequest: CartItemRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/items"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = cartItemRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Modifies or sets the order shipping address
     - parameter id: (path) The id of the cart 
     - parameter cartShippingAddressRequest: (body) The cart shipping address request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateShippingAddress(id: String, cartShippingAddressRequest: CartShippingAddressRequest? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        updateShippingAddressWithRequestBuilder(id: id, cartShippingAddressRequest: cartShippingAddressRequest).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Modifies or sets the order shipping address
     - PUT /carts/{id}/shipping-address
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the cart 
     - parameter cartShippingAddressRequest: (body) The cart shipping address request object (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updateShippingAddressWithRequestBuilder(id: String, cartShippingAddressRequest: CartShippingAddressRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/shipping-address"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = cartShippingAddressRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
