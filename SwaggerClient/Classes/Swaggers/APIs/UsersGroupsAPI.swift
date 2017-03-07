//
// UsersGroupsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class UsersGroupsAPI: APIBase {
    /**
     Adds a new member to the group
     
     - parameter uniqueName: (path) The group unique name 
     - parameter username: (body) The username of a user to add to the group 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addMemberToGroup(uniqueName: String, username: GroupMemberResource, completion: @escaping ((_ data: GroupMemberResource?,_ error: Error?) -> Void)) {
        addMemberToGroupWithRequestBuilder(uniqueName: uniqueName, username: username).execute { (response, error) -> Void in
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
  "id" : 6,
  "display_name" : "aeiou",
  "status" : "moderator",
  "username" : "aeiou"
}}]
     
     - parameter uniqueName: (path) The group unique name 
     - parameter username: (body) The username of a user to add to the group 

     - returns: RequestBuilder<GroupMemberResource> 
     */
    open class func addMemberToGroupWithRequestBuilder(uniqueName: String, username: GroupMemberResource) -> RequestBuilder<GroupMemberResource> {
        var path = "/users/groups/{uniqueName}/members"
        path = path.replacingOccurrences(of: "{unique_name}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = username.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<GroupMemberResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a group
     
     - parameter groupResource: (body) The new group (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createGroup(groupResource: GroupResource? = nil, completion: @escaping ((_ data: GroupResource?,_ error: Error?) -> Void)) {
        createGroupWithRequestBuilder(groupResource: groupResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a group
     - POST /users/groups
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "parent" : "aeiou",
  "sub_member_count" : 5,
  "unique_name" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "member_count" : 4,
  "message_of_the_day" : "aeiou",
  "status" : "open"
}}]
     
     - parameter groupResource: (body) The new group (optional)

     - returns: RequestBuilder<GroupResource> 
     */
    open class func createGroupWithRequestBuilder(groupResource: GroupResource? = nil) -> RequestBuilder<GroupResource> {
        let path = "/users/groups"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = groupResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<GroupResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a group template
     
     - parameter groupTemplateResource: (body) The group template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createGroupTemplate(groupTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        createGroupTemplateWithRequestBuilder(groupTemplateResource: groupTemplateResource).execute { (response, error) -> Void in
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
  "created_date" : 8,
  "id" : "aeiou",
  "updated_date" : 8,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter groupTemplateResource: (body) The group template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createGroupTemplateWithRequestBuilder(groupTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/users/groups/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = groupTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Removes a group from the system IF no resources are attached to it
     
     - parameter uniqueName: (path) The group unique name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteGroup(uniqueName: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteGroupWithRequestBuilder(uniqueName: uniqueName).execute { (response, error) -> Void in
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
    open class func deleteGroupWithRequestBuilder(uniqueName: String) -> RequestBuilder<Void> {
        var path = "/users/groups/{uniqueName}"
        path = path.replacingOccurrences(of: "{unique_name}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a group template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteGroupTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteGroupTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
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
    open class func deleteGroupTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/users/groups/templates/{id}"
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
     Loads a specific group's details
     
     - parameter uniqueName: (path) The group unique name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroup(uniqueName: String, completion: @escaping ((_ data: GroupResource?,_ error: Error?) -> Void)) {
        getGroupWithRequestBuilder(uniqueName: uniqueName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Loads a specific group's details
     - GET /users/groups/{uniqueName}
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "parent" : "aeiou",
  "sub_member_count" : 2,
  "unique_name" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "member_count" : 1,
  "message_of_the_day" : "aeiou",
  "status" : "open"
}}]
     
     - parameter uniqueName: (path) The group unique name 

     - returns: RequestBuilder<GroupResource> 
     */
    open class func getGroupWithRequestBuilder(uniqueName: String) -> RequestBuilder<GroupResource> {
        var path = "/users/groups/{uniqueName}"
        path = path.replacingOccurrences(of: "{unique_name}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<GroupResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a user from a group
     
     - parameter uniqueName: (path) The group unique name 
     - parameter userId: (path) The id of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupMember(uniqueName: String, userId: Int32, completion: @escaping ((_ data: GroupMemberResource?,_ error: Error?) -> Void)) {
        getGroupMemberWithRequestBuilder(uniqueName: uniqueName, userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a user from a group
     - GET /users/groups/{uniqueName}/members/{userId}
     - examples: [{contentType=application/json, example={
  "avatar_url" : "aeiou",
  "id" : 2,
  "display_name" : "aeiou",
  "status" : "moderator",
  "username" : "aeiou"
}}]
     
     - parameter uniqueName: (path) The group unique name 
     - parameter userId: (path) The id of the user 

     - returns: RequestBuilder<GroupMemberResource> 
     */
    open class func getGroupMemberWithRequestBuilder(uniqueName: String, userId: Int32) -> RequestBuilder<GroupMemberResource> {
        var path = "/users/groups/{uniqueName}/members/{userId}"
        path = path.replacingOccurrences(of: "{unique_name}", with: "\(uniqueName)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<GroupMemberResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Lists members of the group
     
     - parameter uniqueName: (path) The group unique name 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupMembers(uniqueName: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceGroupMemberResource?,_ error: Error?) -> Void)) {
        getGroupMembersWithRequestBuilder(uniqueName: uniqueName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Lists members of the group
     - GET /users/groups/{uniqueName}/members
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 5,
  "number_of_elements" : 1,
  "content" : [ {
    "avatar_url" : "aeiou",
    "id" : 1,
    "display_name" : "aeiou",
    "status" : "moderator",
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
    open class func getGroupMembersWithRequestBuilder(uniqueName: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceGroupMemberResource> {
        var path = "/users/groups/{uniqueName}/members"
        path = path.replacingOccurrences(of: "{unique_name}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceGroupMemberResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single group template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupTemplate(id: String, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        getGroupTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
  "created_date" : 5,
  "id" : "aeiou",
  "updated_date" : 5,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getGroupTemplateWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/users/groups/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search group templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?,_ error: Error?) -> Void)) {
        getGroupTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
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
  "number" : 1,
  "last" : true,
  "size" : 3,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 0,
  "number_of_elements" : 0,
  "content" : [ {
    "name" : "aeiou",
    "created_date" : 3,
    "id" : "aeiou",
    "updated_date" : 2,
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
    open class func getGroupTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/users/groups/templates"
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
     List groups a user is in
     
     - parameter userId: (path) The id of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupsForUser(userId: Int32, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        getGroupsForUserWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List groups a user is in
     - GET /users/{userId}/groups
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]
     
     - parameter userId: (path) The id of the user 

     - returns: RequestBuilder<[String]> 
     */
    open class func getGroupsForUserWithRequestBuilder(userId: Int32) -> RequestBuilder<[String]> {
        var path = "/users/{userId}/groups"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Removes a user from a group
     
     - parameter uniqueName: (path) The group unique name 
     - parameter userId: (path) The id of the user to remove 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeGroupMember(uniqueName: String, userId: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        removeGroupMemberWithRequestBuilder(uniqueName: uniqueName, userId: userId).execute { (response, error) -> Void in
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
    open class func removeGroupMemberWithRequestBuilder(uniqueName: String, userId: Int32) -> RequestBuilder<Void> {
        var path = "/users/groups/{uniqueName}/members/{userId}"
        path = path.replacingOccurrences(of: "{unique_name}", with: "\(uniqueName)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a group
     
     - parameter uniqueName: (path) The group unique name 
     - parameter groupResource: (body) The updated group (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateGroup(uniqueName: String, groupResource: GroupResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateGroupWithRequestBuilder(uniqueName: uniqueName, groupResource: groupResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a group
     - PUT /users/groups/{uniqueName}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter uniqueName: (path) The group unique name 
     - parameter groupResource: (body) The updated group (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateGroupWithRequestBuilder(uniqueName: String, groupResource: GroupResource? = nil) -> RequestBuilder<Void> {
        var path = "/users/groups/{uniqueName}"
        path = path.replacingOccurrences(of: "{unique_name}", with: "\(uniqueName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = groupResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Change a user's status
     
     - parameter uniqueName: (path) The group unique name 
     - parameter userId: (path) The user id of the member to modify 
     - parameter status: (body) The new status for the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateGroupMemberStatus(uniqueName: String, userId: Int32, status: String, completion: @escaping ((_ error: Error?) -> Void)) {
        updateGroupMemberStatusWithRequestBuilder(uniqueName: uniqueName, userId: userId, status: status).execute { (response, error) -> Void in
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
    open class func updateGroupMemberStatusWithRequestBuilder(uniqueName: String, userId: Int32, status: String) -> RequestBuilder<Void> {
        var path = "/users/groups/{uniqueName}/members/{userId}/status"
        path = path.replacingOccurrences(of: "{unique_name}", with: "\(uniqueName)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = status.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a group template
     
     - parameter id: (path) The id of the template 
     - parameter groupTemplateResource: (body) The group template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateGroupTemplate(id: String, groupTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        updateGroupTemplateWithRequestBuilder(id: id, groupTemplateResource: groupTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a group template
     - PUT /users/groups/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 4,
  "id" : "aeiou",
  "updated_date" : 6,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter groupTemplateResource: (body) The group template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func updateGroupTemplateWithRequestBuilder(id: String, groupTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        var path = "/users/groups/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = groupTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     List and search groups
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateGroups(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceGroupResource?,_ error: Error?) -> Void)) {
        updateGroupsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search groups
     - GET /users/groups
     - examples: [{contentType=application/json, example={
  "number" : 9,
  "last" : true,
  "size" : 9,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 6,
  "number_of_elements" : 9,
  "content" : [ {
    "template" : "aeiou",
    "parent" : "aeiou",
    "sub_member_count" : 4,
    "unique_name" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "member_count" : 8,
    "message_of_the_day" : "aeiou",
    "status" : "open"
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<PageResourceGroupResource> 
     */
    open class func updateGroupsWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceGroupResource> {
        let path = "/users/groups"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceGroupResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}