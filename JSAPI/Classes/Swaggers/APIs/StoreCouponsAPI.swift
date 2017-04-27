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
  "max_quantity" : 0,
  "skus" : [ {
    "sale_id" : 7,
    "original_price" : 5.64388025811608,
    "description" : "aeiou",
    "stop_date" : 0,
    "published" : false,
    "inventory" : 4,
    "min_inventory_threshold" : 6,
    "currency_code" : "aeiou",
    "price" : 9.221620654437622,
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
  "id" : 0,
  "discount_max" : 9.131502038466815,
  "geo_policy_type" : "whitelist",
  "store_end" : 7,
  "coupon_type_hint" : "coupon_cart",
  "item_id" : 9,
  "behaviors" : [ {
    "type_hint" : "aeiou",
    "description" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "discount_value" : 7.808816344395673,
  "long_description" : "aeiou",
  "sort" : 7,
  "discount_type" : "value",
  "tags" : [ "aeiou" ],
  "shipping_tier" : 9,
  "discount_min_cart_value" : 6.348741712260923,
  "store_start" : 3,
  "vendor_id" : 0,
  "name" : "aeiou",
  "created_date" : 1,
  "updated_date" : 7,
  "category" : "aeiou"
}}]
     
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter couponItem: (body) The coupon item object (optional)

     - returns: RequestBuilder<CouponItem> 
     */
    open class func createCouponItemWithRequestBuilder(cascade: Bool? = nil, couponItem: CouponItem? = nil) -> RequestBuilder<CouponItem> {
        let path = "/store/coupons"
        let URLString = JSAPIAPI.basePath + path
        let parameters = couponItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<CouponItem>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

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
      "type_hint" : "aeiou",
      "description" : "aeiou"
    },
    "modifiable" : false,
    "required" : false
  } ],
  "name" : "aeiou",
  "created_date" : 3,
  "id" : "aeiou",
  "updated_date" : 1,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "aeiou" ],
        "name" : "aeiou",
        "description" : "aeiou",
        "type" : "integer",
        "inner_type_fields" : [ "" ],
        "required" : false
      } ],
      "property_type" : "aeiou",
      "property_fields" : [ "" ]
    },
    "required" : false
  } ]
}}]
     
     - parameter couponTemplateResource: (body) The new coupon template (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func createCouponTemplateWithRequestBuilder(couponTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        let path = "/store/coupons/templates"
        let URLString = JSAPIAPI.basePath + path
        let parameters = couponTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

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
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

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
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

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
  "max_quantity" : 7,
  "skus" : [ {
    "sale_id" : 5,
    "original_price" : 6.252725271881596,
    "description" : "aeiou",
    "stop_date" : 3,
    "published" : false,
    "inventory" : 4,
    "min_inventory_threshold" : 7,
    "currency_code" : "aeiou",
    "price" : 3.8026133013653194,
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
  "id" : 4,
  "discount_max" : 5.456825052560486,
  "geo_policy_type" : "whitelist",
  "store_end" : 5,
  "coupon_type_hint" : "coupon_cart",
  "item_id" : 3,
  "behaviors" : [ {
    "type_hint" : "aeiou",
    "description" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "discount_value" : 5.095516703307847,
  "long_description" : "aeiou",
  "sort" : 9,
  "discount_type" : "value",
  "tags" : [ "aeiou" ],
  "shipping_tier" : 9,
  "discount_min_cart_value" : 2.075546857749755,
  "store_start" : 7,
  "vendor_id" : 7,
  "name" : "aeiou",
  "created_date" : 0,
  "updated_date" : 3,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the coupon 

     - returns: RequestBuilder<CouponItem> 
     */
    open class func getCouponItemWithRequestBuilder(id: Int32) -> RequestBuilder<CouponItem> {
        var path = "/store/coupons/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CouponItem>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

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
      "type_hint" : "aeiou",
      "description" : "aeiou"
    },
    "modifiable" : false,
    "required" : false
  } ],
  "name" : "aeiou",
  "created_date" : 9,
  "id" : "aeiou",
  "updated_date" : 2,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "aeiou" ],
        "name" : "aeiou",
        "description" : "aeiou",
        "type" : "integer",
        "inner_type_fields" : [ "" ],
        "required" : false
      } ],
      "property_type" : "aeiou",
      "property_fields" : [ "" ]
    },
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func getCouponTemplateWithRequestBuilder(id: String) -> RequestBuilder<ItemTemplateResource> {
        var path = "/store/coupons/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

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
  "size" : 1,
  "total_elements" : 5,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 5,
  "number_of_elements" : 5,
  "content" : [ {
    "behaviors" : [ {
      "behavior" : {
        "type_hint" : "aeiou",
        "description" : "aeiou"
      },
      "modifiable" : false,
      "required" : false
    } ],
    "name" : "aeiou",
    "created_date" : 5,
    "id" : "aeiou",
    "updated_date" : 0,
    "properties" : [ {
      "name" : "aeiou",
      "type" : "aeiou",
      "field_list" : {
        "property_definition_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "aeiou" ],
          "name" : "aeiou",
          "description" : "aeiou",
          "type" : "integer",
          "inner_type_fields" : [ "" ],
          "required" : false
        } ],
        "property_type" : "aeiou",
        "property_fields" : [ "" ]
      },
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
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceItemTemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

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
  "max_quantity" : 4,
  "skus" : [ {
    "sale_id" : 6,
    "original_price" : 6.079572415700431,
    "description" : "aeiou",
    "stop_date" : 0,
    "published" : false,
    "inventory" : 4,
    "min_inventory_threshold" : 9,
    "currency_code" : "aeiou",
    "price" : 2.8635727972364666,
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
  "id" : 5,
  "discount_max" : 4.963449701796801,
  "geo_policy_type" : "whitelist",
  "store_end" : 9,
  "coupon_type_hint" : "coupon_cart",
  "item_id" : 5,
  "behaviors" : [ {
    "type_hint" : "aeiou",
    "description" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "discount_value" : 4.360495080075953,
  "long_description" : "aeiou",
  "sort" : 6,
  "discount_type" : "value",
  "tags" : [ "aeiou" ],
  "shipping_tier" : 5,
  "discount_min_cart_value" : 5.790514692747082,
  "store_start" : 1,
  "vendor_id" : 7,
  "name" : "aeiou",
  "created_date" : 2,
  "updated_date" : 7,
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
        let URLString = JSAPIAPI.basePath + path
        let parameters = couponItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<CouponItem>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

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
      "type_hint" : "aeiou",
      "description" : "aeiou"
    },
    "modifiable" : false,
    "required" : false
  } ],
  "name" : "aeiou",
  "created_date" : 6,
  "id" : "aeiou",
  "updated_date" : 1,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "aeiou" ],
        "name" : "aeiou",
        "description" : "aeiou",
        "type" : "integer",
        "inner_type_fields" : [ "" ],
        "required" : false
      } ],
      "property_type" : "aeiou",
      "property_fields" : [ "" ]
    },
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
        let URLString = JSAPIAPI.basePath + path
        let parameters = couponTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
