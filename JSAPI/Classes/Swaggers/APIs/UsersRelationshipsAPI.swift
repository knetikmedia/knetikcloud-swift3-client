//
// UsersRelationshipsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class UsersRelationshipsAPI: APIBase {
    /**
     Create a user relationship
     
     - parameter relationship: (body) The new relationship (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUserRelationship(relationship: UserRelationshipResource? = nil, completion: @escaping ((_ data: UserRelationshipResource?,_ error: Error?) -> Void)) {
        createUserRelationshipWithRequestBuilder(relationship: relationship).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a user relationship
     - POST /users/relationships
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "parent" : "",
  "context" : "aeiou",
  "id" : 7,
  "child" : {
    "avatar_url" : "aeiou",
    "id" : 0,
    "display_name" : "aeiou",
    "username" : "aeiou"
  }
}}]
     
     - parameter relationship: (body) The new relationship (optional)

     - returns: RequestBuilder<UserRelationshipResource> 
     */
    open class func createUserRelationshipWithRequestBuilder(relationship: UserRelationshipResource? = nil) -> RequestBuilder<UserRelationshipResource> {
        let path = "/users/relationships"
        let URLString = JSAPIAPI.basePath + path
        let parameters = relationship?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserRelationshipResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a user relationship
     
     - parameter id: (path) The id of the relationship 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUserRelationship(id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteUserRelationshipWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a user relationship
     - DELETE /users/relationships/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the relationship 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserRelationshipWithRequestBuilder(id: Int64) -> RequestBuilder<Void> {
        var path = "/users/relationships/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a user relationship
     
     - parameter id: (path) The id of the relationship 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserRelationship(id: Int64, completion: @escaping ((_ data: UserRelationshipResource?,_ error: Error?) -> Void)) {
        getUserRelationshipWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a user relationship
     - GET /users/relationships/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "parent" : "",
  "context" : "aeiou",
  "id" : 0,
  "child" : {
    "avatar_url" : "aeiou",
    "id" : 4,
    "display_name" : "aeiou",
    "username" : "aeiou"
  }
}}]
     
     - parameter id: (path) The id of the relationship 

     - returns: RequestBuilder<UserRelationshipResource> 
     */
    open class func getUserRelationshipWithRequestBuilder(id: Int64) -> RequestBuilder<UserRelationshipResource> {
        var path = "/users/relationships/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserRelationshipResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of user relationships
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserRelationships(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceUserRelationshipResource?,_ error: Error?) -> Void)) {
        getUserRelationshipsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of user relationships
     - GET /users/relationships
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 5,
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
    "parent" : "",
    "context" : "aeiou",
    "id" : 9,
    "child" : {
      "avatar_url" : "aeiou",
      "id" : 5,
      "display_name" : "aeiou",
      "username" : "aeiou"
    }
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)

     - returns: RequestBuilder<PageResourceUserRelationshipResource> 
     */
    open class func getUserRelationshipsWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceUserRelationshipResource> {
        let path = "/users/relationships"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceUserRelationshipResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a user relationship
     
     - parameter id: (path) The id of the relationship 
     - parameter relationship: (body) The new relationship (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserRelationship(id: Int64, relationship: UserRelationshipResource? = nil, completion: @escaping ((_ data: UserRelationshipResource?,_ error: Error?) -> Void)) {
        updateUserRelationshipWithRequestBuilder(id: id, relationship: relationship).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a user relationship
     - PUT /users/relationships/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "parent" : "",
  "context" : "aeiou",
  "id" : 3,
  "child" : {
    "avatar_url" : "aeiou",
    "id" : 9,
    "display_name" : "aeiou",
    "username" : "aeiou"
  }
}}]
     
     - parameter id: (path) The id of the relationship 
     - parameter relationship: (body) The new relationship (optional)

     - returns: RequestBuilder<UserRelationshipResource> 
     */
    open class func updateUserRelationshipWithRequestBuilder(id: Int64, relationship: UserRelationshipResource? = nil) -> RequestBuilder<UserRelationshipResource> {
        var path = "/users/relationships/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = relationship?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserRelationshipResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
