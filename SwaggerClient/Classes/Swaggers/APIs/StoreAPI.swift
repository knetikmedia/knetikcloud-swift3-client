//
// StoreAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreAPI: APIBase {
    /**
     Create an item template
     
     - parameter itemTemplateResource: (body) The new item template (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createItemTemplate(itemTemplateResource: StoreItemTemplateResource? = nil, completion: @escaping ((_ data: StoreItemTemplateResource?,_ error: Error?) -> Void)) {
        createItemTemplateWithRequestBuilder(itemTemplateResource: itemTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create an item template
     - POST /store/items/templates
     - Item Templates define a type of item and the properties they have.
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
  "sku_template" : {
    "name" : "aeiou",
    "created_date" : 6,
    "id" : "aeiou",
    "updated_date" : 2,
    "properties" : [ "" ]
  },
  "created_date" : 2,
  "id" : "aeiou",
  "updated_date" : 7,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter itemTemplateResource: (body) The new item template (optional)

     - returns: RequestBuilder<StoreItemTemplateResource> 
     */
    open class func createItemTemplateWithRequestBuilder(itemTemplateResource: StoreItemTemplateResource? = nil) -> RequestBuilder<StoreItemTemplateResource> {
        let path = "/store/items/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = itemTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<StoreItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a store item
     
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter storeItem: (body) The store item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createStoreItem(cascade: Bool? = nil, storeItem: StoreItem? = nil, completion: @escaping ((_ data: StoreItem?,_ error: Error?) -> Void)) {
        createStoreItemWithRequestBuilder(cascade: cascade, storeItem: storeItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a store item
     - POST /store/items
     - SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \"parameters\" field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:<br /> {..., parameters: [[{item: 1, skus: [\"SKU-1\"]}]]}<br /> If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "geo_policy_type" : "whitelist",
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "skus" : [ {
    "sale_id" : 6,
    "original_price" : 4.158916090586508,
    "description" : "aeiou",
    "stop_date" : 3,
    "published" : false,
    "inventory" : 7,
    "min_inventory_threshold" : 4,
    "currency_code" : "aeiou",
    "price" : 4.9955499195758355,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 5
  } ],
  "store_end" : 5,
  "type_hint" : "aeiou",
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "long_description" : "aeiou",
  "sort" : 2,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 2,
  "store_start" : 9,
  "vendor_id" : 4,
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 9,
  "id" : 5,
  "updated_date" : 5,
  "category" : "aeiou"
}}]
     
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter storeItem: (body) The store item object (optional)

     - returns: RequestBuilder<StoreItem> 
     */
    open class func createStoreItemWithRequestBuilder(cascade: Bool? = nil, storeItem: StoreItem? = nil) -> RequestBuilder<StoreItem> {
        let path = "/store/items"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = storeItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<StoreItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an item template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteItemTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteItemTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an item template
     - DELETE /store/items/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteItemTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/store/items/templates/{id}"
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
     Delete a store item
     
     - parameter id: (path) The id of the item 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteStoreItem(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteStoreItemWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a store item
     - DELETE /store/items/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the item 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteStoreItemWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/store/items/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single item template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getItemTemplate(id: String, completion: @escaping ((_ data: StoreItemTemplateResource?,_ error: Error?) -> Void)) {
        getItemTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single item template
     - GET /store/items/templates/{id}
     - Item Templates define a type of item and the properties they have.
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
  "sku_template" : {
    "name" : "aeiou",
    "created_date" : 9,
    "id" : "aeiou",
    "updated_date" : 6,
    "properties" : [ "" ]
  },
  "created_date" : 6,
  "id" : "aeiou",
  "updated_date" : 5,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<StoreItemTemplateResource> 
     */
    open class func getItemTemplateWithRequestBuilder(id: String) -> RequestBuilder<StoreItemTemplateResource> {
        var path = "/store/items/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<StoreItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search item templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getItemTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceStoreItemTemplateResource?,_ error: Error?) -> Void)) {
        getItemTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search item templates
     - GET /store/items/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 6,
  "total_elements" : 1,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
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
    "sku_template" : {
      "name" : "aeiou",
      "created_date" : 1,
      "id" : "aeiou",
      "updated_date" : 2,
      "properties" : [ "" ]
    },
    "created_date" : 1,
    "id" : "aeiou",
    "updated_date" : 1,
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

     - returns: RequestBuilder<PageResourceStoreItemTemplateResource> 
     */
    open class func getItemTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceStoreItemTemplateResource> {
        let path = "/store/items/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceStoreItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a listing of store items
     
     - parameter limit: (query) The amount of items returned (optional)
     - parameter page: (query) The page of the request (optional)
     - parameter useCatalog: (query) Whether to remove items that are not intended for display or not in date (optional)
     - parameter ignoreLocation: (query) Whether to ignore country restrictions based on the caller&#39;s location (optional)
     - parameter inStockOnly: (query) Whether only in-stock items should be returned.  Default value is false (optional, default to false)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStore(limit: Int32? = nil, page: Int32? = nil, useCatalog: Bool? = nil, ignoreLocation: Bool? = nil, inStockOnly: Bool? = nil, completion: @escaping ((_ data: PageResourceStoreItem?,_ error: Error?) -> Void)) {
        getStoreWithRequestBuilder(limit: limit, page: page, useCatalog: useCatalog, ignoreLocation: ignoreLocation, inStockOnly: inStockOnly).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a listing of store items
     - GET /store
     - The exact structure of each items may differ to include fields specific to the type. The same is true for behaviors.
     - examples: [{contentType=application/json, example={
  "number" : 6,
  "last" : true,
  "size" : 4,
  "total_elements" : 5,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 8,
  "number_of_elements" : 9,
  "content" : [ {
    "geo_policy_type" : "whitelist",
    "template" : "aeiou",
    "short_description" : "aeiou",
    "geo_country_list" : [ "aeiou" ],
    "skus" : [ {
      "sale_id" : 2,
      "original_price" : 5.196238065876827,
      "description" : "aeiou",
      "stop_date" : 3,
      "published" : false,
      "inventory" : 5,
      "min_inventory_threshold" : 7,
      "currency_code" : "aeiou",
      "price" : 1.0629654481298811,
      "additional_properties" : {
        "key" : ""
      },
      "sale_name" : "aeiou",
      "sku" : "aeiou",
      "start_date" : 4
    } ],
    "store_end" : 2,
    "type_hint" : "aeiou",
    "behaviors" : [ {
      "type_hint" : "aeiou"
    } ],
    "unique_key" : "aeiou",
    "displayable" : false,
    "long_description" : "aeiou",
    "sort" : 6,
    "tags" : [ "aeiou" ],
    "shipping_tier" : 1,
    "store_start" : 9,
    "vendor_id" : 8,
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 0,
    "id" : 1,
    "updated_date" : 4,
    "category" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter limit: (query) The amount of items returned (optional)
     - parameter page: (query) The page of the request (optional)
     - parameter useCatalog: (query) Whether to remove items that are not intended for display or not in date (optional)
     - parameter ignoreLocation: (query) Whether to ignore country restrictions based on the caller&#39;s location (optional)
     - parameter inStockOnly: (query) Whether only in-stock items should be returned.  Default value is false (optional, default to false)

     - returns: RequestBuilder<PageResourceStoreItem> 
     */
    open class func getStoreWithRequestBuilder(limit: Int32? = nil, page: Int32? = nil, useCatalog: Bool? = nil, ignoreLocation: Bool? = nil, inStockOnly: Bool? = nil) -> RequestBuilder<PageResourceStoreItem> {
        let path = "/store"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "limit": limit?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "use_catalog": useCatalog, 
            "ignore_location": ignoreLocation, 
            "in_stock_only": inStockOnly
        ])
        

        let requestBuilder: RequestBuilder<PageResourceStoreItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single store item
     
     - parameter id: (path) The id of the item 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStoreItem(id: Int32, completion: @escaping ((_ data: StoreItem?,_ error: Error?) -> Void)) {
        getStoreItemWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single store item
     - GET /store/items/{id}
     - examples: [{contentType=application/json, example={
  "geo_policy_type" : "whitelist",
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "skus" : [ {
    "sale_id" : 9,
    "original_price" : 0.1668766987949466,
    "description" : "aeiou",
    "stop_date" : 6,
    "published" : false,
    "inventory" : 0,
    "min_inventory_threshold" : 1,
    "currency_code" : "aeiou",
    "price" : 7.607167394584158,
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
  "long_description" : "aeiou",
  "sort" : 1,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 5,
  "store_start" : 8,
  "vendor_id" : 1,
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 2,
  "id" : 2,
  "updated_date" : 7,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the item 

     - returns: RequestBuilder<StoreItem> 
     */
    open class func getStoreItemWithRequestBuilder(id: Int32) -> RequestBuilder<StoreItem> {
        var path = "/store/items/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<StoreItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search store items
     
     - parameter filterNameSearch: (query) Filter for items whose name starts with a given string. (optional)
     - parameter filterUniqueKey: (query) Filter for items whose unique_key is a given string. (optional)
     - parameter filterPublished: (query) Filter for skus that have been published. (optional)
     - parameter filterDisplayable: (query) Filter for items that are displayable. (optional)
     - parameter filterStart: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterEnd: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterStopDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterSku: (query) Filter for skus whose name starts with a given string. (optional)
     - parameter filterPrice: (query) A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterTag: (query) A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags. (optional)
     - parameter filterItemsByType: (query) Filter for item type based on its type hint. (optional)
     - parameter filterBundledSkus: (query) Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39; (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStoreItems(filterNameSearch: String? = nil, filterUniqueKey: String? = nil, filterPublished: Bool? = nil, filterDisplayable: Bool? = nil, filterStart: String? = nil, filterEnd: String? = nil, filterStartDate: String? = nil, filterStopDate: String? = nil, filterSku: String? = nil, filterPrice: String? = nil, filterTag: String? = nil, filterItemsByType: String? = nil, filterBundledSkus: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceStoreItem?,_ error: Error?) -> Void)) {
        getStoreItemsWithRequestBuilder(filterNameSearch: filterNameSearch, filterUniqueKey: filterUniqueKey, filterPublished: filterPublished, filterDisplayable: filterDisplayable, filterStart: filterStart, filterEnd: filterEnd, filterStartDate: filterStartDate, filterStopDate: filterStopDate, filterSku: filterSku, filterPrice: filterPrice, filterTag: filterTag, filterItemsByType: filterItemsByType, filterBundledSkus: filterBundledSkus, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search store items
     - GET /store/items
     - examples: [{contentType=application/json, example={
  "number" : 6,
  "last" : true,
  "size" : 2,
  "total_elements" : 9,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 6,
  "number_of_elements" : 1,
  "content" : [ {
    "geo_policy_type" : "whitelist",
    "template" : "aeiou",
    "short_description" : "aeiou",
    "geo_country_list" : [ "aeiou" ],
    "skus" : [ {
      "sale_id" : 1,
      "original_price" : 0.1855772235684061,
      "description" : "aeiou",
      "stop_date" : 8,
      "published" : false,
      "inventory" : 9,
      "min_inventory_threshold" : 3,
      "currency_code" : "aeiou",
      "price" : 3.073257031195248,
      "additional_properties" : {
        "key" : ""
      },
      "sale_name" : "aeiou",
      "sku" : "aeiou",
      "start_date" : 5
    } ],
    "store_end" : 1,
    "type_hint" : "aeiou",
    "behaviors" : [ {
      "type_hint" : "aeiou"
    } ],
    "unique_key" : "aeiou",
    "displayable" : false,
    "long_description" : "aeiou",
    "sort" : 4,
    "tags" : [ "aeiou" ],
    "shipping_tier" : 9,
    "store_start" : 7,
    "vendor_id" : 9,
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 6,
    "id" : 1,
    "updated_date" : 8,
    "category" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterNameSearch: (query) Filter for items whose name starts with a given string. (optional)
     - parameter filterUniqueKey: (query) Filter for items whose unique_key is a given string. (optional)
     - parameter filterPublished: (query) Filter for skus that have been published. (optional)
     - parameter filterDisplayable: (query) Filter for items that are displayable. (optional)
     - parameter filterStart: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterEnd: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterStopDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterSku: (query) Filter for skus whose name starts with a given string. (optional)
     - parameter filterPrice: (query) A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
     - parameter filterTag: (query) A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags. (optional)
     - parameter filterItemsByType: (query) Filter for item type based on its type hint. (optional)
     - parameter filterBundledSkus: (query) Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39; (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceStoreItem> 
     */
    open class func getStoreItemsWithRequestBuilder(filterNameSearch: String? = nil, filterUniqueKey: String? = nil, filterPublished: Bool? = nil, filterDisplayable: Bool? = nil, filterStart: String? = nil, filterEnd: String? = nil, filterStartDate: String? = nil, filterStopDate: String? = nil, filterSku: String? = nil, filterPrice: String? = nil, filterTag: String? = nil, filterItemsByType: String? = nil, filterBundledSkus: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceStoreItem> {
        let path = "/store/items"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_name_search": filterNameSearch, 
            "filter_unique_key": filterUniqueKey, 
            "filter_published": filterPublished, 
            "filter_displayable": filterDisplayable, 
            "filter_start": filterStart, 
            "filter_end": filterEnd, 
            "filter_start_date": filterStartDate, 
            "filter_stop_date": filterStopDate, 
            "filter_sku": filterSku, 
            "filter_price": filterPrice, 
            "filter_tag": filterTag, 
            "filter_items_by_type": filterItemsByType, 
            "filter_bundled_skus": filterBundledSkus, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceStoreItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an item template
     
     - parameter id: (path) The id of the template 
     - parameter itemTemplateResource: (body) The item template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateItemTemplate(id: String, itemTemplateResource: StoreItemTemplateResource? = nil, completion: @escaping ((_ data: StoreItemTemplateResource?,_ error: Error?) -> Void)) {
        updateItemTemplateWithRequestBuilder(id: id, itemTemplateResource: itemTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update an item template
     - PUT /store/items/templates/{id}
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
  "sku_template" : {
    "name" : "aeiou",
    "created_date" : 3,
    "id" : "aeiou",
    "updated_date" : 7,
    "properties" : [ "" ]
  },
  "created_date" : 4,
  "id" : "aeiou",
  "updated_date" : 5,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter itemTemplateResource: (body) The item template resource object (optional)

     - returns: RequestBuilder<StoreItemTemplateResource> 
     */
    open class func updateItemTemplateWithRequestBuilder(id: String, itemTemplateResource: StoreItemTemplateResource? = nil) -> RequestBuilder<StoreItemTemplateResource> {
        var path = "/store/items/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = itemTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<StoreItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a store item
     
     - parameter id: (path) The id of the item 
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter storeItem: (body) The store item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateStoreItem(id: Int32, cascade: Bool? = nil, storeItem: StoreItem? = nil, completion: @escaping ((_ data: StoreItem?,_ error: Error?) -> Void)) {
        updateStoreItemWithRequestBuilder(id: id, cascade: cascade, storeItem: storeItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a store item
     - PUT /store/items/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "geo_policy_type" : "whitelist",
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "skus" : [ {
    "sale_id" : 6,
    "original_price" : 2.932651098070871,
    "description" : "aeiou",
    "stop_date" : 4,
    "published" : false,
    "inventory" : 5,
    "min_inventory_threshold" : 7,
    "currency_code" : "aeiou",
    "price" : 5.138958902307914,
    "additional_properties" : {
      "key" : ""
    },
    "sale_name" : "aeiou",
    "sku" : "aeiou",
    "start_date" : 2
  } ],
  "store_end" : 9,
  "type_hint" : "aeiou",
  "behaviors" : [ {
    "type_hint" : "aeiou"
  } ],
  "unique_key" : "aeiou",
  "displayable" : false,
  "long_description" : "aeiou",
  "sort" : 5,
  "tags" : [ "aeiou" ],
  "shipping_tier" : 6,
  "store_start" : 4,
  "vendor_id" : 2,
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 9,
  "id" : 3,
  "updated_date" : 4,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the item 
     - parameter cascade: (query) Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
     - parameter storeItem: (body) The store item object (optional)

     - returns: RequestBuilder<StoreItem> 
     */
    open class func updateStoreItemWithRequestBuilder(id: Int32, cascade: Bool? = nil, storeItem: StoreItem? = nil) -> RequestBuilder<StoreItem> {
        var path = "/store/items/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = storeItem?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<StoreItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
