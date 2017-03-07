//
// BRERuleEngineGlobalsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class BRERuleEngineGlobalsAPI: APIBase {
    /**
     Create a global definition
     
     - parameter breGlobalResource: (body) The BRE global resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBREGlobal(breGlobalResource: BreGlobalResource? = nil, completion: @escaping ((_ data: BreGlobalResource?,_ error: Error?) -> Void)) {
        createBREGlobalWithRequestBuilder(breGlobalResource: breGlobalResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a global definition
     - POST /bre/globals/definitions
     - Once created you can then use in a custom rule. Note that global definitions cannot be modified or deleted if in use.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "description" : "aeiou",
  "id" : "aeiou",
  "scopes" : [ {
    "name" : "aeiou",
    "type" : "aeiou"
  } ],
  "system_global" : false,
  "type" : "aeiou",
  "key" : "aeiou"
}}]
     
     - parameter breGlobalResource: (body) The BRE global resource object (optional)

     - returns: RequestBuilder<BreGlobalResource> 
     */
    open class func createBREGlobalWithRequestBuilder(breGlobalResource: BreGlobalResource? = nil) -> RequestBuilder<BreGlobalResource> {
        let path = "/bre/globals/definitions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = breGlobalResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreGlobalResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a global
     
     - parameter id: (path) The id of the global definition 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBREGlobal(id: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteBREGlobalWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a global
     - DELETE /bre/globals/definitions/{id}
     - May fail if there are existing rules against it. Cannot delete core globals
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the global definition 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteBREGlobalWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var path = "/bre/globals/definitions/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single global definition
     
     - parameter id: (path) The id of the global definition 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREGlobal(id: String, completion: @escaping ((_ data: BreGlobalResource?,_ error: Error?) -> Void)) {
        getBREGlobalWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single global definition
     - GET /bre/globals/definitions/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "description" : "aeiou",
  "id" : "aeiou",
  "scopes" : [ {
    "name" : "aeiou",
    "type" : "aeiou"
  } ],
  "system_global" : false,
  "type" : "aeiou",
  "key" : "aeiou"
}}]
     
     - parameter id: (path) The id of the global definition 

     - returns: RequestBuilder<BreGlobalResource> 
     */
    open class func getBREGlobalWithRequestBuilder(id: String) -> RequestBuilder<BreGlobalResource> {
        var path = "/bre/globals/definitions/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreGlobalResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List global definitions
     
     - parameter filterSystem: (query) Filter for globals that are system globals when true, or not when false. Leave off for both mixed (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREGlobals(filterSystem: Bool? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceBreGlobalResource?,_ error: Error?) -> Void)) {
        getBREGlobalsWithRequestBuilder(filterSystem: filterSystem, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List global definitions
     - GET /bre/globals/definitions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 5,
  "last" : true,
  "size" : 2,
  "total_elements" : 3,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 4,
  "content" : [ {
    "name" : "aeiou",
    "description" : "aeiou",
    "id" : "aeiou",
    "scopes" : [ {
      "name" : "aeiou",
      "type" : "aeiou"
    } ],
    "system_global" : false,
    "type" : "aeiou",
    "key" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterSystem: (query) Filter for globals that are system globals when true, or not when false. Leave off for both mixed (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceBreGlobalResource> 
     */
    open class func getBREGlobalsWithRequestBuilder(filterSystem: Bool? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceBreGlobalResource> {
        let path = "/bre/globals/definitions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_system": filterSystem, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceBreGlobalResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a global definition
     
     - parameter id: (path) The id of the global definition 
     - parameter breGlobalResource: (body) The BRE global resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBREGlobal(id: String, breGlobalResource: BreGlobalResource? = nil, completion: @escaping ((_ data: BreGlobalResource?,_ error: Error?) -> Void)) {
        updateBREGlobalWithRequestBuilder(id: id, breGlobalResource: breGlobalResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a global definition
     - PUT /bre/globals/definitions/{id}
     - May fail if new parameters mismatch requirements of existing rules. Cannot update core globals
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "description" : "aeiou",
  "id" : "aeiou",
  "scopes" : [ {
    "name" : "aeiou",
    "type" : "aeiou"
  } ],
  "system_global" : false,
  "type" : "aeiou",
  "key" : "aeiou"
}}]
     
     - parameter id: (path) The id of the global definition 
     - parameter breGlobalResource: (body) The BRE global resource object (optional)

     - returns: RequestBuilder<BreGlobalResource> 
     */
    open class func updateBREGlobalWithRequestBuilder(id: String, breGlobalResource: BreGlobalResource? = nil) -> RequestBuilder<BreGlobalResource> {
        var path = "/bre/globals/definitions/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = breGlobalResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreGlobalResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
