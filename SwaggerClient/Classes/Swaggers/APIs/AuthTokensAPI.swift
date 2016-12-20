//
// AuthTokensAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AuthTokensAPI: APIBase {
    /**
     Delete all tokens by username
     
     - parameter username: (path) The username of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTokenUsingDELETE(username: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteTokenUsingDELETEWithRequestBuilder(username: username).execute { (response, error) -> Void in
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
    open class func deleteTokenUsingDELETEWithRequestBuilder(username: String) -> RequestBuilder<Void> {
        var path = "/auth/tokens/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a token by username and client id
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTokenWithClientIdUsingDELETE(username: String, clientId: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteTokenWithClientIdUsingDELETEWithRequestBuilder(username: username, clientId: clientId).execute { (response, error) -> Void in
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
    open class func deleteTokenWithClientIdUsingDELETEWithRequestBuilder(username: String, clientId: String) -> RequestBuilder<Void> {
        var path = "/auth/tokens/{username}/{clientId}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{clientId}", with: "\(clientId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single token by username and client id
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTokenByUserUsingGET(username: String, clientId: String, completion: @escaping ((_ data: OauthAccessTokenResource?,_ error: Error?) -> Void)) {
        getTokenByUserUsingGETWithRequestBuilder(username: username, clientId: clientId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single token by username and client id
     - GET /auth/tokens/{username}/{clientId}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 

     - returns: RequestBuilder<OauthAccessTokenResource> 
     */
    open class func getTokenByUserUsingGETWithRequestBuilder(username: String, clientId: String) -> RequestBuilder<OauthAccessTokenResource> {
        var path = "/auth/tokens/{username}/{clientId}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{clientId}", with: "\(clientId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OauthAccessTokenResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
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
    open class func getTokensUsingGET(filterClientId: String? = nil, filterUsername: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageOauthAccessTokenResource?,_ error: Error?) -> Void)) {
        getTokensUsingGETWithRequestBuilder(filterClientId: filterClientId, filterUsername: filterUsername, size: size, page: page, order: order).execute { (response, error) -> Void in
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
     - examples: [{output=none}]
     
     - parameter filterClientId: (query) Filters for token whose client id matches provided string (optional)
     - parameter filterUsername: (query) Filters for token whose username matches provided string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to username:ASC)

     - returns: RequestBuilder<PageOauthAccessTokenResource> 
     */
    open class func getTokensUsingGETWithRequestBuilder(filterClientId: String? = nil, filterUsername: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageOauthAccessTokenResource> {
        let path = "/auth/tokens"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_client_id": filterClientId,
            "filter_username": filterUsername,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageOauthAccessTokenResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
