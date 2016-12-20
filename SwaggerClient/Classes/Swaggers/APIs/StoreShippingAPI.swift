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
     
     - parameter shippingItem: (body) The shipping item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createShippingItemUsingPOST(shippingItem: ShippingItem? = nil, completion: @escaping ((_ data: ShippingItem?,_ error: Error?) -> Void)) {
        createShippingItemUsingPOSTWithRequestBuilder(shippingItem: shippingItem).execute { (response, error) -> Void in
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
  "max_tier_total" : 123,
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
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 123,
  "geo_policy_type" : "aeiou",
  "store_end" : 123456789,
  "taxable" : false,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "countries" : [ "aeiou" ],
  "long_description" : "aeiou",
  "sort" : 123,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 123,
  "store_start" : 123456789,
  "vendor_id" : 123,
  "name" : "aeiou",
  "created_date" : 123456789,
  "updated_date" : 123456789,
  "category" : "aeiou"
}}]
     
     - parameter shippingItem: (body) The shipping item object (optional)

     - returns: RequestBuilder<ShippingItem> 
     */
    open class func createShippingItemUsingPOSTWithRequestBuilder(shippingItem: ShippingItem? = nil) -> RequestBuilder<ShippingItem> {
        let path = "/store/shipping"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = shippingItem?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ShippingItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a shipping template
     
     - parameter shippingTemplateResource: (body) The new shipping template (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createShippingTemplateUsingPOST(shippingTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        createShippingTemplateUsingPOSTWithRequestBuilder(shippingTemplateResource: shippingTemplateResource).execute { (response, error) -> Void in
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
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter shippingTemplateResource: (body) The new shipping template (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func createShippingTemplateUsingPOSTWithRequestBuilder(shippingTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        let path = "/store/shipping/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = shippingTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a shipping item
     
     - parameter id: (path) The id of the shipping item 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteShippingItemUsingDELETE(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteShippingItemUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
    open class func deleteShippingItemUsingDELETEWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/store/shipping/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a shipping template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteShippingTemplateUsingDELETE(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteShippingTemplateUsingDELETEWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
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
    open class func deleteShippingTemplateUsingDELETEWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/store/shipping/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "cascade": cascade
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single shipping item
     
     - parameter id: (path) The id of the shipping item 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippingItemUsingGET(id: Int32, completion: @escaping ((_ data: ShippingItem?,_ error: Error?) -> Void)) {
        getShippingItemUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
  "max_tier_total" : 123,
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
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 123,
  "geo_policy_type" : "aeiou",
  "store_end" : 123456789,
  "taxable" : false,
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "countries" : [ "aeiou" ],
  "long_description" : "aeiou",
  "sort" : 123,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 123,
  "store_start" : 123456789,
  "vendor_id" : 123,
  "name" : "aeiou",
  "created_date" : 123456789,
  "updated_date" : 123456789,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the shipping item 

     - returns: RequestBuilder<ShippingItem> 
     */
    open class func getShippingItemUsingGETWithRequestBuilder(id: Int32) -> RequestBuilder<ShippingItem> {
        var path = "/store/shipping/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ShippingItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single shipping template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippingTemplateUsingGET(id: String, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        getShippingTemplateUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
    open class func getShippingTemplateUsingGETWithRequestBuilder(id: String) -> RequestBuilder<ItemTemplateResource> {
        var path = "/store/shipping/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search shipping templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShippingTemplatesUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageItemTemplateResource?,_ error: Error?) -> Void)) {
        getShippingTemplatesUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
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
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : { },
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

     - returns: RequestBuilder<PageItemTemplateResource> 
     */
    open class func getShippingTemplatesUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageItemTemplateResource> {
        let path = "/store/shipping/templates"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a shipping item
     
     - parameter id: (path) The id of the shipping item 
     - parameter shippingItem: (body) The shipping item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateShippingItemUsingPUT(id: Int32, shippingItem: ShippingItem? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateShippingItemUsingPUTWithRequestBuilder(id: id, shippingItem: shippingItem).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a shipping item
     - PUT /store/shipping/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the shipping item 
     - parameter shippingItem: (body) The shipping item object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateShippingItemUsingPUTWithRequestBuilder(id: Int32, shippingItem: ShippingItem? = nil) -> RequestBuilder<Void> {
        var path = "/store/shipping/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = shippingItem?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a shipping template
     
     - parameter id: (path) The id of the template 
     - parameter shippingTemplateResource: (body) The shipping template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateShippingTemplateUsingPUT(id: String, shippingTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateShippingTemplateUsingPUTWithRequestBuilder(id: id, shippingTemplateResource: shippingTemplateResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a shipping template
     - PUT /store/shipping/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter shippingTemplateResource: (body) The shipping template resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateShippingTemplateUsingPUTWithRequestBuilder(id: String, shippingTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<Void> {
        var path = "/store/shipping/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = shippingTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
