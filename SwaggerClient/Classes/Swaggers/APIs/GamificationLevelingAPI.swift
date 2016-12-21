//
// GamificationLevelingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class GamificationLevelingAPI: APIBase {
    /**
     Update or create a leveling progress record for a user
     
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter progress: (body) The current progress amount (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func changeUserLevelExperienceUsingPUT(userId: Int32, name: String, progress: Int32? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        changeUserLevelExperienceUsingPUTWithRequestBuilder(userId: userId, name: name, progress: progress).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update or create a leveling progress record for a user
     - PUT /users/{userId}/leveling/{name}
     - If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter progress: (body) The current progress amount (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func changeUserLevelExperienceUsingPUTWithRequestBuilder(userId: Int32, name: String, progress: Int32? = nil) -> RequestBuilder<Void> {
        var path = "/users/{userId}/leveling/{name}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = progress?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a level schema
     
     - parameter level: (body) The level schema definition (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createLevelUsingPOST(level: LevelingResource? = nil, completion: @escaping ((_ data: LevelingResource?,_ error: Error?) -> Void)) {
        createLevelUsingPOSTWithRequestBuilder(level: level).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a level schema
     - POST /leveling
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "tiers" : [ {
    "name" : "aeiou",
    "additional_properties" : {
      "key" : ""
    },
    "required_progress" : 123,
    "trigger_event_name" : "aeiou"
  } ],
  "name" : "aeiou",
  "description" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 123456789,
  "updated_date" : 123456789
}}]
     
     - parameter level: (body) The level schema definition (optional)

     - returns: RequestBuilder<LevelingResource> 
     */
    open class func createLevelUsingPOSTWithRequestBuilder(level: LevelingResource? = nil) -> RequestBuilder<LevelingResource> {
        let path = "/leveling"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = level?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a level
     
     - parameter name: (path) The level schema name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteLevelUsingDELETE(name: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteLevelUsingDELETEWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a level
     - DELETE /leveling/{name}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter name: (path) The level schema name 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteLevelUsingDELETEWithRequestBuilder(name: String) -> RequestBuilder<Void> {
        var path = "/leveling/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the list of triggers that can be used to trigger a leveling progress update
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAvailableTriggersUsingGET1(completion: @escaping ((_ data: [BreTriggerResource]?,_ error: Error?) -> Void)) {
        getAvailableTriggersUsingGET1WithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get the list of triggers that can be used to trigger a leveling progress update
     - GET /leveling/triggers
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example=[ {
  "trigger_name" : "aeiou",
  "system_trigger" : false,
  "event_name" : "aeiou",
  "category" : "aeiou",
  "parameters" : [ {
    "name" : "aeiou",
    "type" : "aeiou"
  } ],
  "trigger_description" : "aeiou"
} ]}]

     - returns: RequestBuilder<[BreTriggerResource]> 
     */
    open class func getAvailableTriggersUsingGET1WithRequestBuilder() -> RequestBuilder<[BreTriggerResource]> {
        let path = "/leveling/triggers"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[BreTriggerResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Retrieve a particular level
     
     - parameter name: (path) The level schema name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLevelUsingGET(name: String, completion: @escaping ((_ data: LevelingResource?,_ error: Error?) -> Void)) {
        getLevelUsingGETWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve a particular level
     - GET /leveling/{name}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "tiers" : [ {
    "name" : "aeiou",
    "additional_properties" : {
      "key" : ""
    },
    "required_progress" : 123,
    "trigger_event_name" : "aeiou"
  } ],
  "name" : "aeiou",
  "description" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 123456789,
  "updated_date" : 123456789
}}]
     
     - parameter name: (path) The level schema name 

     - returns: RequestBuilder<LevelingResource> 
     */
    open class func getLevelUsingGETWithRequestBuilder(name: String) -> RequestBuilder<LevelingResource> {
        var path = "/leveling/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search levels
     
     - parameter filterName: (query) Filter for level schemas whose name contains a given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLevelsUsingGET(filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceLevelingResource?,_ error: Error?) -> Void)) {
        getLevelsUsingGETWithRequestBuilder(filterName: filterName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search levels
     - GET /leveling
     - Get a list of levels schemas with optional filtering
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
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
    "tiers" : [ {
      "name" : "aeiou",
      "additional_properties" : {
        "key" : ""
      },
      "required_progress" : 123,
      "trigger_event_name" : "aeiou"
    } ],
    "name" : "aeiou",
    "description" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 123456789,
    "updated_date" : 123456789
  } ],
  "first" : true
}}]
     
     - parameter filterName: (query) Filter for level schemas whose name contains a given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<PageResourceLevelingResource> 
     */
    open class func getLevelsUsingGETWithRequestBuilder(filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceLevelingResource> {
        let path = "/leveling"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_name": filterName,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceLevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a user's progress for a given level schema
     
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLevelUsingGET(userId: Int32, name: String, completion: @escaping ((_ data: UserLevelingResource?,_ error: Error?) -> Void)) {
        getUserLevelUsingGETWithRequestBuilder(userId: userId, name: name).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a user's progress for a given level schema
     - GET /users/{userId}/leveling/{name}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "last_tier_name" : "aeiou",
  "level_name" : "aeiou",
  "next_tier_name" : "aeiou",
  "tier_names" : [ "aeiou" ],
  "user_id" : 123,
  "progress" : 123,
  "last_tier_progress" : 123,
  "next_tier_progress" : 123
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 

     - returns: RequestBuilder<UserLevelingResource> 
     */
    open class func getUserLevelUsingGETWithRequestBuilder(userId: Int32, name: String) -> RequestBuilder<UserLevelingResource> {
        var path = "/users/{userId}/leveling/{name}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UserLevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a user's progress for all level schemas
     
     - parameter userId: (path) The id of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLevelsUsingGET(userId: Int32, completion: @escaping ((_ data: PageResourceUserLevelingResource?,_ error: Error?) -> Void)) {
        getUserLevelsUsingGETWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a user's progress for all level schemas
     - GET /users/{userId}/leveling
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
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
    "last_tier_name" : "aeiou",
    "level_name" : "aeiou",
    "next_tier_name" : "aeiou",
    "tier_names" : [ "aeiou" ],
    "user_id" : 123,
    "progress" : 123,
    "last_tier_progress" : 123,
    "next_tier_progress" : 123
  } ],
  "first" : true
}}]
     
     - parameter userId: (path) The id of the user 

     - returns: RequestBuilder<PageResourceUserLevelingResource> 
     */
    open class func getUserLevelsUsingGETWithRequestBuilder(userId: Int32) -> RequestBuilder<PageResourceUserLevelingResource> {
        var path = "/users/{userId}/leveling"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceUserLevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a level
     
     - parameter name: (path) The level schema name 
     - parameter newLevel: (body) The level schema definition (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateLevelUsingPUT(name: String, newLevel: LevelingResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateLevelUsingPUTWithRequestBuilder(name: name, newLevel: newLevel).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a level
     - PUT /leveling/{name}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter name: (path) The level schema name 
     - parameter newLevel: (body) The level schema definition (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateLevelUsingPUTWithRequestBuilder(name: String, newLevel: LevelingResource? = nil) -> RequestBuilder<Void> {
        var path = "/leveling/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = newLevel?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
