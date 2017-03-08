//
// StoreBundlesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreBundlesAPI: APIBase {
    /**
     Create a bundle item
     
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter bundleItem: (body) The bundle item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBundleItem(cascade: Bool? = nil, bundleItem: BundleItem? = nil, completion: @escaping ((_ data: BundleItem?,_ error: Error?) -> Void)) {
        createBundleItemWithRequestBuilder(cascade: cascade, bundleItem: bundleItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a bundle item
     - POST /store/bundles
     - The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "geo_policy_type" : "whitelist",
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "skus" : [ {
    "sale_id" : 5,
    "original_price" : 2.005926400317363,
    "description" : "aeiou",
    "stop_date" : 1,
    "published" : false,
    "inventory" : 2,
    "min_inventory_threshold" : 4,
    "currency_code" : "aeiou",
    "price" : 2.4806719653484666,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 3
  } ],
  "store_end" : 1,
  "type_hint" : "aeiou",
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "bundled_skus" : [ {
    "quantity" : 0,
    "price_override" : 8.883822833274257,
    "sku" : "aeiou"
  } ],
  "long_description" : "aeiou",
  "sort" : 5,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 7,
  "store_start" : 7,
  "vendor_id" : 3,
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 8,
  "id" : 7,
  "updated_date" : 8,
  "category" : "aeiou"
}}]
     
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter bundleItem: (body) The bundle item object (optional)

     - returns: RequestBuilder<BundleItem> 
     */
    open class func createBundleItemWithRequestBuilder(cascade: Bool? = nil, bundleItem: BundleItem? = nil) -> RequestBuilder<BundleItem> {
        let path = "/store/bundles"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = bundleItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<BundleItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a bundle template
     
     - parameter bundleTemplateResource: (body) The new bundle template (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBundleTemplate(bundleTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        createBundleTemplateWithRequestBuilder(bundleTemplateResource: bundleTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a bundle template
     - POST /store/bundles/templates
     - Bundle Templates define a type of bundle and the properties they have.
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
  "created_date" : 2,
  "id" : "aeiou",
  "updated_date" : 6,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter bundleTemplateResource: (body) The new bundle template (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func createBundleTemplateWithRequestBuilder(bundleTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        let path = "/store/bundles/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = bundleTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a bundle item
     
     - parameter id: (path) The id of the bundle 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBundleItem(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteBundleItemWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a bundle item
     - DELETE /store/bundles/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the bundle 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteBundleItemWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/store/bundles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a bundle template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBundleTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteBundleTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a bundle template
     - DELETE /store/bundles/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteBundleTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/store/bundles/templates/{id}"
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
     Get a single bundle item
     
     - parameter id: (path) The id of the bundle 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBundleItem(id: Int32, completion: @escaping ((_ data: BundleItem?,_ error: Error?) -> Void)) {
        getBundleItemWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single bundle item
     - GET /store/bundles/{id}
     - examples: [{contentType=application/json, example={
  "geo_policy_type" : "whitelist",
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "skus" : [ {
    "sale_id" : 5,
    "original_price" : 9.13522645171256,
    "description" : "aeiou",
    "stop_date" : 2,
    "published" : false,
    "inventory" : 3,
    "min_inventory_threshold" : 7,
    "currency_code" : "aeiou",
    "price" : 2.1157601760609444,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 1
  } ],
  "store_end" : 6,
  "type_hint" : "aeiou",
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "bundled_skus" : [ {
    "quantity" : 1,
    "price_override" : 8.886868977142145,
    "sku" : "aeiou"
  } ],
  "long_description" : "aeiou",
  "sort" : 5,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 7,
  "store_start" : 1,
  "vendor_id" : 9,
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 9,
  "id" : 3,
  "updated_date" : 9,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the bundle 

     - returns: RequestBuilder<BundleItem> 
     */
    open class func getBundleItemWithRequestBuilder(id: Int32) -> RequestBuilder<BundleItem> {
        var path = "/store/bundles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BundleItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single bundle template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBundleTemplate(id: String, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        getBundleTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single bundle template
     - GET /store/bundles/templates/{id}
     - Bundle Templates define a type of bundle and the properties they have.
     - examples: [{contentType=application/json, example={
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
  "updated_date" : 0,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func getBundleTemplateWithRequestBuilder(id: String) -> RequestBuilder<ItemTemplateResource> {
        var path = "/store/bundles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search bundle templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBundleTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceItemTemplateResource?,_ error: Error?) -> Void)) {
        getBundleTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search bundle templates
     - GET /store/bundles/templates
     - examples: [{contentType=application/json, example={
  "number" : 4,
  "last" : true,
  "size" : 6,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 6,
  "content" : [ {
    "behaviors" : [ {
      "behavior" : {
        "type_hint" : "aeiou"
      },
      "modifiable" : false,
      "required" : false
    } ],
    "name" : "aeiou",
    "created_date" : 3,
    "id" : "aeiou",
    "updated_date" : 4,
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
    open class func getBundleTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceItemTemplateResource> {
        let path = "/store/bundles/templates"
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
     Update a bundle item
     
     - parameter id: (path) The id of the bundle 
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter bundleItem: (body) The bundle item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBundleItem(id: Int32, cascade: Bool? = nil, bundleItem: BundleItem? = nil, completion: @escaping ((_ data: BundleItem?,_ error: Error?) -> Void)) {
        updateBundleItemWithRequestBuilder(id: id, cascade: cascade, bundleItem: bundleItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a bundle item
     - PUT /store/bundles/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "geo_policy_type" : "whitelist",
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "skus" : [ {
    "sale_id" : 4,
    "original_price" : 6.611215246038008,
    "description" : "aeiou",
    "stop_date" : 9,
    "published" : false,
    "inventory" : 4,
    "min_inventory_threshold" : 9,
    "currency_code" : "aeiou",
    "price" : 7.169010399212467,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 6
  } ],
  "store_end" : 8,
  "type_hint" : "aeiou",
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "bundled_skus" : [ {
    "quantity" : 1,
    "price_override" : 5.515888934803698,
    "sku" : "aeiou"
  } ],
  "long_description" : "aeiou",
  "sort" : 0,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 2,
  "store_start" : 2,
  "vendor_id" : 9,
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 9,
  "id" : 6,
  "updated_date" : 5,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the bundle 
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter bundleItem: (body) The bundle item object (optional)

     - returns: RequestBuilder<BundleItem> 
     */
    open class func updateBundleItemWithRequestBuilder(id: Int32, cascade: Bool? = nil, bundleItem: BundleItem? = nil) -> RequestBuilder<BundleItem> {
        var path = "/store/bundles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = bundleItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<BundleItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a bundle template
     
     - parameter id: (path) The id of the template 
     - parameter bundleTemplateResource: (body) The bundle template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBundleTemplate(id: String, bundleTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        updateBundleTemplateWithRequestBuilder(id: id, bundleTemplateResource: bundleTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a bundle template
     - PUT /store/bundles/templates/{id}
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
  "updated_date" : 6,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter bundleTemplateResource: (body) The bundle template resource object (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func updateBundleTemplateWithRequestBuilder(id: String, bundleTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        var path = "/store/bundles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = bundleTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
