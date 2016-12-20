//
// UsersGroupsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class UsersGroupsAPI: APIBase {
    /**
     Adds a new group in the system
     
     - parameter groupResource: (body) The new group (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addGroupUsingPOST(groupResource: GroupResource? = nil, completion: @escaping ((_ data: GroupResource?,_ error: Error?) -> Void)) {
        addGroupUsingPOSTWithRequestBuilder(groupResource: groupResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Adds a new group in the system
     - POST /users/groups
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "parent" : "aeiou",
  "sub_member_count" : 123,
  "unique_name" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "member_count" : 123,
  "message_of_the_day" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter groupResource: (body) The new group (optional)

     - returns: RequestBuilder<GroupResource> 
     */
    open class func addGroupUsingPOSTWithRequestBuilder(groupResource: GroupResource? = nil) -> RequestBuilder<GroupResource> {
        let path = "/users/groups"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = groupResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<GroupResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Adds a new member to the group
     
     - parameter uniqueName: (path) The group unique name 
     - parameter username: (body) The username of a user to add to the group 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addMemberUsingPOST(uniqueName: String, username: GroupMemberResource, completion: @escaping ((_ data: GroupMemberResource?,_ error: Error?) -> Void)) {
        addMemberUsingPOSTWithRequestBuilder(uniqueName: uniqueName, username: username).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Adds a new member to the group
     - POST /users/groups/{uniqueName}/members
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "avatar_url" : "aeiou",
  "id" : 123,
  "display_name" : "aeiou",
  "status" : "aeiou",
  "username" : "aeiou"
}}]
     
     - parameter uniqueName: (path) The group unique name 
     - parameter username: (body) The username of a user to add to the group 

     - returns: RequestBuilder<GroupMemberResource> 
     */
    open class func addMemberUsingPOSTWithRequestBuilder(uniqueName: String, username: GroupMemberResource) -> RequestBuilder<GroupMemberResource> {
        var path = "/users/groups/{uniqueName}/members"
        path = path.replacingOccurrences(of: "{uniqueName}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = username.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<GroupMemberResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a group template
     
     - parameter groupTemplateResource: (body) The group template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createGroupTemplateUsingPOST(groupTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        createGroupTemplateUsingPOSTWithRequestBuilder(groupTemplateResource: groupTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a group template
     - POST /users/groups/templates
     - Group Templates define a type of group and the properties they have
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter groupTemplateResource: (body) The group template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createGroupTemplateUsingPOSTWithRequestBuilder(groupTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/users/groups/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = groupTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a group template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteGroupTemplateUsingDELETE(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteGroupTemplateUsingDELETEWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a group template
     - DELETE /users/groups/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteGroupTemplateUsingDELETEWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/users/groups/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "cascade": cascade
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Removes a user from a group
     
     - parameter uniqueName: (path) The group unique name 
     - parameter userId: (path) The id of the user to remove 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteGroupUsingDELETE(uniqueName: String, userId: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteGroupUsingDELETEWithRequestBuilder(uniqueName: uniqueName, userId: userId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Removes a user from a group
     - DELETE /users/groups/{uniqueName}/members/{userId}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter uniqueName: (path) The group unique name 
     - parameter userId: (path) The id of the user to remove 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteGroupUsingDELETEWithRequestBuilder(uniqueName: String, userId: Int32) -> RequestBuilder<Void> {
        var path = "/users/groups/{uniqueName}/members/{userId}"
        path = path.replacingOccurrences(of: "{uniqueName}", with: "\(uniqueName)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Removes a group from the system IF no resources are attached to it
     
     - parameter uniqueName: (path) The group unique name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteGroupUsingDELETE1(uniqueName: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteGroupUsingDELETE1WithRequestBuilder(uniqueName: uniqueName).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Removes a group from the system IF no resources are attached to it
     - DELETE /users/groups/{uniqueName}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter uniqueName: (path) The group unique name 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteGroupUsingDELETE1WithRequestBuilder(uniqueName: String) -> RequestBuilder<Void> {
        var path = "/users/groups/{uniqueName}"
        path = path.replacingOccurrences(of: "{uniqueName}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single group template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupTemplateUsingGET(id: String, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        getGroupTemplateUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single group template
     - GET /users/groups/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getGroupTemplateUsingGETWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/users/groups/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search group templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupTemplatesUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?,_ error: Error?) -> Void)) {
        getGroupTemplatesUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search group templates
     - GET /users/groups/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "aeiou",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "aeiou"
  } ],
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : "aeiou",
    "updated_date" : 123456789,
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
     - parameter order: (query) a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceTemplateResource> 
     */
    open class func getGroupTemplatesUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/users/groups/templates"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Loads a specific group's details
     
     - parameter uniqueName: (path) The group unique name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupUsingGET(uniqueName: String, completion: @escaping ((_ data: GroupResource?,_ error: Error?) -> Void)) {
        getGroupUsingGETWithRequestBuilder(uniqueName: uniqueName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Loads a specific group's details
     - GET /users/groups/{uniqueName}
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "parent" : "aeiou",
  "sub_member_count" : 123,
  "unique_name" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "member_count" : 123,
  "message_of_the_day" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter uniqueName: (path) The group unique name 

     - returns: RequestBuilder<GroupResource> 
     */
    open class func getGroupUsingGETWithRequestBuilder(uniqueName: String) -> RequestBuilder<GroupResource> {
        var path = "/users/groups/{uniqueName}"
        path = path.replacingOccurrences(of: "{uniqueName}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<GroupResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Lists members of the group
     
     - parameter uniqueName: (path) The group unique name 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchGroupsUsingGET(uniqueName: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceGroupMemberResource?,_ error: Error?) -> Void)) {
        searchGroupsUsingGETWithRequestBuilder(uniqueName: uniqueName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Lists members of the group
     - GET /users/groups/{uniqueName}/members
     - examples: [{contentType=application/json, example={
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "aeiou",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "aeiou"
  } ],
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "avatar_url" : "aeiou",
    "id" : 123,
    "display_name" : "aeiou",
    "status" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter uniqueName: (path) The group unique name 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceGroupMemberResource> 
     */
    open class func searchGroupsUsingGETWithRequestBuilder(uniqueName: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceGroupMemberResource> {
        var path = "/users/groups/{uniqueName}/members"
        path = path.replacingOccurrences(of: "{uniqueName}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceGroupMemberResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     List and search groups
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchGroupsUsingGET1(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceGroupResource?,_ error: Error?) -> Void)) {
        searchGroupsUsingGET1WithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search groups
     - GET /users/groups
     - examples: [{contentType=application/json, example={
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "aeiou",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "aeiou"
  } ],
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "template" : "aeiou",
    "parent" : "aeiou",
    "sub_member_count" : 123,
    "unique_name" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "member_count" : 123,
    "message_of_the_day" : "aeiou",
    "status" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<PageResourceGroupResource> 
     */
    open class func searchGroupsUsingGET1WithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceGroupResource> {
        let path = "/users/groups"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceGroupResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a group template
     
     - parameter id: (path) The id of the template 
     - parameter groupTemplateResource: (body) The group template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateGroupTemplateUsingPUT(id: String, groupTemplateResource: TemplateResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateGroupTemplateUsingPUTWithRequestBuilder(id: id, groupTemplateResource: groupTemplateResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a group template
     - PUT /users/groups/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter groupTemplateResource: (body) The group template resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateGroupTemplateUsingPUTWithRequestBuilder(id: String, groupTemplateResource: TemplateResource? = nil) -> RequestBuilder<Void> {
        var path = "/users/groups/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = groupTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Modifies a group's details
     
     - parameter uniqueName: (path) The group unique name 
     - parameter groupResource: (body) The updated group (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateGroupUsingPUT(uniqueName: String, groupResource: GroupResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateGroupUsingPUTWithRequestBuilder(uniqueName: uniqueName, groupResource: groupResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Modifies a group's details
     - PUT /users/groups/{uniqueName}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter uniqueName: (path) The group unique name 
     - parameter groupResource: (body) The updated group (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateGroupUsingPUTWithRequestBuilder(uniqueName: String, groupResource: GroupResource? = nil) -> RequestBuilder<Void> {
        var path = "/users/groups/{uniqueName}"
        path = path.replacingOccurrences(of: "{uniqueName}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = groupResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Change a user's status
     
     - parameter uniqueName: (path) The group unique name 
     - parameter userId: (path) The user id of the member to modify 
     - parameter status: (body) The new status for the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateMemberStatusUsingPUT(uniqueName: String, userId: Int32, status: String, completion: @escaping ((_ error: Error?) -> Void)) {
        updateMemberStatusUsingPUTWithRequestBuilder(uniqueName: uniqueName, userId: userId, status: status).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Change a user's status
     - PUT /users/groups/{uniqueName}/members/{userId}/status
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter uniqueName: (path) The group unique name 
     - parameter userId: (path) The user id of the member to modify 
     - parameter status: (body) The new status for the user 

     - returns: RequestBuilder<Void> 
     */
    open class func updateMemberStatusUsingPUTWithRequestBuilder(uniqueName: String, userId: Int32, status: String) -> RequestBuilder<Void> {
        var path = "/users/groups/{uniqueName}/members/{userId}/status"
        path = path.replacingOccurrences(of: "{uniqueName}", with: "\(uniqueName)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = status.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
