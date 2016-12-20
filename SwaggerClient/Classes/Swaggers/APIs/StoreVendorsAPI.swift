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
    open class func createVendorUsingPOST(vendor: VendorResource? = nil, completion: @escaping ((_ data: VendorResource?,_ error: Error?) -> Void)) {
        createVendorUsingPOSTWithRequestBuilder(vendor: vendor).execute { (response, error) -> Void in
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
  "primary_contact_email" : "aeiou",
  "image_url" : "aeiou",
  "active" : false,
  "description" : "aeiou",
  "primary_contact_name" : "aeiou",
  "primary_contact_phone" : "aeiou",
  "update_date" : 123456789,
  "url" : "aeiou",
  "support_email" : "aeiou",
  "name" : "aeiou",
  "sales_email" : "aeiou",
  "id" : 123,
  "create_date" : 123456789,
  "manual_approval" : false
}}]
     
     - parameter vendor: (body) The vendor (optional)

     - returns: RequestBuilder<VendorResource> 
     */
    open class func createVendorUsingPOSTWithRequestBuilder(vendor: VendorResource? = nil) -> RequestBuilder<VendorResource> {
        let path = "/vendors"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = vendor?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<VendorResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a vendor
     
     - parameter id: (path) The id of the vendor 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteVendorUsingDELETE(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteVendorUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
    open class func deleteVendorUsingDELETEWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/vendors/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single vendor
     
     - parameter id: (path) The id of the vendor 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVendorUsingGET(id: Int32, completion: @escaping ((_ data: VendorResource?,_ error: Error?) -> Void)) {
        getVendorUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single vendor
     - GET /vendors/{id}
     - examples: [{contentType=application/json, example={
  "primary_contact_email" : "aeiou",
  "image_url" : "aeiou",
  "active" : false,
  "description" : "aeiou",
  "primary_contact_name" : "aeiou",
  "primary_contact_phone" : "aeiou",
  "update_date" : 123456789,
  "url" : "aeiou",
  "support_email" : "aeiou",
  "name" : "aeiou",
  "sales_email" : "aeiou",
  "id" : 123,
  "create_date" : 123456789,
  "manual_approval" : false
}}]
     
     - parameter id: (path) The id of the vendor 

     - returns: RequestBuilder<VendorResource> 
     */
    open class func getVendorUsingGETWithRequestBuilder(id: Int32) -> RequestBuilder<VendorResource> {
        var path = "/vendors/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<VendorResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search vendors
     
     - parameter filterName: (query) Filters vendors by name starting with the text provided in the filter (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVendorsUsingGET(filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceVendorResource?,_ error: Error?) -> Void)) {
        getVendorsUsingGETWithRequestBuilder(filterName: filterName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search vendors
     - GET /vendors
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
    "primary_contact_email" : "aeiou",
    "image_url" : "aeiou",
    "active" : false,
    "description" : "aeiou",
    "primary_contact_name" : "aeiou",
    "primary_contact_phone" : "aeiou",
    "update_date" : 123456789,
    "url" : "aeiou",
    "support_email" : "aeiou",
    "name" : "aeiou",
    "sales_email" : "aeiou",
    "id" : 123,
    "create_date" : 123456789,
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
    open class func getVendorsUsingGETWithRequestBuilder(filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceVendorResource> {
        let path = "/vendors"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_name": filterName,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceVendorResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a vendor
     
     - parameter id: (path) The id of the vendor 
     - parameter vendor: (body) The vendor (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateVendorUsingPUT(id: Int32, vendor: VendorResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateVendorUsingPUTWithRequestBuilder(id: id, vendor: vendor).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a vendor
     - PUT /vendors/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the vendor 
     - parameter vendor: (body) The vendor (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateVendorUsingPUTWithRequestBuilder(id: Int32, vendor: VendorResource? = nil) -> RequestBuilder<Void> {
        var path = "/vendors/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = vendor?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}