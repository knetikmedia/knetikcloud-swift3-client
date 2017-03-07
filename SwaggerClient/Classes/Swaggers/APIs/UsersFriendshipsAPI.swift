//
// UsersFriendshipsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class UsersFriendshipsAPI: APIBase {
    /**
     Add a friend
     
     - parameter userId: (path) The id of the user or &#39;me&#39; if logged in 
     - parameter id: (path) The id of the user to befriend 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addFriend(userId: String, id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        addFriendWithRequestBuilder(userId: userId, id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add a friend
     - POST /users/{userId}/friends/{id}
     - As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user or &#39;me&#39; if logged in 
     - parameter id: (path) The id of the user to befriend 

     - returns: RequestBuilder<Void> 
     */
    open class func addFriendWithRequestBuilder(userId: String, id: Int32) -> RequestBuilder<Void> {
        var path = "/users/{userId}/friends/{id}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get friends list
     
     - parameter userId: (path) The id of the user or &#39;me&#39; 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFriends(userId: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceSimpleUserResource?,_ error: Error?) -> Void)) {
        getFriendsWithRequestBuilder(userId: userId, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get friends list
     - GET /users/{userId}/friends
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 4,
  "total_elements" : 3,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 4,
  "content" : [ {
    "avatar_url" : "aeiou",
    "id" : 1,
    "display_name" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter userId: (path) The id of the user or &#39;me&#39; 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceSimpleUserResource> 
     */
    open class func getFriendsWithRequestBuilder(userId: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceSimpleUserResource> {
        var path = "/users/{userId}/friends"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceSimpleUserResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns the invite token
     
     - parameter userId: (path) The id of the user or &#39;me&#39; if logged in 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInviteToken(userId: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getInviteTokenWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns the invite token
     - GET /users/{userId}/invite-token
     - This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter userId: (path) The id of the user or &#39;me&#39; if logged in 

     - returns: RequestBuilder<String> 
     */
    open class func getInviteTokenWithRequestBuilder(userId: String) -> RequestBuilder<String> {
        var path = "/users/{userId}/invite-token"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get pending invites
     
     - parameter userId: (path) The id of the user or &#39;me&#39; 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInvites(userId: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceSimpleUserResource?,_ error: Error?) -> Void)) {
        getInvitesWithRequestBuilder(userId: userId, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get pending invites
     - GET /users/{userId}/invites
     - Invites that the specified user received
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 5,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 5,
  "content" : [ {
    "avatar_url" : "aeiou",
    "id" : 4,
    "display_name" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter userId: (path) The id of the user or &#39;me&#39; 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceSimpleUserResource> 
     */
    open class func getInvitesWithRequestBuilder(userId: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceSimpleUserResource> {
        var path = "/users/{userId}/invites"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceSimpleUserResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Redeem friendship token
     
     - parameter userId: (path) The id of the user or &#39;me&#39; if logged in 
     - parameter token: (body) The invite token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func redeemFriendshipToken(userId: String, token: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        redeemFriendshipTokenWithRequestBuilder(userId: userId, token: token).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Redeem friendship token
     - POST /users/{userId}/friends/tokens
     - Immediately connects the requested user with the user mapped by the provided invite token
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user or &#39;me&#39; if logged in 
     - parameter token: (body) The invite token (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func redeemFriendshipTokenWithRequestBuilder(userId: String, token: String? = nil) -> RequestBuilder<Void> {
        var path = "/users/{userId}/friends/tokens"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = token?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Remove or decline a friend
     
     - parameter userId: (path) The id of the user or &#39;me&#39; if logged in 
     - parameter id: (path) The id of the user to befriend 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeOrDeclineFriend(userId: String, id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        removeOrDeclineFriendWithRequestBuilder(userId: userId, id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Remove or decline a friend
     - DELETE /users/{userId}/friends/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user or &#39;me&#39; if logged in 
     - parameter id: (path) The id of the user to befriend 

     - returns: RequestBuilder<Void> 
     */
    open class func removeOrDeclineFriendWithRequestBuilder(userId: String, id: Int32) -> RequestBuilder<Void> {
        var path = "/users/{userId}/friends/{id}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
