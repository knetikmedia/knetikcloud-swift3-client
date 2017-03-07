//
// AuthTokensAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AuthTokensAPI: APIBase {
    /**
     Delete a token by username and client id
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteToken(username: String, clientId: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteTokenWithRequestBuilder(username: username, clientId: clientId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a token by username and client id
     - DELETE /auth/tokens/{username}/{clientId}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteTokenWithRequestBuilder(username: String, clientId: String) -> RequestBuilder<Void> {
        var path = "/auth/tokens/{username}/{clientId}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{client_id}", with: "\(clientId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all tokens by username
     
     - parameter username: (path) The username of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTokens(username: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteTokensWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete all tokens by username
     - DELETE /auth/tokens/{username}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter username: (path) The username of the user 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteTokensWithRequestBuilder(username: String) -> RequestBuilder<Void> {
        var path = "/auth/tokens/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single token by username and client id
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getToken(username: String, clientId: String, completion: @escaping ((_ data: OauthAccessTokenResource?,_ error: Error?) -> Void)) {
        getTokenWithRequestBuilder(username: username, clientId: clientId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single token by username and client id
     - GET /auth/tokens/{username}/{clientId}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "client_id" : "aeiou",
  "token" : "aeiou",
  "username" : "aeiou"
}}]
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 

     - returns: RequestBuilder<OauthAccessTokenResource> 
     */
    open class func getTokenWithRequestBuilder(username: String, clientId: String) -> RequestBuilder<OauthAccessTokenResource> {
        var path = "/auth/tokens/{username}/{clientId}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{client_id}", with: "\(clientId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<OauthAccessTokenResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List usernames and client ids
     
     - parameter filterClientId: (query) Filters for token whose client id matches provided string (optional)
     - parameter filterUsername: (query) Filters for token whose username matches provided string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to username:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTokens(filterClientId: String? = nil, filterUsername: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceOauthAccessTokenResource?,_ error: Error?) -> Void)) {
        getTokensWithRequestBuilder(filterClientId: filterClientId, filterUsername: filterUsername, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List usernames and client ids
     - GET /auth/tokens
     - Token value not shown
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 6,
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
  "total_pages" : 8,
  "number_of_elements" : 0,
  "content" : [ {
    "client_id" : "aeiou",
    "token" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterClientId: (query) Filters for token whose client id matches provided string (optional)
     - parameter filterUsername: (query) Filters for token whose username matches provided string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to username:ASC)

     - returns: RequestBuilder<PageResourceOauthAccessTokenResource> 
     */
    open class func getTokensWithRequestBuilder(filterClientId: String? = nil, filterUsername: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceOauthAccessTokenResource> {
        let path = "/auth/tokens"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_client_id": filterClientId, 
            "filter_username": filterUsername, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceOauthAccessTokenResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
