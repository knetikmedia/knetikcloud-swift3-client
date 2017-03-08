//
// AuthPermissionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AuthPermissionsAPI: APIBase {
    /**
     Create a new permission
     
     - parameter permissionResource: (body) The permission resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPermission(permissionResource: PermissionResource? = nil, completion: @escaping ((_ data: PermissionResource?,_ error: Error?) -> Void)) {
        createPermissionWithRequestBuilder(permissionResource: permissionResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new permission
     - POST /auth/permissions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "parent" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "permission" : "aeiou",
  "created_date" : 2,
  "updated_date" : 2,
  "locked" : false
}}]
     
     - parameter permissionResource: (body) The permission resource object (optional)

     - returns: RequestBuilder<PermissionResource> 
     */
    open class func createPermissionWithRequestBuilder(permissionResource: PermissionResource? = nil) -> RequestBuilder<PermissionResource> {
        let path = "/auth/permissions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = permissionResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PermissionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a permission
     
     - parameter permission: (path) The permission value 
     - parameter force: (query) If true, removes permission assigned to roles (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePermission(permission: String, force: Bool? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deletePermissionWithRequestBuilder(permission: permission, force: force).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a permission
     - DELETE /auth/permissions/{permission}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter permission: (path) The permission value 
     - parameter force: (query) If true, removes permission assigned to roles (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deletePermissionWithRequestBuilder(permission: String, force: Bool? = nil) -> RequestBuilder<Void> {
        var path = "/auth/permissions/{permission}"
        path = path.replacingOccurrences(of: "{permission}", with: "\(permission)", options: .literal, range: nil)
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
     Get a single permission
     
     - parameter permission: (path) The permission value 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPermission(permission: String, completion: @escaping ((_ data: PermissionResource?,_ error: Error?) -> Void)) {
        getPermissionWithRequestBuilder(permission: permission).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single permission
     - GET /auth/permissions/{permission}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "parent" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "permission" : "aeiou",
  "created_date" : 9,
  "updated_date" : 5,
  "locked" : false
}}]
     
     - parameter permission: (path) The permission value 

     - returns: RequestBuilder<PermissionResource> 
     */
    open class func getPermissionWithRequestBuilder(permission: String) -> RequestBuilder<PermissionResource> {
        var path = "/auth/permissions/{permission}"
        path = path.replacingOccurrences(of: "{permission}", with: "\(permission)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PermissionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search permissions
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to permission:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPermissions(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourcePermissionResource?,_ error: Error?) -> Void)) {
        getPermissionsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search permissions
     - GET /auth/permissions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 9,
  "last" : true,
  "size" : 6,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 5,
  "number_of_elements" : 6,
  "content" : [ {
    "parent" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "permission" : "aeiou",
    "created_date" : 7,
    "updated_date" : 2,
    "locked" : false
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to permission:ASC)

     - returns: RequestBuilder<PageResourcePermissionResource> 
     */
    open class func getPermissionsWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourcePermissionResource> {
        let path = "/auth/permissions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourcePermissionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a permission
     
     - parameter permission: (path) The permission value 
     - parameter permissionResource: (body) The permission resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePermission(permission: String, permissionResource: PermissionResource? = nil, completion: @escaping ((_ data: PermissionResource?,_ error: Error?) -> Void)) {
        updatePermissionWithRequestBuilder(permission: permission, permissionResource: permissionResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a permission
     - PUT /auth/permissions/{permission}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "parent" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "permission" : "aeiou",
  "created_date" : 9,
  "updated_date" : 8,
  "locked" : false
}}]
     
     - parameter permission: (path) The permission value 
     - parameter permissionResource: (body) The permission resource object (optional)

     - returns: RequestBuilder<PermissionResource> 
     */
    open class func updatePermissionWithRequestBuilder(permission: String, permissionResource: PermissionResource? = nil) -> RequestBuilder<PermissionResource> {
        var path = "/auth/permissions/{permission}"
        path = path.replacingOccurrences(of: "{permission}", with: "\(permission)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = permissionResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PermissionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
