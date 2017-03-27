//
// FulfillmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class FulfillmentAPI: APIBase {
    /**
     Create a fulfillment type
     
     - parameter type: (body) The fulfillment type (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createFulfillmentType(type: FulfillmentType? = nil, completion: @escaping ((_ data: FulfillmentType?,_ error: Error?) -> Void)) {
        createFulfillmentTypeWithRequestBuilder(type: type).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a fulfillment type
     - POST /store/fulfillment/types
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "core" : false,
  "name" : "aeiou",
  "description" : "aeiou",
  "id" : 2
}}]
     
     - parameter type: (body) The fulfillment type (optional)

     - returns: RequestBuilder<FulfillmentType> 
     */
    open class func createFulfillmentTypeWithRequestBuilder(type: FulfillmentType? = nil) -> RequestBuilder<FulfillmentType> {
        let path = "/store/fulfillment/types"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = type?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<FulfillmentType>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a fulfillment type
     
     - parameter id: (path) The id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFulfillmentType(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteFulfillmentTypeWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a fulfillment type
     - DELETE /store/fulfillment/types/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteFulfillmentTypeWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/store/fulfillment/types/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single fulfillment type
     
     - parameter id: (path) The id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFulfillmentType(id: Int32, completion: @escaping ((_ data: FulfillmentType?,_ error: Error?) -> Void)) {
        getFulfillmentTypeWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single fulfillment type
     - GET /store/fulfillment/types/{id}
     - examples: [{contentType=application/json, example={
  "core" : false,
  "name" : "aeiou",
  "description" : "aeiou",
  "id" : 0
}}]
     
     - parameter id: (path) The id 

     - returns: RequestBuilder<FulfillmentType> 
     */
    open class func getFulfillmentTypeWithRequestBuilder(id: Int32) -> RequestBuilder<FulfillmentType> {
        var path = "/store/fulfillment/types/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<FulfillmentType>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search fulfillment types
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFulfillmentTypes(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceFulfillmentType?,_ error: Error?) -> Void)) {
        getFulfillmentTypesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search fulfillment types
     - GET /store/fulfillment/types
     - examples: [{contentType=application/json, example={
  "number" : 7,
  "last" : true,
  "size" : 8,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 8,
  "number_of_elements" : 8,
  "content" : [ {
    "core" : false,
    "name" : "aeiou",
    "description" : "aeiou",
    "id" : 1
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceFulfillmentType> 
     */
    open class func getFulfillmentTypesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceFulfillmentType> {
        let path = "/store/fulfillment/types"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceFulfillmentType>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a fulfillment type
     
     - parameter id: (path) The id 
     - parameter fulfillmentType: (body) The fulfillment type (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateFulfillmentType(id: Int32, fulfillmentType: FulfillmentType? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateFulfillmentTypeWithRequestBuilder(id: id, fulfillmentType: fulfillmentType).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a fulfillment type
     - PUT /store/fulfillment/types/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id 
     - parameter fulfillmentType: (body) The fulfillment type (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateFulfillmentTypeWithRequestBuilder(id: Int32, fulfillmentType: FulfillmentType? = nil) -> RequestBuilder<Void> {
        var path = "/store/fulfillment/types/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = fulfillmentType?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
