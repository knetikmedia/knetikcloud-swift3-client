//
// SocialFacebookAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SocialFacebookAPI: APIBase {
    /**
     Link facebook account
     - parameter facebookToken: (body) The token from facebook (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func linkAccounts(facebookToken: FacebookToken? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        linkAccountsWithRequestBuilder(facebookToken: facebookToken).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Link facebook account
     - POST /social/facebook/users
     - Links the current user account to a facebook account, using the acccess token from facebook. Can also be used to update the access token after it has expired.

     - parameter facebookToken: (body) The token from facebook (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func linkAccountsWithRequestBuilder(facebookToken: FacebookToken? = nil) -> RequestBuilder<Void> {
        let path = "/social/facebook/users"
        let URLString = JSAPIAPI.basePath + path
        let parameters = facebookToken?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
