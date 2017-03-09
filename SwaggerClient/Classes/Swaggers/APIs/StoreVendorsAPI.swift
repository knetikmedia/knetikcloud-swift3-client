//
// StoreVendorsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreVendorsAPI: APIBase {
    /**
     Create a vendor
     
     - parameter vendor: (body) The vendor (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createVendor(vendor: VendorResource? = nil, completion: @escaping ((_ data: VendorResource?,_ error: Error?) -> Void)) {
        createVendorWithRequestBuilder(vendor: vendor).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a vendor
     - POST /vendors
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "primary_contact_email" : "aeiou",
  "image_url" : "aeiou",
  "active" : false,
  "description" : "aeiou",
  "primary_contact_name" : "aeiou",
  "primary_contact_phone" : "aeiou",
  "update_date" : 2,
  "url" : "aeiou",
  "support_email" : "aeiou",
  "name" : "aeiou",
  "sales_email" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 6,
  "create_date" : 0,
  "manual_approval" : false
}}]
     
     - parameter vendor: (body) The vendor (optional)

     - returns: RequestBuilder<VendorResource> 
     */
    open class func createVendorWithRequestBuilder(vendor: VendorResource? = nil) -> RequestBuilder<VendorResource> {
        let path = "/vendors"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = vendor?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<VendorResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a vendor template
     
     - parameter vendorTemplateResource: (body) The new vendor template (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createVendorTemplate(vendorTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        createVendorTemplateWithRequestBuilder(vendorTemplateResource: vendorTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a vendor template
     - POST /vendors/templates
     - Vendor Templates define a type of vendor and the properties they have.
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
  "created_date" : 3,
  "id" : "aeiou",
  "updated_date" : 0,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter vendorTemplateResource: (body) The new vendor template (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func createVendorTemplateWithRequestBuilder(vendorTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        let path = "/vendors/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = vendorTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a vendor
     
     - parameter id: (path) The id of the vendor 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteVendor(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteVendorWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a vendor
     - DELETE /vendors/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the vendor 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteVendorWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/vendors/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a vendor template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteVendorTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteVendorTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a vendor template
     - DELETE /vendors/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteVendorTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/vendors/templates/{id}"
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
     Get a single vendor
     
     - parameter id: (path) The id of the vendor 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVendor(id: Int32, completion: @escaping ((_ data: VendorResource?,_ error: Error?) -> Void)) {
        getVendorWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single vendor
     - GET /vendors/{id}
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "primary_contact_email" : "aeiou",
  "image_url" : "aeiou",
  "active" : false,
  "description" : "aeiou",
  "primary_contact_name" : "aeiou",
  "primary_contact_phone" : "aeiou",
  "update_date" : 3,
  "url" : "aeiou",
  "support_email" : "aeiou",
  "name" : "aeiou",
  "sales_email" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 2,
  "create_date" : 6,
  "manual_approval" : false
}}]
     
     - parameter id: (path) The id of the vendor 

     - returns: RequestBuilder<VendorResource> 
     */
    open class func getVendorWithRequestBuilder(id: Int32) -> RequestBuilder<VendorResource> {
        var path = "/vendors/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<VendorResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single vendor template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVendorTemplate(id: String, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        getVendorTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single vendor template
     - GET /vendors/templates/{id}
     - Vendor Templates define a type of vendor and the properties they have.
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
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func getVendorTemplateWithRequestBuilder(id: String) -> RequestBuilder<ItemTemplateResource> {
        var path = "/vendors/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search vendor templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVendorTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceItemTemplateResource?,_ error: Error?) -> Void)) {
        getVendorTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search vendor templates
     - GET /vendors/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 5,
  "last" : true,
  "size" : 7,
  "total_elements" : 3,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 0,
  "number_of_elements" : 9,
  "content" : [ {
    "behaviors" : [ {
      "behavior" : {
        "type_hint" : "aeiou"
      },
      "modifiable" : false,
      "required" : false
    } ],
    "name" : "aeiou",
    "created_date" : 0,
    "id" : "aeiou",
    "updated_date" : 7,
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
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)

     - returns: RequestBuilder<PageResourceItemTemplateResource> 
     */
    open class func getVendorTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceItemTemplateResource> {
        let path = "/vendors/templates"
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
     List and search vendors
     
     - parameter filterName: (query) Filters vendors by name starting with the text provided in the filter (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVendors(filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceVendorResource?,_ error: Error?) -> Void)) {
        getVendorsWithRequestBuilder(filterName: filterName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search vendors
     - GET /vendors
     - examples: [{contentType=application/json, example={
  "number" : 7,
  "last" : true,
  "size" : 7,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 6,
  "number_of_elements" : 0,
  "content" : [ {
    "template" : "aeiou",
    "primary_contact_email" : "aeiou",
    "image_url" : "aeiou",
    "active" : false,
    "description" : "aeiou",
    "primary_contact_name" : "aeiou",
    "primary_contact_phone" : "aeiou",
    "update_date" : 9,
    "url" : "aeiou",
    "support_email" : "aeiou",
    "name" : "aeiou",
    "sales_email" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "id" : 4,
    "create_date" : 0,
    "manual_approval" : false
  } ],
  "first" : true
}}]
     
     - parameter filterName: (query) Filters vendors by name starting with the text provided in the filter (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceVendorResource> 
     */
    open class func getVendorsWithRequestBuilder(filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceVendorResource> {
        let path = "/vendors"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_name": filterName, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceVendorResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a vendor
     
     - parameter id: (path) The id of the vendor 
     - parameter vendor: (body) The vendor (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateVendor(id: Int32, vendor: VendorResource? = nil, completion: @escaping ((_ data: VendorResource?,_ error: Error?) -> Void)) {
        updateVendorWithRequestBuilder(id: id, vendor: vendor).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a vendor
     - PUT /vendors/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "primary_contact_email" : "aeiou",
  "image_url" : "aeiou",
  "active" : false,
  "description" : "aeiou",
  "primary_contact_name" : "aeiou",
  "primary_contact_phone" : "aeiou",
  "update_date" : 7,
  "url" : "aeiou",
  "support_email" : "aeiou",
  "name" : "aeiou",
  "sales_email" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 7,
  "create_date" : 8,
  "manual_approval" : false
}}]
     
     - parameter id: (path) The id of the vendor 
     - parameter vendor: (body) The vendor (optional)

     - returns: RequestBuilder<VendorResource> 
     */
    open class func updateVendorWithRequestBuilder(id: Int32, vendor: VendorResource? = nil) -> RequestBuilder<VendorResource> {
        var path = "/vendors/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = vendor?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<VendorResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a vendor template
     
     - parameter id: (path) The id of the template 
     - parameter vendorTemplateResource: (body) The vendor template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateVendorTemplate(id: String, vendorTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        updateVendorTemplateWithRequestBuilder(id: id, vendorTemplateResource: vendorTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a vendor template
     - PUT /vendors/templates/{id}
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
     - parameter vendorTemplateResource: (body) The vendor template resource object (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func updateVendorTemplateWithRequestBuilder(id: String, vendorTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        var path = "/vendors/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = vendorTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
