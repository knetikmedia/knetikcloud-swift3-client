//
// StoreShippingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreShippingAPI: APIBase {
    /**
     Create a shipping item
     
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter shippingItem: (body) The shipping item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createShippingItem(cascade: Bool? = nil, shippingItem: ShippingItem? = nil, completion: @escaping ((_ data: ShippingItem?,_ error: Error?) -> Void)) {
        createShippingItemWithRequestBuilder(cascade: cascade, shippingItem: shippingItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a shipping item
     - POST /store/shipping
     - A shipping item represents a shipping option and cost. SKUs have to be unique in the entire store.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "max_tier_total" : 7,
  "skus" : [ {
    "sale_id" : 1,
    "original_price" : 0.9238472611317006,
    "description" : "aeiou",
    "stop_date" : 9,
    "published" : false,
    "inventory" : 0,
    "min_inventory_threshold" : 7,
    "currency_code" : "aeiou",
    "price" : 2.167686159569885,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 1
  } ],
  "type_hint" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 5,
  "geo_policy_type" : "whitelist",
  "store_end" : 5,
  "taxable" : false,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "countries" : [ "aeiou" ],
  "long_description" : "aeiou",
  "sort" : 7,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 0,
  "store_start" : 2,
  "vendor_id" : 1,
  "name" : "aeiou",
  "created_date" : 4,
  "updated_date" : 9,
  "category" : "aeiou"
}}]
     
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter shippingItem: (body) The shipping item object (optional)

     - returns: RequestBuilder<ShippingItem> 
     */
    open class func createShippingItemWithRequestBuilder(cascade: Bool? = nil, shippingItem: ShippingItem? = nil) -> RequestBuilder<ShippingItem> {
        let path = "/store/shipping"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = shippingItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<ShippingItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a shipping template
     
     - parameter shippingTemplateResource: (body) The new shipping template (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createShippingTemplate(shippingTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        createShippingTemplateWithRequestBuilder(shippingTemplateResource: shippingTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a shipping template
     - POST /store/shipping/templates
     - Shipping Templates define a type of shipping and the properties they have.
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
  "created_date" : 6,
  "id" : "aeiou",
  "updated_date" : 6,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter shippingTemplateResource: (body) The new shipping template (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func createShippingTemplateWithRequestBuilder(shippingTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        let path = "/store/shipping/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = shippingTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a shipping item
     
     - parameter id: (path) The id of the shipping item 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteShippingItem(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteShippingItemWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a shipping item
     - DELETE /store/shipping/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the shipping item 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteShippingItemWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/store/shipping/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a shipping template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteShippingTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteShippingTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a shipping template
     - DELETE /store/shipping/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteShippingTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/store/shipping/templates/{id}"
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
     Get a single shipping item
     
     - parameter id: (path) The id of the shipping item 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippingItem(id: Int32, completion: @escaping ((_ data: ShippingItem?,_ error: Error?) -> Void)) {
        getShippingItemWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single shipping item
     - GET /store/shipping/{id}
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "max_tier_total" : 2,
  "skus" : [ {
    "sale_id" : 2,
    "original_price" : 6.710020679078935,
    "description" : "aeiou",
    "stop_date" : 7,
    "published" : false,
    "inventory" : 1,
    "min_inventory_threshold" : 1,
    "currency_code" : "aeiou",
    "price" : 7.714672039933098,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 6
  } ],
  "type_hint" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 6,
  "geo_policy_type" : "whitelist",
  "store_end" : 8,
  "taxable" : false,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "countries" : [ "aeiou" ],
  "long_description" : "aeiou",
  "sort" : 7,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 0,
  "store_start" : 7,
  "vendor_id" : 1,
  "name" : "aeiou",
  "created_date" : 6,
  "updated_date" : 2,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the shipping item 

     - returns: RequestBuilder<ShippingItem> 
     */
    open class func getShippingItemWithRequestBuilder(id: Int32) -> RequestBuilder<ShippingItem> {
        var path = "/store/shipping/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ShippingItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single shipping template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippingTemplate(id: String, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        getShippingTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single shipping template
     - GET /store/shipping/templates/{id}
     - Shipping Templates define a type of shipping and the properties they have.
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
    open class func getShippingTemplateWithRequestBuilder(id: String) -> RequestBuilder<ItemTemplateResource> {
        var path = "/store/shipping/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search shipping templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippingTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceItemTemplateResource?,_ error: Error?) -> Void)) {
        getShippingTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search shipping templates
     - GET /store/shipping/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 3,
  "total_elements" : 4,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 2,
  "content" : [ {
    "behaviors" : [ {
      "behavior" : {
        "type_hint" : "aeiou"
      },
      "modifiable" : false,
      "required" : false
    } ],
    "name" : "aeiou",
    "created_date" : 6,
    "id" : "aeiou",
    "updated_date" : 2,
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
    open class func getShippingTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceItemTemplateResource> {
        let path = "/store/shipping/templates"
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
     Update a shipping item
     
     - parameter id: (path) The id of the shipping item 
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter shippingItem: (body) The shipping item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateShippingItem(id: Int32, cascade: Bool? = nil, shippingItem: ShippingItem? = nil, completion: @escaping ((_ data: ShippingItem?,_ error: Error?) -> Void)) {
        updateShippingItemWithRequestBuilder(id: id, cascade: cascade, shippingItem: shippingItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a shipping item
     - PUT /store/shipping/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "max_tier_total" : 2,
  "skus" : [ {
    "sale_id" : 7,
    "original_price" : 0.29862033840641455,
    "description" : "aeiou",
    "stop_date" : 1,
    "published" : false,
    "inventory" : 3,
    "min_inventory_threshold" : 0,
    "currency_code" : "aeiou",
    "price" : 1.6965211015359005,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 7
  } ],
  "type_hint" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 3,
  "geo_policy_type" : "whitelist",
  "store_end" : 4,
  "taxable" : false,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "countries" : [ "aeiou" ],
  "long_description" : "aeiou",
  "sort" : 1,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 6,
  "store_start" : 6,
  "vendor_id" : 7,
  "name" : "aeiou",
  "created_date" : 0,
  "updated_date" : 4,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the shipping item 
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter shippingItem: (body) The shipping item object (optional)

     - returns: RequestBuilder<ShippingItem> 
     */
    open class func updateShippingItemWithRequestBuilder(id: Int32, cascade: Bool? = nil, shippingItem: ShippingItem? = nil) -> RequestBuilder<ShippingItem> {
        var path = "/store/shipping/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = shippingItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<ShippingItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a shipping template
     
     - parameter id: (path) The id of the template 
     - parameter shippingTemplateResource: (body) The shipping template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateShippingTemplate(id: String, shippingTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        updateShippingTemplateWithRequestBuilder(id: id, shippingTemplateResource: shippingTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a shipping template
     - PUT /store/shipping/templates/{id}
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
  "created_date" : 8,
  "id" : "aeiou",
  "updated_date" : 5,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter shippingTemplateResource: (body) The shipping template resource object (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func updateShippingTemplateWithRequestBuilder(id: String, shippingTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        var path = "/store/shipping/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = shippingTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}