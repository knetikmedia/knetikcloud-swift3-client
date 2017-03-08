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
  "id" : 8,
  "child" : {
    "avatar_url" : "aeiou",
    "id" : 8,
    "display_name" : "aeiou",
    "username" : "aeiou"
  }
}}]
     
     - parameter relationship: (body) The new relationship (optional)

     - returns: RequestBuilder<UserRelationshipResource> 
     */
    open class func createUserRelationshipWithRequestBuilder(relationship: UserRelationshipResource? = nil) -> RequestBuilder<UserRelationshipResource> {
        let path = "/users/relationships"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = relationship?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserRelationshipResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

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
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

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
  "id" : 9,
  "child" : {
    "avatar_url" : "aeiou",
    "id" : 9,
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
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserRelationshipResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of user relationships
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserRelationships(completion: @escaping ((_ data: PageResourceUserRelationshipResource?,_ error: Error?) -> Void)) {
        getUserRelationshipsWithRequestBuilder().execute { (response, error) -> Void in
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
  "number" : 6,
  "last" : true,
  "size" : 6,
  "total_elements" : 3,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 0,
  "number_of_elements" : 5,
  "content" : [ {
    "parent" : "",
    "context" : "aeiou",
    "id" : 4,
    "child" : {
      "avatar_url" : "aeiou",
      "id" : 8,
      "display_name" : "aeiou",
      "username" : "aeiou"
    }
  } ],
  "first" : true
}}]

     - returns: RequestBuilder<PageResourceUserRelationshipResource> 
     */
    open class func getUserRelationshipsWithRequestBuilder() -> RequestBuilder<PageResourceUserRelationshipResource> {
        let path = "/users/relationships"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PageResourceUserRelationshipResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

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
  "id" : 7,
  "child" : {
    "avatar_url" : "aeiou",
    "id" : 2,
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
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = relationship?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserRelationshipResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
