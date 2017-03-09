//
// StoreShoppingCartsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreShoppingCartsAPI: APIBase {
    /**
     Adds a custom discount to the cart
     
     - parameter id: (path) The id of the cart 
     - parameter customDiscount: (body) The details of the discount to add (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addCustomDiscount(id: String, customDiscount: CouponDefinition? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addCustomDiscountWithRequestBuilder(id: id, customDiscount: customDiscount).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Adds a custom discount to the cart
     - POST /carts/{id}/custom-discounts
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter customDiscount: (body) The details of the discount to add (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addCustomDiscountWithRequestBuilder(id: String, customDiscount: CouponDefinition? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/custom-discounts"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = customDiscount?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Adds a discount coupon to the cart
     
     - parameter id: (path) The id of the cart 
     - parameter skuRequest: (body) The request of the sku (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addDiscountToCart(id: String, skuRequest: SkuRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addDiscountToCartWithRequestBuilder(id: id, skuRequest: skuRequest).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Adds a discount coupon to the cart
     - POST /carts/{id}/discounts
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter skuRequest: (body) The request of the sku (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addDiscountToCartWithRequestBuilder(id: String, skuRequest: SkuRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/discounts"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = skuRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add an item to the cart
     
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addItemToCart(id: String, cartItemRequest: CartItemRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addItemToCartWithRequestBuilder(id: id, cartItemRequest: cartItemRequest).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add an item to the cart
     - POST /carts/{id}/items
     - Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addItemToCartWithRequestBuilder(id: String, cartItemRequest: CartItemRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/items"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = cartItemRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a cart
     
     - parameter owner: (query) Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required (optional)
     - parameter currencyCode: (query) Set the currency for the cart, by currency code. May be disallowed by site settings. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCart(owner: Int32? = nil, currencyCode: String? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createCartWithRequestBuilder(owner: owner, currencyCode: currencyCode).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a cart
     - POST /carts
     - You don't have to have a user to create a cart but the API requires authentication to checkout
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter owner: (query) Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required (optional)
     - parameter currencyCode: (query) Set the currency for the cart, by currency code. May be disallowed by site settings. (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createCartWithRequestBuilder(owner: Int32? = nil, currencyCode: String? = nil) -> RequestBuilder<String> {
        let path = "/carts"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "owner": owner?.encodeToJSON(), 
            "currency_code": currencyCode
        ])
        

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns the cart with the given GUID
     
     - parameter id: (path) The id of the cart 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCart(id: String, completion: @escaping ((_ data: Cart?,_ error: Error?) -> Void)) {
        getCartWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns the cart with the given GUID
     - GET /carts/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "country_tax" : 0.6613753250301402,
  "error_message" : "aeiou",
  "owner" : 2,
  "discount_total" : 6.732564683340109,
  "shipping_cost" : 5.786006237201101,
  "created" : 9,
  "shipping_options" : {
    "key" : ""
  },
  "state_tax" : 0.12487129398438213,
  "currency_code" : "aeiou",
  "selected_shipping_options" : [ {
    "original_price" : 7.914475823566067,
    "taxable" : true,
    "shipping_item_id" : 7,
    "price" : 3.174078114201256,
    "vendor_id" : 6,
    "name" : "aeiou",
    "description" : "aeiou",
    "vendor_name" : "aeiou",
    "sku" : "aeiou",
    "currency_code" : "aeiou"
  } ],
  "shippable" : true,
  "coupons" : [ {
    "code" : "aeiou",
    "max_quantity" : 4,
    "self_exclusive" : false,
    "description" : "aeiou",
    "target_item_id" : 5,
    "valid_for_tags" : [ "aeiou" ],
    "discount_type" : "value",
    "type" : "coupon_cart",
    "min_cart_total" : 1.715961583748551,
    "vendor_id" : 9,
    "name" : "aeiou",
    "exclusive" : false,
    "max_discount" : 3.1751781825207614,
    "value" : 1.429248747608155
  } ],
  "subtotal" : 2.7938885892749186,
  "invoice_id" : 4.499868248515181,
  "error_code" : 0,
  "grand_total" : 3.8667452310858597,
  "id" : "aeiou",
  "shipping_address" : {
    "zip" : "aeiou",
    "country_code_iso3" : "aeiou",
    "name_prefix" : "aeiou",
    "postal_state_code" : "aeiou",
    "city" : "aeiou",
    "order_notes" : "aeiou",
    "last_name" : "aeiou",
    "shipping_address_line2" : "aeiou",
    "phone_number" : "aeiou",
    "shipping_address_line1" : "aeiou",
    "first_name" : "aeiou",
    "email" : "aeiou"
  },
  "items" : [ {
    "thumb_url" : "aeiou",
    "store_item_id" : 6,
    "description" : "aeiou",
    "discount" : {
      "name" : "aeiou",
      "description" : "aeiou",
      "sku" : "aeiou",
      "value" : 2.6600585163726786
    },
    "vendor_name" : "aeiou",
    "original_unit_price" : 2.8738022556275924,
    "original_line_total" : 2.954694028636972,
    "unit_price" : 5.821252601118292,
    "currency_code" : "aeiou",
    "line_total" : 9.896990349268245,
    "tags" : [ "aeiou" ],
    "qty" : 4,
    "vendor_id" : 7,
    "name" : "aeiou",
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "sku_description" : "aeiou"
  } ],
  "updated" : 5,
  "status" : "active"
}}]
     
     - parameter id: (path) The id of the cart 

     - returns: RequestBuilder<Cart> 
     */
    open class func getCartWithRequestBuilder(id: String) -> RequestBuilder<Cart> {
        var path = "/carts/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Cart>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

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
    open class func getCarts(filterOwnerId: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceCartSummary?,_ error: Error?) -> Void)) {
        getCartsWithRequestBuilder(filterOwnerId: filterOwnerId, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of carts
     - GET /carts
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 9,
  "last" : true,
  "size" : 8,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 1,
  "content" : [ {
    "subtotal" : 8.893653110321939,
    "invoice_id" : 9.724940998014526,
    "created_date" : 6,
    "grand_total" : 2.2924669969664278,
    "id" : "aeiou",
    "items_in_cart" : 4,
    "currency_code" : "aeiou",
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
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_owner_id": filterOwnerId?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceCartSummary>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns whether a cart requires shipping
     
     - parameter id: (path) The id of the cart 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippable(id: String, completion: @escaping ((_ data: CartShippableResponse?,_ error: Error?) -> Void)) {
        getShippableWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns whether a cart requires shipping
     - GET /carts/{id}/shippable
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "cart_id" : 2,
  "shippable" : false
}}]
     
     - parameter id: (path) The id of the cart 

     - returns: RequestBuilder<CartShippableResponse> 
     */
    open class func getShippableWithRequestBuilder(id: String) -> RequestBuilder<CartShippableResponse> {
        var path = "/carts/{id}/shippable"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CartShippableResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the list of available shipping countries per vendor
     
     - parameter id: (path) The id of the cart 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippingCountries(id: String, completion: @escaping ((_ data: SampleCountriesResponse?,_ error: Error?) -> Void)) {
        getShippingCountriesWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get the list of available shipping countries per vendor
     - GET /carts/{id}/countries
     - Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "vendor_id2" : [ "" ],
  "vendor_id1" : [ {
    "name" : "aeiou",
    "id" : 2,
    "iso2" : "aeiou",
    "iso3" : "aeiou"
  } ]
}}]
     
     - parameter id: (path) The id of the cart 

     - returns: RequestBuilder<SampleCountriesResponse> 
     */
    open class func getShippingCountriesWithRequestBuilder(id: String) -> RequestBuilder<SampleCountriesResponse> {
        var path = "/carts/{id}/countries"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SampleCountriesResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Removes a discount coupon from the cart
     
     - parameter id: (path) The id of the cart 
     - parameter code: (path) The SKU code of the coupon to remove 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeDiscountFromCart(id: String, code: String, completion: @escaping ((_ error: Error?) -> Void)) {
        removeDiscountFromCartWithRequestBuilder(id: id, code: code).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Removes a discount coupon from the cart
     - DELETE /carts/{id}/discounts/{code}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter code: (path) The SKU code of the coupon to remove 

     - returns: RequestBuilder<Void> 
     */
    open class func removeDiscountFromCartWithRequestBuilder(id: String, code: String) -> RequestBuilder<Void> {
        var path = "/carts/{id}/discounts/{code}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{code}", with: "\(code)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Sets the currency to use for the cart
     
     - parameter id: (path) The id of the cart 
     - parameter currencyCode: (body) The code of the currency (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setCartCurrency(id: String, currencyCode: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setCartCurrencyWithRequestBuilder(id: id, currencyCode: currencyCode).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Sets the currency to use for the cart
     - PUT /carts/{id}/currency
     - May be disallowed by site settings.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter currencyCode: (body) The code of the currency (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setCartCurrencyWithRequestBuilder(id: String, currencyCode: String? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/currency"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = currencyCode?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Sets the owner of a cart if none is set already
     
     - parameter id: (path) The id of the cart 
     - parameter userId: (body) The id of the user (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setCartOwner(id: String, userId: Int32? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setCartOwnerWithRequestBuilder(id: id, userId: userId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Sets the owner of a cart if none is set already
     - PUT /carts/{id}/owner
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter userId: (body) The id of the user (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setCartOwnerWithRequestBuilder(id: String, userId: Int32? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/owner"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = userId?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Changes the quantity of an item already in the cart
     
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateItemInCart(id: String, cartItemRequest: CartItemRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateItemInCartWithRequestBuilder(id: id, cartItemRequest: cartItemRequest).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Changes the quantity of an item already in the cart
     - PUT /carts/{id}/items
     - A quantity of zero will remove the item from the cart altogether.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateItemInCartWithRequestBuilder(id: String, cartItemRequest: CartItemRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/items"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = cartItemRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Modifies or sets the order shipping address
     
     - parameter id: (path) The id of the cart 
     - parameter cartShippingAddressRequest: (body) The cart shipping address request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateShippingAddress(id: String, cartShippingAddressRequest: CartShippingAddressRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateShippingAddressWithRequestBuilder(id: id, cartShippingAddressRequest: cartShippingAddressRequest).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Modifies or sets the order shipping address
     - PUT /carts/{id}/shipping-address
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter cartShippingAddressRequest: (body) The cart shipping address request object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateShippingAddressWithRequestBuilder(id: String, cartShippingAddressRequest: CartShippingAddressRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/shipping-address"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = cartShippingAddressRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
