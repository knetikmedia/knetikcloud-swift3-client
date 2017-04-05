//
// AccessTokenAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AccessTokenAPI: APIBase {
    /**
     * enum for parameter grantType
     */
    public enum GrantType_getOAuthToken: String { 
        case clientCredentials = "client_credentials"
        case password = "password"
    }

    /**
     Get access token
     
     - parameter grantType: (form) Grant type 
     - parameter clientId: (form) The id of the client 
     - parameter clientSecret: (form) The secret key of the client.  Used only with a grant_type of client_credentials (optional)
     - parameter username: (form) The username of the client.  Used only with a grant_type of password (optional)
     - parameter password: (form) The password of the client.  Used only with a grant_type of password (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOAuthToken(grantType: GrantType_getOAuthToken, clientId: String, clientSecret: String? = nil, username: String? = nil, password: String? = nil, completion: @escaping ((_ data: OAuth2Resource?,_ error: Error?) -> Void)) {
        getOAuthTokenWithRequestBuilder(grantType: grantType, clientId: clientId, clientSecret: clientSecret, username: username, password: password).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get access token
     - POST /oauth/token
     - examples: [{contentType=application/json, example={
  "access_token" : "aeiou",
  "scope" : "aeiou",
  "token_type" : "aeiou",
  "expires_in" : "aeiou"
}}]
     
     - parameter grantType: (form) Grant type 
     - parameter clientId: (form) The id of the client 
     - parameter clientSecret: (form) The secret key of the client.  Used only with a grant_type of client_credentials (optional)
     - parameter username: (form) The username of the client.  Used only with a grant_type of password (optional)
     - parameter password: (form) The password of the client.  Used only with a grant_type of password (optional)

     - returns: RequestBuilder<OAuth2Resource> 
     */
    open class func getOAuthTokenWithRequestBuilder(grantType: GrantType_getOAuthToken, clientId: String, clientSecret: String? = nil, username: String? = nil, password: String? = nil) -> RequestBuilder<OAuth2Resource> {
        let path = "/oauth/token"
        let URLString = JSAPIAPI.basePath + path
        let formParams: [String:Any?] = [
            "grant_type": grantType.rawValue,
            "client_id": clientId,
            "client_secret": clientSecret,
            "username": username,
            "password": password
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<OAuth2Resource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
