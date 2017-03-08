//
// UsersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class UsersAPI: APIBase {
    /**
     Add a tag to a user
     
     - parameter userId: (path) The id of the user 
     - parameter tag: (body) tag 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addUserTag(userId: Int32, tag: String, completion: @escaping ((_ error: Error?) -> Void)) {
        addUserTagWithRequestBuilder(userId: userId, tag: tag).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add a tag to a user
     - POST /users/{userId}/tags
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user 
     - parameter tag: (body) tag 

     - returns: RequestBuilder<Void> 
     */
    open class func addUserTagWithRequestBuilder(userId: Int32, tag: String) -> RequestBuilder<Void> {
        var path = "/users/{userId}/tags"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = tag.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a user template
     
     - parameter userTemplateResource: (body) The user template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUserTemplate(userTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        createUserTemplateWithRequestBuilder(userTemplateResource: userTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a user template
     - POST /users/templates
     - User Templates define a type of user and the properties they have
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 0,
  "id" : "aeiou",
  "updated_date" : 7,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter userTemplateResource: (body) The user template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createUserTemplateWithRequestBuilder(userTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/users/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = userTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a user template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUserTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteUserTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a user template
     - DELETE /users/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/users/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single user
     
     - parameter id: (path) The id of the user or &#39;me&#39; 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUser(id: String, completion: @escaping ((_ data: UserResource?,_ error: Error?) -> Void)) {
        getUserWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single user
     - GET /users/{id}
     - Additional private info is included as USERS_ADMIN
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "gender" : "aeiou",
  "city" : "aeiou",
  "date_of_birth" : 1,
  "description" : "aeiou",
  "currency_code" : "aeiou",
  "language_code" : "aeiou",
  "password" : "aeiou",
  "children" : [ {
    "avatar_url" : "aeiou",
    "context" : "aeiou",
    "relationship_id" : 9,
    "id" : 3,
    "display_name" : "aeiou",
    "username" : "aeiou"
  } ],
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 6,
  "state" : "aeiou",
  "first_name" : "aeiou",
  "email" : "aeiou",
  "address" : "aeiou",
  "address2" : "aeiou",
  "last_name" : "aeiou",
  "display_name" : "aeiou",
  "tags" : [ "aeiou" ],
  "country_code" : "aeiou",
  "avatar_url" : "aeiou",
  "timezone_code" : "aeiou",
  "fullname" : "aeiou",
  "mobile_number" : "aeiou",
  "postal_code" : "aeiou",
  "parents" : [ "" ],
  "username" : "aeiou"
}}]
     
     - parameter id: (path) The id of the user or &#39;me&#39; 

     - returns: RequestBuilder<UserResource> 
     */
    open class func getUserWithRequestBuilder(id: String) -> RequestBuilder<UserResource> {
        var path = "/users/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List tags for a user
     
     - parameter userId: (path) The id of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserTags(userId: Int32, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        getUserTagsWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List tags for a user
     - GET /users/{userId}/tags
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]
     
     - parameter userId: (path) The id of the user 

     - returns: RequestBuilder<[String]> 
     */
    open class func getUserTagsWithRequestBuilder(userId: Int32) -> RequestBuilder<[String]> {
        var path = "/users/{userId}/tags"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single user template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserTemplate(id: String, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        getUserTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single user template
     - GET /users/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 3,
  "id" : "aeiou",
  "updated_date" : 4,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getUserTemplateWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/users/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search user templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?,_ error: Error?) -> Void)) {
        getUserTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search user templates
     - GET /users/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 0,
  "total_elements" : 5,
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
    "name" : "aeiou",
    "created_date" : 3,
    "id" : "aeiou",
    "updated_date" : 5,
    "properties" : [ {
      "name" : "aeiou",
      "type" : "aeiou",
      "required" : false
    } ]
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceTemplateResource> 
     */
    open class func getUserTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/users/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search users
     
     - parameter filterDisplayname: (query) Filter for users whose display name starts with provided string. (optional)
     - parameter filterEmail: (query) Filter for users whose email starts with provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterFirstname: (query) Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterFullname: (query) Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterLastname: (query) Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterUsername: (query) Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterTag: (query) Filter for users who have a given tag (optional)
     - parameter filterGroup: (query) Filter for users in a given group, by unique name (optional)
     - parameter filterRole: (query) Filter for users with a given role (optional)
     - parameter filterSearch: (query) Filter for users whose display_name starts with the provided string, or username if display_name is null (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsers(filterDisplayname: String? = nil, filterEmail: String? = nil, filterFirstname: String? = nil, filterFullname: String? = nil, filterLastname: String? = nil, filterUsername: String? = nil, filterTag: String? = nil, filterGroup: String? = nil, filterRole: String? = nil, filterSearch: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceUserBaseResource?,_ error: Error?) -> Void)) {
        getUsersWithRequestBuilder(filterDisplayname: filterDisplayname, filterEmail: filterEmail, filterFirstname: filterFirstname, filterFullname: filterFullname, filterLastname: filterLastname, filterUsername: filterUsername, filterTag: filterTag, filterGroup: filterGroup, filterRole: filterRole, filterSearch: filterSearch, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search users
     - GET /users
     - Additional private info is included as USERS_ADMIN
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 2,
  "total_elements" : 5,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 6,
  "number_of_elements" : 4,
  "content" : [ {
    "avatar_url" : "aeiou",
    "fullname" : "aeiou",
    "id" : 1,
    "display_name" : "aeiou",
    "email" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterDisplayname: (query) Filter for users whose display name starts with provided string. (optional)
     - parameter filterEmail: (query) Filter for users whose email starts with provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterFirstname: (query) Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterFullname: (query) Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterLastname: (query) Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterUsername: (query) Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission (optional)
     - parameter filterTag: (query) Filter for users who have a given tag (optional)
     - parameter filterGroup: (query) Filter for users in a given group, by unique name (optional)
     - parameter filterRole: (query) Filter for users with a given role (optional)
     - parameter filterSearch: (query) Filter for users whose display_name starts with the provided string, or username if display_name is null (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceUserBaseResource> 
     */
    open class func getUsersWithRequestBuilder(filterDisplayname: String? = nil, filterEmail: String? = nil, filterFirstname: String? = nil, filterFullname: String? = nil, filterLastname: String? = nil, filterUsername: String? = nil, filterTag: String? = nil, filterGroup: String? = nil, filterRole: String? = nil, filterSearch: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceUserBaseResource> {
        let path = "/users"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_displayname": filterDisplayname, 
            "filter_email": filterEmail, 
            "filter_firstname": filterFirstname, 
            "filter_fullname": filterFullname, 
            "filter_lastname": filterLastname, 
            "filter_username": filterUsername, 
            "filter_tag": filterTag, 
            "filter_group": filterGroup, 
            "filter_role": filterRole, 
            "filter_search": filterSearch, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceUserBaseResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Choose a new password after a reset
     
     - parameter id: (path) The id of the user 
     - parameter newPasswordRequest: (body) The new password request object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func passwordReset(id: Int32, newPasswordRequest: NewPasswordRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        passwordResetWithRequestBuilder(id: id, newPasswordRequest: newPasswordRequest).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Choose a new password after a reset
     - PUT /users/{id}/password-reset
     - Finish resetting a user's password using the secret provided from the password-reset endpoint.  Password should be in plain text and will be encrypted on receipt. Use SSL for security.
     
     - parameter id: (path) The id of the user 
     - parameter newPasswordRequest: (body) The new password request object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func passwordResetWithRequestBuilder(id: Int32, newPasswordRequest: NewPasswordRequest? = nil) -> RequestBuilder<Void> {
        var path = "/users/{id}/password-reset"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = newPasswordRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Register a new user
     
     - parameter userResource: (body) The user resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func registerUser(userResource: UserResource? = nil, completion: @escaping ((_ data: UserResource?,_ error: Error?) -> Void)) {
        registerUserWithRequestBuilder(userResource: userResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Register a new user
     - POST /users
     - Password should be in plain text and will be encrypted on receipt. Use SSL for security
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "gender" : "aeiou",
  "city" : "aeiou",
  "date_of_birth" : 0,
  "description" : "aeiou",
  "currency_code" : "aeiou",
  "language_code" : "aeiou",
  "password" : "aeiou",
  "children" : [ {
    "avatar_url" : "aeiou",
    "context" : "aeiou",
    "relationship_id" : 9,
    "id" : 4,
    "display_name" : "aeiou",
    "username" : "aeiou"
  } ],
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 5,
  "state" : "aeiou",
  "first_name" : "aeiou",
  "email" : "aeiou",
  "address" : "aeiou",
  "address2" : "aeiou",
  "last_name" : "aeiou",
  "display_name" : "aeiou",
  "tags" : [ "aeiou" ],
  "country_code" : "aeiou",
  "avatar_url" : "aeiou",
  "timezone_code" : "aeiou",
  "fullname" : "aeiou",
  "mobile_number" : "aeiou",
  "postal_code" : "aeiou",
  "parents" : [ "" ],
  "username" : "aeiou"
}}]
     
     - parameter userResource: (body) The user resource object (optional)

     - returns: RequestBuilder<UserResource> 
     */
    open class func registerUserWithRequestBuilder(userResource: UserResource? = nil) -> RequestBuilder<UserResource> {
        let path = "/users"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = userResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Remove a tag from a user
     
     - parameter userId: (path) The id of the user 
     - parameter tag: (path) The tag to remove 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeUserTag(userId: Int32, tag: String, completion: @escaping ((_ error: Error?) -> Void)) {
        removeUserTagWithRequestBuilder(userId: userId, tag: tag).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Remove a tag from a user
     - DELETE /users/{userId}/tags/{tag}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user 
     - parameter tag: (path) The tag to remove 

     - returns: RequestBuilder<Void> 
     */
    open class func removeUserTagWithRequestBuilder(userId: Int32, tag: String) -> RequestBuilder<Void> {
        var path = "/users/{userId}/tags/{tag}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{tag}", with: "\(tag)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Set a user's password
     
     - parameter id: (path) The id of the user 
     - parameter password: (body) The new plain text password (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setPassword(id: Int32, password: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setPasswordWithRequestBuilder(id: id, password: password).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set a user's password
     - PUT /users/{id}/password
     - Password should be in plain text and will be encrypted on receipt. Use SSL for security.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the user 
     - parameter password: (body) The new plain text password (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setPasswordWithRequestBuilder(id: Int32, password: String? = nil) -> RequestBuilder<Void> {
        var path = "/users/{id}/password"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = password?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Reset a user's password
     
     - parameter id: (path) The id of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startPasswordReset(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        startPasswordResetWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Reset a user's password
     - POST /users/{id}/password-reset
     - A reset code will be generated and a 'forgot_password' BRE event will be fired with that code; this can be routed to the user as needed and submitted to the 'choose a new password' endpoint.
     
     - parameter id: (path) The id of the user 

     - returns: RequestBuilder<Void> 
     */
    open class func startPasswordResetWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/users/{id}/password-reset"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a user
     
     - parameter id: (path) The id of the user or &#39;me&#39; 
     - parameter userResource: (body) The user resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUser(id: String, userResource: UserResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateUserWithRequestBuilder(id: id, userResource: userResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a user
     - PUT /users/{id}
     - Password will not be edited on this endpoint, use password specific endpoints.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the user or &#39;me&#39; 
     - parameter userResource: (body) The user resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateUserWithRequestBuilder(id: String, userResource: UserResource? = nil) -> RequestBuilder<Void> {
        var path = "/users/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = userResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a user template
     
     - parameter id: (path) The id of the template 
     - parameter userTemplateResource: (body) The user template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserTemplate(id: String, userTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        updateUserTemplateWithRequestBuilder(id: id, userTemplateResource: userTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a user template
     - PUT /users/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 1,
  "id" : "aeiou",
  "updated_date" : 8,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter userTemplateResource: (body) The user template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func updateUserTemplateWithRequestBuilder(id: String, userTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        var path = "/users/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = userTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
