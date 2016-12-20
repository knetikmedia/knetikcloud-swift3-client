//
// StoreShoppingCartsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreShoppingCartsAPI: APIBase {
    /**
     Adds a coupon to the cart
     
     - parameter id: (path) The id of the cart 
     - parameter skuRequest: (body) The request of the sku (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addDiscountUsingPOST(id: String, skuRequest: SkuRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addDiscountUsingPOSTWithRequestBuilder(id: id, skuRequest: skuRequest).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Adds a coupon to the cart
     - POST /carts/{id}/discounts
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter skuRequest: (body) The request of the sku (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addDiscountUsingPOSTWithRequestBuilder(id: String, skuRequest: SkuRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/discounts"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = skuRequest?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Add an item to the cart
     
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addItemUsingPOST(id: String, cartItemRequest: CartItemRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addItemUsingPOSTWithRequestBuilder(id: id, cartItemRequest: cartItemRequest).execute { (response, error) -> Void in
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
    open class func addItemUsingPOSTWithRequestBuilder(id: String, cartItemRequest: CartItemRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/items"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = cartItemRequest?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Sets the owner of a cart if none is set already
     
     - parameter id: (path) The id of the cart 
     - parameter userId: (body) The id of the user (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func assignCartUsingPUT(id: String, userId: Int32? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        assignCartUsingPUTWithRequestBuilder(id: id, userId: userId).execute { (response, error) -> Void in
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
    open class func assignCartUsingPUTWithRequestBuilder(id: String, userId: Int32? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/owner"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = userId?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Returns whether a cart requires shipping
     
     - parameter id: (path) The id of the cart 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func checkShippableUsingGET(id: String, completion: @escaping ((_ data: CartShippableResponse?,_ error: Error?) -> Void)) {
        checkShippableUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns whether a cart requires shipping
     - GET /carts/{id}/shippable
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter id: (path) The id of the cart 

     - returns: RequestBuilder<CartShippableResponse> 
     */
    open class func checkShippableUsingGETWithRequestBuilder(id: String) -> RequestBuilder<CartShippableResponse> {
        var path = "/carts/{id}/shippable"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CartShippableResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Creates a new cart from scratch
     
     - parameter owner: (query) Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required (optional)
     - parameter currencyCode: (query) Set the currency for the cart, by currency code. May be disallowed by site settings. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCartUsingPOST(owner: Int32? = nil, currencyCode: String? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createCartUsingPOSTWithRequestBuilder(owner: owner, currencyCode: currencyCode).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Creates a new cart from scratch
     - POST /carts
     - You don't have to have a user to create a cart but the API requires authentication to checkout
     - examples: [{output=none}]
     
     - parameter owner: (query) Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required (optional)
     - parameter currencyCode: (query) Set the currency for the cart, by currency code. May be disallowed by site settings. (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createCartUsingPOSTWithRequestBuilder(owner: Int32? = nil, currencyCode: String? = nil) -> RequestBuilder<String> {
        let path = "/carts"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "owner": owner?.encodeToJSON(),
            "currency_code": currencyCode
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Returns the cart with the given GUID
     
     - parameter id: (path) The id of the cart 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCartUsingGET(id: String, completion: @escaping ((_ data: Cart?,_ error: Error?) -> Void)) {
        getCartUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns the cart with the given GUID
     - GET /carts/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter id: (path) The id of the cart 

     - returns: RequestBuilder<Cart> 
     */
    open class func getCartUsingGETWithRequestBuilder(id: String) -> RequestBuilder<Cart> {
        var path = "/carts/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Cart>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the list of available shipping countries per vendor
     
     - parameter id: (path) The id of the cart 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCountriesUsingGET(id: String, completion: @escaping ((_ data: SampleCountriesResponse?,_ error: Error?) -> Void)) {
        getCountriesUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
     - examples: [{output=none}]
     
     - parameter id: (path) The id of the cart 

     - returns: RequestBuilder<SampleCountriesResponse> 
     */
    open class func getCountriesUsingGETWithRequestBuilder(id: String) -> RequestBuilder<SampleCountriesResponse> {
        var path = "/carts/{id}/countries"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<SampleCountriesResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Modifies or sets the order shipping address
     
     - parameter id: (path) The id of the cart 
     - parameter cartShippingAddressRequest: (body) The cart shipping address request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func modifyShippingAddressUsingPUT(id: String, cartShippingAddressRequest: CartShippingAddressRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        modifyShippingAddressUsingPUTWithRequestBuilder(id: id, cartShippingAddressRequest: cartShippingAddressRequest).execute { (response, error) -> Void in
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
    open class func modifyShippingAddressUsingPUTWithRequestBuilder(id: String, cartShippingAddressRequest: CartShippingAddressRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/shipping-address"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = cartShippingAddressRequest?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Removes a coupon from the cart
     
     - parameter id: (path) The id of the cart 
     - parameter code: (path) The SKU code of the coupon to remove 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeDiscountUsingDELETE(id: String, code: String, completion: @escaping ((_ error: Error?) -> Void)) {
        removeDiscountUsingDELETEWithRequestBuilder(id: id, code: code).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Removes a coupon from the cart
     - DELETE /carts/{id}/discounts/{code}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the cart 
     - parameter code: (path) The SKU code of the coupon to remove 

     - returns: RequestBuilder<Void> 
     */
    open class func removeDiscountUsingDELETEWithRequestBuilder(id: String, code: String) -> RequestBuilder<Void> {
        var path = "/carts/{id}/discounts/{code}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{code}", with: "\(code)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a list of carts
     
     - parameter filterOwnerId: (query) Filter by the id of the owner (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchCartsUsingGET(filterOwnerId: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageCartSummary?,_ error: Error?) -> Void)) {
        searchCartsUsingGETWithRequestBuilder(filterOwnerId: filterOwnerId, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of carts
     - GET /carts
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter filterOwnerId: (query) Filter by the id of the owner (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageCartSummary> 
     */
    open class func searchCartsUsingGETWithRequestBuilder(filterOwnerId: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageCartSummary> {
        let path = "/carts"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_owner_id": filterOwnerId?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageCartSummary>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Sets the currency to use for the cart
     
     - parameter id: (path) The id of the cart 
     - parameter currencyCode: (body) The code of the currency (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setCartCurrencyUsingPUT(id: String, currencyCode: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setCartCurrencyUsingPUTWithRequestBuilder(id: id, currencyCode: currencyCode).execute { (response, error) -> Void in
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
    open class func setCartCurrencyUsingPUTWithRequestBuilder(id: String, currencyCode: String? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/currency"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = currencyCode?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Changes the quantity of an item already in the cart
     
     - parameter id: (path) The id of the cart 
     - parameter cartItemRequest: (body) The cart item request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateItemUsingPUT(id: String, cartItemRequest: CartItemRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateItemUsingPUTWithRequestBuilder(id: id, cartItemRequest: cartItemRequest).execute { (response, error) -> Void in
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
    open class func updateItemUsingPUTWithRequestBuilder(id: String, cartItemRequest: CartItemRequest? = nil) -> RequestBuilder<Void> {
        var path = "/carts/{id}/items"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = cartItemRequest?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
