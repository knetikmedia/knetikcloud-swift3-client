//
// SearchAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class SearchAPI: APIBase {
    /**
     Add a new object to an index
     
     - parameter type: (path) The index type 
     - parameter id: (path) The ID of the object 
     - parameter object: (body) The object to add (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addSearchIndex(type: String, id: String, object: Any? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addSearchIndexWithRequestBuilder(type: type, id: id, object: object).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add a new object to an index
     - POST /search/index/{type}/{id}
     - Mainly intended for internal use.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter type: (path) The index type 
     - parameter id: (path) The ID of the object 
     - parameter object: (body) The object to add (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addSearchIndexWithRequestBuilder(type: String, id: String, object: Any? = nil) -> RequestBuilder<Void> {
        var path = "/search/index/{type}/{id}"
        path = path.replacingOccurrences(of: "{type}", with: "\(type)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = object?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Register reference mappings
     
     - parameter mappings: (body) The mappings to add (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addSearchMappings(mappings: [SearchReferenceMapping]? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addSearchMappingsWithRequestBuilder(mappings: mappings).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Register reference mappings
     - POST /search/mappings
     - Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter mappings: (body) The mappings to add (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addSearchMappingsWithRequestBuilder(mappings: [SearchReferenceMapping]? = nil) -> RequestBuilder<Void> {
        let path = "/search/mappings"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = mappings?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an object
     
     - parameter type: (path) The index type 
     - parameter id: (path) The ID of the object to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSearchIndex(type: String, id: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteSearchIndexWithRequestBuilder(type: type, id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an object
     - DELETE /search/index/{type}/{id}
     - Mainly intended for internal use. Requires SEARCH_ADMIN.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter type: (path) The index type 
     - parameter id: (path) The ID of the object to delete 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteSearchIndexWithRequestBuilder(type: String, id: String) -> RequestBuilder<Void> {
        var path = "/search/index/{type}/{id}"
        path = path.replacingOccurrences(of: "{type}", with: "\(type)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all objects in an index
     
     - parameter type: (path) The index type 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSearchIndexes(type: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteSearchIndexesWithRequestBuilder(type: type).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete all objects in an index
     - DELETE /search/index/{type}
     - Mainly intended for internal use
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter type: (path) The index type 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteSearchIndexesWithRequestBuilder(type: String) -> RequestBuilder<Void> {
        var path = "/search/index/{type}"
        path = path.replacingOccurrences(of: "{type}", with: "\(type)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search an index
     
     - parameter type: (path) The index type 
     - parameter query: (body) The query to be used for the search (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchIndex(type: String, query: Any? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceMapstringobject?,_ error: Error?) -> Void)) {
        searchIndexWithRequestBuilder(type: type, query: query, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Search an index
     - POST /search/index/{type}
     - The body is an ElasticSearch query in JSON format. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html'>documentation</a> for details on the format and search options. The searchable object's format depends on on the type. See individual search endpoints on other resources for details on their format.
     - examples: [{contentType=application/json, example={
  "number" : 6,
  "last" : true,
  "size" : 5,
  "total_elements" : 5,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 1,
  "content" : [ { } ],
  "first" : true
}}]
     
     - parameter type: (path) The index type 
     - parameter query: (body) The query to be used for the search (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceMapstringobject> 
     */
    open class func searchIndexWithRequestBuilder(type: String, query: Any? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceMapstringobject> {
        var path = "/search/index/{type}"
        path = path.replacingOccurrences(of: "{type}", with: "\(type)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = query?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceMapstringobject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
