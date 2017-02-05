//
// StoreCouponsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreCouponsAPI: APIBase {
    /**
     Create a coupon item
     
     - parameter couponItem: (body) The coupon item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCouponItemUsingPOST(couponItem: CouponItem? = nil, completion: @escaping ((_ data: CouponItem?,_ error: Error?) -> Void)) {
        createCouponItemUsingPOSTWithRequestBuilder(couponItem: couponItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a coupon item
     - POST /store/coupons
     - SKUs have to be unique in the entire store.
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "max_quantity" : 123,
  "skus" : [ {
    "sale_id" : 123,
    "original_price" : 1.3579000000000001069366817318950779736042022705078125,
    "description" : "aeiou",
    "stop_date" : 123456789,
    "published" : false,
    "inventory" : 123,
    "min_inventory_threshold" : 123,
    "currency_code" : "aeiou",
    "price" : 1.3579000000000001069366817318950779736042022705078125,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 123456789
  } ],
  "type_hint" : "aeiou",
  "self_exclusive" : false,
  "valid_for_tags" : [ "aeiou" ],
  "exclusive" : false,
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 123,
  "discount_max" : 1.3579000000000001069366817318950779736042022705078125,
  "geo_policy_type" : "aeiou",
  "store_end" : 123456789,
  "coupon_type_hint" : "aeiou",
  "item_id" : 123,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "discount_value" : 1.3579000000000001069366817318950779736042022705078125,
  "long_description" : "aeiou",
  "sort" : 123,
  "discount_type" : "aeiou",
  "tags" : [ "aeiou" ],
  "shipping_tier" : 123,
  "discount_min_cart_value" : 1.3579000000000001069366817318950779736042022705078125,
  "store_start" : 123456789,
  "vendor_id" : 123,
  "name" : "aeiou",
  "created_date" : 123456789,
  "updated_date" : 123456789,
  "category" : "aeiou"
}}]
     
     - parameter couponItem: (body) The coupon item object (optional)

     - returns: RequestBuilder<CouponItem> 
     */
    open class func createCouponItemUsingPOSTWithRequestBuilder(couponItem: CouponItem? = nil) -> RequestBuilder<CouponItem> {
        let path = "/store/coupons"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = couponItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CouponItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a coupon template
     
     - parameter couponTemplateResource: (body) The new coupon template (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCouponTemplateUsingPOST(couponTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        createCouponTemplateUsingPOSTWithRequestBuilder(couponTemplateResource: couponTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a coupon template
     - POST /store/coupons/templates
     - Coupon Templates define a type of coupon and the properties they have.
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "behaviors" : [ {
    "behavior" : {
      "type_hint" : "aeiou"
    },
    "modifiable" : false,
    "required" : false
  } ],
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter couponTemplateResource: (body) The new coupon template (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func createCouponTemplateUsingPOSTWithRequestBuilder(couponTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        let path = "/store/coupons/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = couponTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a coupon item
     
     - parameter id: (path) The id of the coupon 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCouponItemUsingDELETE(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCouponItemUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a coupon item
     - DELETE /store/coupons/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the coupon 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCouponItemUsingDELETEWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/store/coupons/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a coupon template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCouponTemplateUsingDELETE(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCouponTemplateUsingDELETEWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a coupon template
     - DELETE /store/coupons/templates/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCouponTemplateUsingDELETEWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/store/coupons/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single coupon item
     
     - parameter id: (path) The id of the coupon 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCouponItemUsingGET(id: Int32, completion: @escaping ((_ data: CouponItem?,_ error: Error?) -> Void)) {
        getCouponItemUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single coupon item
     - GET /store/coupons/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "max_quantity" : 123,
  "skus" : [ {
    "sale_id" : 123,
    "original_price" : 1.3579000000000001069366817318950779736042022705078125,
    "description" : "aeiou",
    "stop_date" : 123456789,
    "published" : false,
    "inventory" : 123,
    "min_inventory_threshold" : 123,
    "currency_code" : "aeiou",
    "price" : 1.3579000000000001069366817318950779736042022705078125,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 123456789
  } ],
  "type_hint" : "aeiou",
  "self_exclusive" : false,
  "valid_for_tags" : [ "aeiou" ],
  "exclusive" : false,
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 123,
  "discount_max" : 1.3579000000000001069366817318950779736042022705078125,
  "geo_policy_type" : "aeiou",
  "store_end" : 123456789,
  "coupon_type_hint" : "aeiou",
  "item_id" : 123,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "discount_value" : 1.3579000000000001069366817318950779736042022705078125,
  "long_description" : "aeiou",
  "sort" : 123,
  "discount_type" : "aeiou",
  "tags" : [ "aeiou" ],
  "shipping_tier" : 123,
  "discount_min_cart_value" : 1.3579000000000001069366817318950779736042022705078125,
  "store_start" : 123456789,
  "vendor_id" : 123,
  "name" : "aeiou",
  "created_date" : 123456789,
  "updated_date" : 123456789,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the coupon 

     - returns: RequestBuilder<CouponItem> 
     */
    open class func getCouponItemUsingGETWithRequestBuilder(id: Int32) -> RequestBuilder<CouponItem> {
        var path = "/store/coupons/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CouponItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single coupon template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCouponTemplateUsingGET(id: String, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        getCouponTemplateUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single coupon template
     - GET /store/coupons/templates/{id}
     - Coupon Templates define a type of coupon and the properties they have.
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "behaviors" : [ {
    "behavior" : {
      "type_hint" : "aeiou"
    },
    "modifiable" : false,
    "required" : false
  } ],
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func getCouponTemplateUsingGETWithRequestBuilder(id: String) -> RequestBuilder<ItemTemplateResource> {
        var path = "/store/coupons/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search coupon templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCouponTemplatesUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceItemTemplateResource?,_ error: Error?) -> Void)) {
        getCouponTemplatesUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search coupon templates
     - GET /store/coupons/templates
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "aeiou",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "aeiou"
  } ],
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "behaviors" : [ {
      "behavior" : {
        "type_hint" : "aeiou"
      },
      "modifiable" : false,
      "required" : false
    } ],
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : "aeiou",
    "updated_date" : 123456789,
    "properties" : [ {
      "name" : "aeiou",
      "type" : "aeiou",
      "required" : false
    } ]
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceItemTemplateResource> 
     */
    open class func getCouponTemplatesUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceItemTemplateResource> {
        let path = "/store/coupons/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a coupon item
     
     - parameter id: (path) The id of the coupon 
     - parameter couponItem: (body) The coupon item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCouponItemUsingPUT(id: Int32, couponItem: CouponItem? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateCouponItemUsingPUTWithRequestBuilder(id: id, couponItem: couponItem).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a coupon item
     - PUT /store/coupons/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the coupon 
     - parameter couponItem: (body) The coupon item object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateCouponItemUsingPUTWithRequestBuilder(id: Int32, couponItem: CouponItem? = nil) -> RequestBuilder<Void> {
        var path = "/store/coupons/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = couponItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a coupon template
     
     - parameter id: (path) The id of the template 
     - parameter couponTemplateResource: (body) The coupon template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCouponTemplateUsingPUT(id: String, couponTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateCouponTemplateUsingPUTWithRequestBuilder(id: id, couponTemplateResource: couponTemplateResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a coupon template
     - PUT /store/coupons/templates/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the template 
     - parameter couponTemplateResource: (body) The coupon template resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateCouponTemplateUsingPUTWithRequestBuilder(id: String, couponTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<Void> {
        var path = "/store/coupons/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = couponTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
