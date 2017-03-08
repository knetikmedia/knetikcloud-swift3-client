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
     
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter couponItem: (body) The coupon item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCouponItem(cascade: Bool? = nil, couponItem: CouponItem? = nil, completion: @escaping ((_ data: CouponItem?,_ error: Error?) -> Void)) {
        createCouponItemWithRequestBuilder(cascade: cascade, couponItem: couponItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a coupon item
     - POST /store/coupons
     - SKUs have to be unique in the entire store.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "max_quantity" : 6,
  "skus" : [ {
    "sale_id" : 9,
    "original_price" : 0.3451811368707214,
    "description" : "aeiou",
    "stop_date" : 9,
    "published" : false,
    "inventory" : 3,
    "min_inventory_threshold" : 5,
    "currency_code" : "aeiou",
    "price" : 3.554130409522378,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 3
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
  "id" : 8,
  "discount_max" : 0.0630369069492498,
  "geo_policy_type" : "whitelist",
  "store_end" : 0,
  "coupon_type_hint" : "coupon_cart",
  "item_id" : 2,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "discount_value" : 9.175730153398828,
  "long_description" : "aeiou",
  "sort" : 0,
  "discount_type" : "value",
  "tags" : [ "aeiou" ],
  "shipping_tier" : 0,
  "discount_min_cart_value" : 8.221076660721666,
  "store_start" : 0,
  "vendor_id" : 3,
  "name" : "aeiou",
  "created_date" : 1,
  "updated_date" : 3,
  "category" : "aeiou"
}}]
     
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter couponItem: (body) The coupon item object (optional)

     - returns: RequestBuilder<CouponItem> 
     */
    open class func createCouponItemWithRequestBuilder(cascade: Bool? = nil, couponItem: CouponItem? = nil) -> RequestBuilder<CouponItem> {
        let path = "/store/coupons"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = couponItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<CouponItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a coupon template
     
     - parameter couponTemplateResource: (body) The new coupon template (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCouponTemplate(couponTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        createCouponTemplateWithRequestBuilder(couponTemplateResource: couponTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a coupon template
     - POST /store/coupons/templates
     - Coupon Templates define a type of coupon and the properties they have.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "behaviors" : [ {
    "behavior" : {
      "type_hint" : "aeiou"
    },
    "modifiable" : false,
    "required" : false
  } ],
  "name" : "aeiou",
  "created_date" : 1,
  "id" : "aeiou",
  "updated_date" : 9,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter couponTemplateResource: (body) The new coupon template (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func createCouponTemplateWithRequestBuilder(couponTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
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
    open class func deleteCouponItem(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCouponItemWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a coupon item
     - DELETE /store/coupons/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the coupon 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCouponItemWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
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
    open class func deleteCouponTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCouponTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a coupon template
     - DELETE /store/coupons/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCouponTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
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
    open class func getCouponItem(id: Int32, completion: @escaping ((_ data: CouponItem?,_ error: Error?) -> Void)) {
        getCouponItemWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single coupon item
     - GET /store/coupons/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "max_quantity" : 4,
  "skus" : [ {
    "sale_id" : 0,
    "original_price" : 4.256964672644868,
    "description" : "aeiou",
    "stop_date" : 5,
    "published" : false,
    "inventory" : 5,
    "min_inventory_threshold" : 7,
    "currency_code" : "aeiou",
    "price" : 4.1713138179129805,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 8
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
  "id" : 5,
  "discount_max" : 2.6587756308147914,
  "geo_policy_type" : "whitelist",
  "store_end" : 8,
  "coupon_type_hint" : "coupon_cart",
  "item_id" : 1,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "discount_value" : 2.4686133885286288,
  "long_description" : "aeiou",
  "sort" : 2,
  "discount_type" : "value",
  "tags" : [ "aeiou" ],
  "shipping_tier" : 7,
  "discount_min_cart_value" : 2.768733388201259,
  "store_start" : 9,
  "vendor_id" : 6,
  "name" : "aeiou",
  "created_date" : 8,
  "updated_date" : 1,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the coupon 

     - returns: RequestBuilder<CouponItem> 
     */
    open class func getCouponItemWithRequestBuilder(id: Int32) -> RequestBuilder<CouponItem> {
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
    open class func getCouponTemplate(id: String, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        getCouponTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single coupon template
     - GET /store/coupons/templates/{id}
     - Coupon Templates define a type of coupon and the properties they have.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "behaviors" : [ {
    "behavior" : {
      "type_hint" : "aeiou"
    },
    "modifiable" : false,
    "required" : false
  } ],
  "name" : "aeiou",
  "created_date" : 4,
  "id" : "aeiou",
  "updated_date" : 8,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func getCouponTemplateWithRequestBuilder(id: String) -> RequestBuilder<ItemTemplateResource> {
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
    open class func getCouponTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceItemTemplateResource?,_ error: Error?) -> Void)) {
        getCouponTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search coupon templates
     - GET /store/coupons/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 5,
  "last" : true,
  "size" : 2,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 7,
  "content" : [ {
    "behaviors" : [ {
      "behavior" : {
        "type_hint" : "aeiou"
      },
      "modifiable" : false,
      "required" : false
    } ],
    "name" : "aeiou",
    "created_date" : 7,
    "id" : "aeiou",
    "updated_date" : 9,
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
    open class func getCouponTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceItemTemplateResource> {
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
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter couponItem: (body) The coupon item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCouponItem(id: Int32, cascade: Bool? = nil, couponItem: CouponItem? = nil, completion: @escaping ((_ data: CouponItem?,_ error: Error?) -> Void)) {
        updateCouponItemWithRequestBuilder(id: id, cascade: cascade, couponItem: couponItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a coupon item
     - PUT /store/coupons/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "max_quantity" : 8,
  "skus" : [ {
    "sale_id" : 8,
    "original_price" : 2.380948354064767,
    "description" : "aeiou",
    "stop_date" : 0,
    "published" : false,
    "inventory" : 7,
    "min_inventory_threshold" : 6,
    "currency_code" : "aeiou",
    "price" : 8.857217555490392,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 4
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
  "id" : 8,
  "discount_max" : 6.4186467628001544,
  "geo_policy_type" : "whitelist",
  "store_end" : 8,
  "coupon_type_hint" : "coupon_cart",
  "item_id" : 1,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "discount_value" : 5.916285999931584,
  "long_description" : "aeiou",
  "sort" : 4,
  "discount_type" : "value",
  "tags" : [ "aeiou" ],
  "shipping_tier" : 5,
  "discount_min_cart_value" : 0.4990213556415046,
  "store_start" : 2,
  "vendor_id" : 0,
  "name" : "aeiou",
  "created_date" : 5,
  "updated_date" : 1,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the coupon 
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter couponItem: (body) The coupon item object (optional)

     - returns: RequestBuilder<CouponItem> 
     */
    open class func updateCouponItemWithRequestBuilder(id: Int32, cascade: Bool? = nil, couponItem: CouponItem? = nil) -> RequestBuilder<CouponItem> {
        var path = "/store/coupons/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = couponItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<CouponItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a coupon template
     
     - parameter id: (path) The id of the template 
     - parameter couponTemplateResource: (body) The coupon template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCouponTemplate(id: String, couponTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        updateCouponTemplateWithRequestBuilder(id: id, couponTemplateResource: couponTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a coupon template
     - PUT /store/coupons/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "behaviors" : [ {
    "behavior" : {
      "type_hint" : "aeiou"
    },
    "modifiable" : false,
    "required" : false
  } ],
  "name" : "aeiou",
  "created_date" : 4,
  "id" : "aeiou",
  "updated_date" : 9,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter couponTemplateResource: (body) The coupon template resource object (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func updateCouponTemplateWithRequestBuilder(id: String, couponTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        var path = "/store/coupons/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = couponTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
