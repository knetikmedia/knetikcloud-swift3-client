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
    open class func createPermissionUsingPOST(permissionResource: PermissionResource? = nil, completion: @escaping ((_ data: PermissionResource?,_ error: Error?) -> Void)) {
        createPermissionUsingPOSTWithRequestBuilder(permissionResource: permissionResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new permission
     - POST /auth/permissions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter permissionResource: (body) The permission resource object (optional)

     - returns: RequestBuilder<PermissionResource> 
     */
    open class func createPermissionUsingPOSTWithRequestBuilder(permissionResource: PermissionResource? = nil) -> RequestBuilder<PermissionResource> {
        let path = "/auth/permissions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = permissionResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PermissionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a permission
     
     - parameter permission: (path) The permission value 
     - parameter force: (query) If true, removes permission assigned to roles (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePermissionUsingDELETE(permission: String, force: Bool? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deletePermissionUsingDELETEWithRequestBuilder(permission: permission, force: force).execute { (response, error) -> Void in
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
    open class func deletePermissionUsingDELETEWithRequestBuilder(permission: String, force: Bool? = nil) -> RequestBuilder<Void> {
        var path = "/auth/permissions/{permission}"
        path = path.replacingOccurrences(of: "{permission}", with: "\(permission)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "force": force
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single permission
     
     - parameter permission: (path) The permission value 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPermissionUsingGET(permission: String, completion: @escaping ((_ data: PermissionResource?,_ error: Error?) -> Void)) {
        getPermissionUsingGETWithRequestBuilder(permission: permission).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single permission
     - GET /auth/permissions/{permission}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter permission: (path) The permission value 

     - returns: RequestBuilder<PermissionResource> 
     */
    open class func getPermissionUsingGETWithRequestBuilder(permission: String) -> RequestBuilder<PermissionResource> {
        var path = "/auth/permissions/{permission}"
        path = path.replacingOccurrences(of: "{permission}", with: "\(permission)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PermissionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search permissions
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPermissionUsingGET1(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PagePermissionResource?,_ error: Error?) -> Void)) {
        getPermissionUsingGET1WithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search permissions
     - GET /auth/permissions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)

     - returns: RequestBuilder<PagePermissionResource> 
     */
    open class func getPermissionUsingGET1WithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PagePermissionResource> {
        let path = "/auth/permissions"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PagePermissionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a permission
     
     - parameter permission: (path) The permission value 
     - parameter permissionResource: (body) The permission resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePermissionUsingPUT(permission: String, permissionResource: PermissionResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updatePermissionUsingPUTWithRequestBuilder(permission: permission, permissionResource: permissionResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a permission
     - PUT /auth/permissions/{permission}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter permission: (path) The permission value 
     - parameter permissionResource: (body) The permission resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updatePermissionUsingPUTWithRequestBuilder(permission: String, permissionResource: PermissionResource? = nil) -> RequestBuilder<Void> {
        var path = "/auth/permissions/{permission}"
        path = path.replacingOccurrences(of: "{permission}", with: "\(permission)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = permissionResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
