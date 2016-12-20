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
    open class func addRelationshipUsingPOST(relationship: UserRelationshipResource? = nil, completion: @escaping ((_ data: UserRelationshipResource?,_ error: Error?) -> Void)) {
        addRelationshipUsingPOSTWithRequestBuilder(relationship: relationship).execute { (response, error) -> Void in
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
  "id" : 123456789,
  "child" : {
    "avatar_url" : "aeiou",
    "id" : 123,
    "display_name" : "aeiou",
    "username" : "aeiou"
  }
}}]
     
     - parameter relationship: (body) The new relationship (optional)

     - returns: RequestBuilder<UserRelationshipResource> 
     */
    open class func addRelationshipUsingPOSTWithRequestBuilder(relationship: UserRelationshipResource? = nil) -> RequestBuilder<UserRelationshipResource> {
        let path = "/users/relationships"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = relationship?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UserRelationshipResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a user relationship
     
     - parameter id: (path) The id of the relationship 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteRelationshipUsingDELETE(id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteRelationshipUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
    open class func deleteRelationshipUsingDELETEWithRequestBuilder(id: Int64) -> RequestBuilder<Void> {
        var path = "/users/relationships/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a user relationship
     
     - parameter id: (path) The id of the relationship 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRelationshipUsingGET(id: Int64, completion: @escaping ((_ data: UserRelationshipResource?,_ error: Error?) -> Void)) {
        getRelationshipUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
  "id" : 123456789,
  "child" : {
    "avatar_url" : "aeiou",
    "id" : 123,
    "display_name" : "aeiou",
    "username" : "aeiou"
  }
}}]
     
     - parameter id: (path) The id of the relationship 

     - returns: RequestBuilder<UserRelationshipResource> 
     */
    open class func getRelationshipUsingGETWithRequestBuilder(id: Int64) -> RequestBuilder<UserRelationshipResource> {
        var path = "/users/relationships/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UserRelationshipResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a list of user relationships
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRelationshipsUsingGET(completion: @escaping ((_ data: PageResourceUserRelationshipResource?,_ error: Error?) -> Void)) {
        getRelationshipsUsingGETWithRequestBuilder().execute { (response, error) -> Void in
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
    "parent" : "",
    "context" : "aeiou",
    "id" : 123456789,
    "child" : {
      "avatar_url" : "aeiou",
      "id" : 123,
      "display_name" : "aeiou",
      "username" : "aeiou"
    }
  } ],
  "first" : true
}}]

     - returns: RequestBuilder<PageResourceUserRelationshipResource> 
     */
    open class func getRelationshipsUsingGETWithRequestBuilder() -> RequestBuilder<PageResourceUserRelationshipResource> {
        let path = "/users/relationships"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceUserRelationshipResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a user relationship
     
     - parameter id: (path) The id of the relationship 
     - parameter relationship: (body) The new relationship (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateRelationshipUsingPUT(id: Int64, relationship: UserRelationshipResource? = nil, completion: @escaping ((_ data: UserRelationshipResource?,_ error: Error?) -> Void)) {
        updateRelationshipUsingPUTWithRequestBuilder(id: id, relationship: relationship).execute { (response, error) -> Void in
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
  "id" : 123456789,
  "child" : {
    "avatar_url" : "aeiou",
    "id" : 123,
    "display_name" : "aeiou",
    "username" : "aeiou"
  }
}}]
     
     - parameter id: (path) The id of the relationship 
     - parameter relationship: (body) The new relationship (optional)

     - returns: RequestBuilder<UserRelationshipResource> 
     */
    open class func updateRelationshipUsingPUTWithRequestBuilder(id: Int64, relationship: UserRelationshipResource? = nil) -> RequestBuilder<UserRelationshipResource> {
        var path = "/users/relationships/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = relationship?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UserRelationshipResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}