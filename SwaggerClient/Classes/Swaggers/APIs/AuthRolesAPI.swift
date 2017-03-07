//
// AuthRolesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AuthRolesAPI: APIBase {
    /**
     Create a new role
     
     - parameter roleResource: (body) The role resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createRole(roleResource: RoleResource? = nil, completion: @escaping ((_ data: RoleResource?,_ error: Error?) -> Void)) {
        createRoleWithRequestBuilder(roleResource: roleResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new role
     - POST /auth/roles
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "role" : "aeiou",
  "user_count" : 3,
  "name" : "aeiou",
  "role_permission" : [ {
    "parent" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "permission" : "aeiou",
    "created_date" : 8,
    "updated_date" : 7,
    "locked" : false
  } ],
  "created_date" : 3,
  "locked" : false,
  "client_count" : 7
}}]
     
     - parameter roleResource: (body) The role resource object (optional)

     - returns: RequestBuilder<RoleResource> 
     */
    open class func createRoleWithRequestBuilder(roleResource: RoleResource? = nil) -> RequestBuilder<RoleResource> {
        let path = "/auth/roles"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = roleResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<RoleResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a role
     
     - parameter role: (path) The role value 
     - parameter force: (query) If true, removes role from users/clients (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteRole(role: String, force: Bool? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteRoleWithRequestBuilder(role: role, force: force).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a role
     - DELETE /auth/roles/{role}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter role: (path) The role value 
     - parameter force: (query) If true, removes role from users/clients (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteRoleWithRequestBuilder(role: String, force: Bool? = nil) -> RequestBuilder<Void> {
        var path = "/auth/roles/{role}"
        path = path.replacingOccurrences(of: "{role}", with: "\(role)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "force": force
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get roles for a client
     
     - parameter clientKey: (path) The client key 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getClientRoles(clientKey: String, completion: @escaping ((_ data: [RoleResource]?,_ error: Error?) -> Void)) {
        getClientRolesWithRequestBuilder(clientKey: clientKey).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get roles for a client
     - GET /auth/clients/{clientKey}/roles
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "role" : "aeiou",
  "user_count" : 5,
  "name" : "aeiou",
  "role_permission" : [ {
    "parent" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "permission" : "aeiou",
    "created_date" : 3,
    "updated_date" : 8,
    "locked" : false
  } ],
  "created_date" : 6,
  "locked" : false,
  "client_count" : 3
} ]}]
     
     - parameter clientKey: (path) The client key 

     - returns: RequestBuilder<[RoleResource]> 
     */
    open class func getClientRolesWithRequestBuilder(clientKey: String) -> RequestBuilder<[RoleResource]> {
        var path = "/auth/clients/{clientKey}/roles"
        path = path.replacingOccurrences(of: "{client_key}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[RoleResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single role
     
     - parameter role: (path) The role value 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRole(role: String, completion: @escaping ((_ data: RoleResource?,_ error: Error?) -> Void)) {
        getRoleWithRequestBuilder(role: role).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single role
     - GET /auth/roles/{role}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "role" : "aeiou",
  "user_count" : 5,
  "name" : "aeiou",
  "role_permission" : [ {
    "parent" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "permission" : "aeiou",
    "created_date" : 2,
    "updated_date" : 2,
    "locked" : false
  } ],
  "created_date" : 0,
  "locked" : false,
  "client_count" : 5
}}]
     
     - parameter role: (path) The role value 

     - returns: RequestBuilder<RoleResource> 
     */
    open class func getRoleWithRequestBuilder(role: String) -> RequestBuilder<RoleResource> {
        var path = "/auth/roles/{role}"
        path = path.replacingOccurrences(of: "{role}", with: "\(role)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<RoleResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search roles
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRoles(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceRoleResource?,_ error: Error?) -> Void)) {
        getRolesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search roles
     - GET /auth/roles
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 3,
  "total_elements" : 8,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 5,
  "content" : [ {
    "role" : "aeiou",
    "user_count" : 6,
    "name" : "aeiou",
    "role_permission" : [ {
      "parent" : "aeiou",
      "name" : "aeiou",
      "description" : "aeiou",
      "permission" : "aeiou",
      "created_date" : 9,
      "updated_date" : 9,
      "locked" : false
    } ],
    "created_date" : 5,
    "locked" : false,
    "client_count" : 2
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<PageResourceRoleResource> 
     */
    open class func getRolesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceRoleResource> {
        let path = "/auth/roles"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceRoleResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get roles for a user
     
     - parameter userId: (path) The user&#39;s id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserRoles(userId: Int32, completion: @escaping ((_ data: [RoleResource]?,_ error: Error?) -> Void)) {
        getUserRolesWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get roles for a user
     - GET /auth/users/{userId}/roles
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "role" : "aeiou",
  "user_count" : 7,
  "name" : "aeiou",
  "role_permission" : [ {
    "parent" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "permission" : "aeiou",
    "created_date" : 6,
    "updated_date" : 8,
    "locked" : false
  } ],
  "created_date" : 7,
  "locked" : false,
  "client_count" : 7
} ]}]
     
     - parameter userId: (path) The user&#39;s id 

     - returns: RequestBuilder<[RoleResource]> 
     */
    open class func getUserRolesWithRequestBuilder(userId: Int32) -> RequestBuilder<[RoleResource]> {
        var path = "/auth/users/{userId}/roles"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[RoleResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Set roles for a client
     
     - parameter clientKey: (path) The client key 
     - parameter rolesList: (body) The list of unique roles (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setClientRoles(clientKey: String, rolesList: [String]? = nil, completion: @escaping ((_ data: ClientResource?,_ error: Error?) -> Void)) {
        setClientRolesWithRequestBuilder(clientKey: clientKey, rolesList: rolesList).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Set roles for a client
     - PUT /auth/clients/{clientKey}/roles
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "client_key" : "aeiou",
  "grant_types" : [ "aeiou" ],
  "is_public" : false,
  "name" : "aeiou",
  "id" : 7,
  "redirect_uris" : [ "aeiou" ],
  "secret" : "aeiou",
  "locked" : false,
  "access_token_validity_seconds" : 3,
  "refresh_token_validity_seconds" : 0
}}]
     
     - parameter clientKey: (path) The client key 
     - parameter rolesList: (body) The list of unique roles (optional)

     - returns: RequestBuilder<ClientResource> 
     */
    open class func setClientRolesWithRequestBuilder(clientKey: String, rolesList: [String]? = nil) -> RequestBuilder<ClientResource> {
        var path = "/auth/clients/{clientKey}/roles"
        path = path.replacingOccurrences(of: "{client_key}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = rolesList?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ClientResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set permissions for a role
     
     - parameter role: (path) The role value 
     - parameter permissionsList: (body) The list of unique permissions (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setPermissionsForRole(role: String, permissionsList: [String]? = nil, completion: @escaping ((_ data: RoleResource?,_ error: Error?) -> Void)) {
        setPermissionsForRoleWithRequestBuilder(role: role, permissionsList: permissionsList).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Set permissions for a role
     - PUT /auth/roles/{role}/permissions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "role" : "aeiou",
  "user_count" : 3,
  "name" : "aeiou",
  "role_permission" : [ {
    "parent" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "permission" : "aeiou",
    "created_date" : 2,
    "updated_date" : 8,
    "locked" : false
  } ],
  "created_date" : 7,
  "locked" : false,
  "client_count" : 1
}}]
     
     - parameter role: (path) The role value 
     - parameter permissionsList: (body) The list of unique permissions (optional)

     - returns: RequestBuilder<RoleResource> 
     */
    open class func setPermissionsForRoleWithRequestBuilder(role: String, permissionsList: [String]? = nil) -> RequestBuilder<RoleResource> {
        var path = "/auth/roles/{role}/permissions"
        path = path.replacingOccurrences(of: "{role}", with: "\(role)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = permissionsList?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<RoleResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set roles for a user
     
     - parameter userId: (path) The user&#39;s id 
     - parameter rolesList: (body) The list of unique roles (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setUserRoles(userId: Int32, rolesList: [String]? = nil, completion: @escaping ((_ data: UserResource?,_ error: Error?) -> Void)) {
        setUserRolesWithRequestBuilder(userId: userId, rolesList: rolesList).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Set roles for a user
     - PUT /auth/users/{userId}/roles
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "gender" : "aeiou",
  "city" : "aeiou",
  "date_of_birth" : 5,
  "description" : "aeiou",
  "currency_code" : "aeiou",
  "language_code" : "aeiou",
  "password" : "aeiou",
  "children" : [ {
    "avatar_url" : "aeiou",
    "context" : "aeiou",
    "relationship_id" : 1,
    "id" : 2,
    "display_name" : "aeiou",
    "username" : "aeiou"
  } ],
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : 7,
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
     
     - parameter userId: (path) The user&#39;s id 
     - parameter rolesList: (body) The list of unique roles (optional)

     - returns: RequestBuilder<UserResource> 
     */
    open class func setUserRolesWithRequestBuilder(userId: Int32, rolesList: [String]? = nil) -> RequestBuilder<UserResource> {
        var path = "/auth/users/{userId}/roles"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = rolesList?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a role
     
     - parameter role: (path) The role value 
     - parameter roleResource: (body) The role resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateRole(role: String, roleResource: RoleResource? = nil, completion: @escaping ((_ data: RoleResource?,_ error: Error?) -> Void)) {
        updateRoleWithRequestBuilder(role: role, roleResource: roleResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a role
     - PUT /auth/roles/{role}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "role" : "aeiou",
  "user_count" : 0,
  "name" : "aeiou",
  "role_permission" : [ {
    "parent" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "permission" : "aeiou",
    "created_date" : 1,
    "updated_date" : 9,
    "locked" : false
  } ],
  "created_date" : 9,
  "locked" : false,
  "client_count" : 6
}}]
     
     - parameter role: (path) The role value 
     - parameter roleResource: (body) The role resource object (optional)

     - returns: RequestBuilder<RoleResource> 
     */
    open class func updateRoleWithRequestBuilder(role: String, roleResource: RoleResource? = nil) -> RequestBuilder<RoleResource> {
        var path = "/auth/roles/{role}"
        path = path.replacingOccurrences(of: "{role}", with: "\(role)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = roleResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<RoleResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
