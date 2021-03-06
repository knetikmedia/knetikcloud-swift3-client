//
// Auth_RolesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Auth_RolesAPI: APIBase {
    /**
     Create a new role
     - parameter roleResource: (body) The role resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createRole(roleResource: RoleResource? = nil, completion: @escaping ((_ data: RoleResource?, _ error: ErrorResponse?) -> Void)) {
        createRoleWithRequestBuilder(roleResource: roleResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a new role
     - POST /auth/roles
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "role" : "role",
  "user_count" : 5,
  "name" : "name",
  "role_permission" : [ {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  }, {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  } ],
  "created_date" : 6,
  "locked" : false,
  "client_count" : 0
}}]
     - parameter roleResource: (body) The role resource object (optional)
     - returns: RequestBuilder<RoleResource> 
     */
    open class func createRoleWithRequestBuilder(roleResource: RoleResource? = nil) -> RequestBuilder<RoleResource> {
        let path = "/auth/roles"
        let URLString = JSAPIAPI.basePath + path
        let parameters = roleResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RoleResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a role
     - parameter role: (path) The role value 
     - parameter force: (query) If true, removes role from users/clients (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteRole(role: String, force: Bool? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteRoleWithRequestBuilder(role: role, force: force).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete a role
     - DELETE /auth/roles/{role}
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter role: (path) The role value 
     - parameter force: (query) If true, removes role from users/clients (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteRoleWithRequestBuilder(role: String, force: Bool? = nil) -> RequestBuilder<Void> {
        var path = "/auth/roles/{role}"
        path = path.replacingOccurrences(of: "{role}", with: "\(role)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "force": force
        ])

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get roles for a client
     - parameter clientKey: (path) The client key 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getClientRoles(clientKey: String, completion: @escaping ((_ data: [RoleResource]?, _ error: ErrorResponse?) -> Void)) {
        getClientRolesWithRequestBuilder(clientKey: clientKey).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get roles for a client
     - GET /auth/clients/{client_key}/roles
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=[ {
  "role" : "role",
  "user_count" : 5,
  "name" : "name",
  "role_permission" : [ {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  }, {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  } ],
  "created_date" : 6,
  "locked" : false,
  "client_count" : 0
}, {
  "role" : "role",
  "user_count" : 5,
  "name" : "name",
  "role_permission" : [ {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  }, {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  } ],
  "created_date" : 6,
  "locked" : false,
  "client_count" : 0
} ]}]
     - parameter clientKey: (path) The client key 
     - returns: RequestBuilder<[RoleResource]> 
     */
    open class func getClientRolesWithRequestBuilder(clientKey: String) -> RequestBuilder<[RoleResource]> {
        var path = "/auth/clients/{client_key}/roles"
        path = path.replacingOccurrences(of: "{client_key}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[RoleResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single role
     - parameter role: (path) The role value 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRole(role: String, completion: @escaping ((_ data: RoleResource?, _ error: ErrorResponse?) -> Void)) {
        getRoleWithRequestBuilder(role: role).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single role
     - GET /auth/roles/{role}
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "role" : "role",
  "user_count" : 5,
  "name" : "name",
  "role_permission" : [ {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  }, {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  } ],
  "created_date" : 6,
  "locked" : false,
  "client_count" : 0
}}]
     - parameter role: (path) The role value 
     - returns: RequestBuilder<RoleResource> 
     */
    open class func getRoleWithRequestBuilder(role: String) -> RequestBuilder<RoleResource> {
        var path = "/auth/roles/{role}"
        path = path.replacingOccurrences(of: "{role}", with: "\(role)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RoleResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search roles
     - parameter filterName: (query) Filter for roles that have a name starting with specified string (optional)
     - parameter filterRole: (query) Filter for roles that have a role starting with specified string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRoles(filterName: String? = nil, filterRole: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceRoleResource?, _ error: ErrorResponse?) -> Void)) {
        getRolesWithRequestBuilder(filterName: filterName, filterRole: filterRole, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List and search roles
     - GET /auth/roles
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 1,
  "total_elements" : 5,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 5,
  "number_of_elements" : 6,
  "content" : [ {
    "role" : "role",
    "user_count" : 5,
    "name" : "name",
    "role_permission" : [ {
      "parent" : "parent",
      "name" : "name",
      "description" : "description",
      "permission" : "permission",
      "created_date" : 1,
      "updated_date" : 5,
      "locked" : false
    }, {
      "parent" : "parent",
      "name" : "name",
      "description" : "description",
      "permission" : "permission",
      "created_date" : 1,
      "updated_date" : 5,
      "locked" : false
    } ],
    "created_date" : 6,
    "locked" : false,
    "client_count" : 0
  }, {
    "role" : "role",
    "user_count" : 5,
    "name" : "name",
    "role_permission" : [ {
      "parent" : "parent",
      "name" : "name",
      "description" : "description",
      "permission" : "permission",
      "created_date" : 1,
      "updated_date" : 5,
      "locked" : false
    }, {
      "parent" : "parent",
      "name" : "name",
      "description" : "description",
      "permission" : "permission",
      "created_date" : 1,
      "updated_date" : 5,
      "locked" : false
    } ],
    "created_date" : 6,
    "locked" : false,
    "client_count" : 0
  } ],
  "first" : true
}}]
     - parameter filterName: (query) Filter for roles that have a name starting with specified string (optional)
     - parameter filterRole: (query) Filter for roles that have a role starting with specified string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - returns: RequestBuilder<PageResourceRoleResource> 
     */
    open class func getRolesWithRequestBuilder(filterName: String? = nil, filterRole: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceRoleResource> {
        let path = "/auth/roles"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_name": filterName, 
            "filter_role": filterRole, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceRoleResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get roles for a user
     - parameter userId: (path) The user&#39;s id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserRoles(userId: Int32, completion: @escaping ((_ data: [RoleResource]?, _ error: ErrorResponse?) -> Void)) {
        getUserRolesWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get roles for a user
     - GET /auth/users/{user_id}/roles
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=[ {
  "role" : "role",
  "user_count" : 5,
  "name" : "name",
  "role_permission" : [ {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  }, {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  } ],
  "created_date" : 6,
  "locked" : false,
  "client_count" : 0
}, {
  "role" : "role",
  "user_count" : 5,
  "name" : "name",
  "role_permission" : [ {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  }, {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  } ],
  "created_date" : 6,
  "locked" : false,
  "client_count" : 0
} ]}]
     - parameter userId: (path) The user&#39;s id 
     - returns: RequestBuilder<[RoleResource]> 
     */
    open class func getUserRolesWithRequestBuilder(userId: Int32) -> RequestBuilder<[RoleResource]> {
        var path = "/auth/users/{user_id}/roles"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[RoleResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Set roles for a client
     - parameter clientKey: (path) The client key 
     - parameter rolesList: (body) The list of unique roles (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setClientRoles(clientKey: String, rolesList: [String]? = nil, completion: @escaping ((_ data: ClientResource?, _ error: ErrorResponse?) -> Void)) {
        setClientRolesWithRequestBuilder(clientKey: clientKey, rolesList: rolesList).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set roles for a client
     - PUT /auth/clients/{client_key}/roles
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "client_key" : "client_key",
  "grant_types" : [ "grant_types", "grant_types" ],
  "is_public" : false,
  "name" : "name",
  "id" : 6,
  "redirect_uris" : [ "redirect_uris", "redirect_uris" ],
  "secret" : "secret",
  "locked" : false,
  "access_token_validity_seconds" : 0,
  "refresh_token_validity_seconds" : 1
}}]
     - parameter clientKey: (path) The client key 
     - parameter rolesList: (body) The list of unique roles (optional)
     - returns: RequestBuilder<ClientResource> 
     */
    open class func setClientRolesWithRequestBuilder(clientKey: String, rolesList: [String]? = nil) -> RequestBuilder<ClientResource> {
        var path = "/auth/clients/{client_key}/roles"
        path = path.replacingOccurrences(of: "{client_key}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = rolesList?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ClientResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set permissions for a role
     - parameter role: (path) The role value 
     - parameter permissionsList: (body) The list of unique permissions (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setPermissionsForRole(role: String, permissionsList: [String]? = nil, completion: @escaping ((_ data: RoleResource?, _ error: ErrorResponse?) -> Void)) {
        setPermissionsForRoleWithRequestBuilder(role: role, permissionsList: permissionsList).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set permissions for a role
     - PUT /auth/roles/{role}/permissions
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "role" : "role",
  "user_count" : 5,
  "name" : "name",
  "role_permission" : [ {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  }, {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  } ],
  "created_date" : 6,
  "locked" : false,
  "client_count" : 0
}}]
     - parameter role: (path) The role value 
     - parameter permissionsList: (body) The list of unique permissions (optional)
     - returns: RequestBuilder<RoleResource> 
     */
    open class func setPermissionsForRoleWithRequestBuilder(role: String, permissionsList: [String]? = nil) -> RequestBuilder<RoleResource> {
        var path = "/auth/roles/{role}/permissions"
        path = path.replacingOccurrences(of: "{role}", with: "\(role)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = permissionsList?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RoleResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set roles for a user
     - parameter userId: (path) The user&#39;s id 
     - parameter rolesList: (body) The list of unique roles (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setUserRoles(userId: Int32, rolesList: [String]? = nil, completion: @escaping ((_ data: UserResource?, _ error: ErrorResponse?) -> Void)) {
        setUserRolesWithRequestBuilder(userId: userId, rolesList: rolesList).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set roles for a user
     - PUT /auth/users/{user_id}/roles
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "member_since" : 7,
  "template" : "template",
  "gender" : "gender",
  "city" : "city",
  "date_of_birth" : 1,
  "description" : "description",
  "currency_code" : "currency_code",
  "language_code" : "language_code",
  "password" : "password",
  "last_activity" : 5,
  "children" : [ {
    "avatar_url" : "avatar_url",
    "context" : "context",
    "relationship_id" : 6,
    "id" : 0,
    "display_name" : "display_name",
    "username" : "username"
  }, {
    "avatar_url" : "avatar_url",
    "context" : "context",
    "relationship_id" : 6,
    "id" : 0,
    "display_name" : "display_name",
    "username" : "username"
  } ],
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "id" : 5,
  "state" : "state",
  "first_name" : "first_name",
  "email" : "email",
  "last_updated" : 2,
  "address" : "address",
  "address2" : "address2",
  "last_name" : "last_name",
  "display_name" : "display_name",
  "tags" : [ "tags", "tags" ],
  "country_code" : "country_code",
  "avatar_url" : "avatar_url",
  "timezone_code" : "timezone_code",
  "fullname" : "fullname",
  "mobile_number" : "mobile_number",
  "postal_code" : "postal_code",
  "parents" : [ {
    "avatar_url" : "avatar_url",
    "context" : "context",
    "relationship_id" : 6,
    "id" : 0,
    "display_name" : "display_name",
    "username" : "username"
  }, {
    "avatar_url" : "avatar_url",
    "context" : "context",
    "relationship_id" : 6,
    "id" : 0,
    "display_name" : "display_name",
    "username" : "username"
  } ],
  "username" : "username"
}}]
     - parameter userId: (path) The user&#39;s id 
     - parameter rolesList: (body) The list of unique roles (optional)
     - returns: RequestBuilder<UserResource> 
     */
    open class func setUserRolesWithRequestBuilder(userId: Int32, rolesList: [String]? = nil) -> RequestBuilder<UserResource> {
        var path = "/auth/users/{user_id}/roles"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = rolesList?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UserResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a role
     - parameter role: (path) The role value 
     - parameter roleResource: (body) The role resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateRole(role: String, roleResource: RoleResource? = nil, completion: @escaping ((_ data: RoleResource?, _ error: ErrorResponse?) -> Void)) {
        updateRoleWithRequestBuilder(role: role, roleResource: roleResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a role
     - PUT /auth/roles/{role}
     - <b>Permissions Needed:</b> ROLES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "role" : "role",
  "user_count" : 5,
  "name" : "name",
  "role_permission" : [ {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  }, {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  } ],
  "created_date" : 6,
  "locked" : false,
  "client_count" : 0
}}]
     - parameter role: (path) The role value 
     - parameter roleResource: (body) The role resource object (optional)
     - returns: RequestBuilder<RoleResource> 
     */
    open class func updateRoleWithRequestBuilder(role: String, roleResource: RoleResource? = nil) -> RequestBuilder<RoleResource> {
        var path = "/auth/roles/{role}"
        path = path.replacingOccurrences(of: "{role}", with: "\(role)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = roleResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RoleResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
