//
// GamificationLevelingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class GamificationLevelingAPI: APIBase {
    /**
     Create a level schema
     
     - parameter level: (body) The level schema definition (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createLevel(level: LevelingResource? = nil, completion: @escaping ((_ data: LevelingResource?,_ error: Error?) -> Void)) {
        createLevelWithRequestBuilder(level: level).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a level schema
     - POST /leveling
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "tiers" : [ {
    "name" : "aeiou",
    "additional_properties" : {
      "key" : ""
    },
    "required_progress" : 1,
    "trigger_event_name" : "aeiou"
  } ],
  "name" : "aeiou",
  "description" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 8,
  "updated_date" : 0
}}]
     
     - parameter level: (body) The level schema definition (optional)

     - returns: RequestBuilder<LevelingResource> 
     */
    open class func createLevelWithRequestBuilder(level: LevelingResource? = nil) -> RequestBuilder<LevelingResource> {
        let path = "/leveling"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = level?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a level
     
     - parameter name: (path) The level schema name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteLevel(name: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteLevelWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a level
     - DELETE /leveling/{name}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter name: (path) The level schema name 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteLevelWithRequestBuilder(name: String) -> RequestBuilder<Void> {
        var path = "/leveling/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieve a level
     
     - parameter name: (path) The level schema name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLevel(name: String, completion: @escaping ((_ data: LevelingResource?,_ error: Error?) -> Void)) {
        getLevelWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve a level
     - GET /leveling/{name}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "tiers" : [ {
    "name" : "aeiou",
    "additional_properties" : {
      "key" : ""
    },
    "required_progress" : 1,
    "trigger_event_name" : "aeiou"
  } ],
  "name" : "aeiou",
  "description" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 7,
  "updated_date" : 5
}}]
     
     - parameter name: (path) The level schema name 

     - returns: RequestBuilder<LevelingResource> 
     */
    open class func getLevelWithRequestBuilder(name: String) -> RequestBuilder<LevelingResource> {
        var path = "/leveling/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the list of triggers that can be used to trigger a leveling progress update
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLevelTriggers(completion: @escaping ((_ data: [BreTriggerResource]?,_ error: Error?) -> Void)) {
        getLevelTriggersWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get the list of triggers that can be used to trigger a leveling progress update
     - GET /leveling/triggers
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "trigger_name" : "aeiou",
  "system_trigger" : false,
  "event_name" : "aeiou",
  "category" : "achievement",
  "parameters" : [ {
    "name" : "aeiou",
    "type" : "aeiou"
  } ],
  "trigger_description" : "aeiou"
} ]}]

     - returns: RequestBuilder<[BreTriggerResource]> 
     */
    open class func getLevelTriggersWithRequestBuilder() -> RequestBuilder<[BreTriggerResource]> {
        let path = "/leveling/triggers"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[BreTriggerResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search levels
     
     - parameter filterName: (query) Filter for level schemas whose name contains a given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLevels(filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceLevelingResource?,_ error: Error?) -> Void)) {
        getLevelsWithRequestBuilder(filterName: filterName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search levels
     - GET /leveling
     - Get a list of levels schemas with optional filtering
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 7,
  "total_elements" : 9,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 4,
  "content" : [ {
    "tiers" : [ {
      "name" : "aeiou",
      "additional_properties" : {
        "key" : ""
      },
      "required_progress" : 1,
      "trigger_event_name" : "aeiou"
    } ],
    "name" : "aeiou",
    "description" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 5,
    "updated_date" : 1
  } ],
  "first" : true
}}]
     
     - parameter filterName: (query) Filter for level schemas whose name contains a given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<PageResourceLevelingResource> 
     */
    open class func getLevelsWithRequestBuilder(filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceLevelingResource> {
        let path = "/leveling"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_name": filterName, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceLevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a user's progress for a given level schema
     
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLevel(userId: Int32, name: String, completion: @escaping ((_ data: UserLevelingResource?,_ error: Error?) -> Void)) {
        getUserLevelWithRequestBuilder(userId: userId, name: name).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a user's progress for a given level schema
     - GET /users/{userId}/leveling/{name}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "last_tier_name" : "aeiou",
  "level_name" : "aeiou",
  "next_tier_name" : "aeiou",
  "tier_names" : [ "aeiou" ],
  "user_id" : 0,
  "progress" : 1,
  "last_tier_progress" : 1,
  "next_tier_progress" : 7
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 

     - returns: RequestBuilder<UserLevelingResource> 
     */
    open class func getUserLevelWithRequestBuilder(userId: Int32, name: String) -> RequestBuilder<UserLevelingResource> {
        var path = "/users/{userId}/leveling/{name}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserLevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a user's progress for all level schemas
     
     - parameter userId: (path) The id of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLevels(userId: Int32, completion: @escaping ((_ data: PageResourceUserLevelingResource?,_ error: Error?) -> Void)) {
        getUserLevelsWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a user's progress for all level schemas
     - GET /users/{userId}/leveling
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 6,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 3,
  "content" : [ {
    "last_tier_name" : "aeiou",
    "level_name" : "aeiou",
    "next_tier_name" : "aeiou",
    "tier_names" : [ "aeiou" ],
    "user_id" : 8,
    "progress" : 0,
    "last_tier_progress" : 1,
    "next_tier_progress" : 3
  } ],
  "first" : true
}}]
     
     - parameter userId: (path) The id of the user 

     - returns: RequestBuilder<PageResourceUserLevelingResource> 
     */
    open class func getUserLevelsWithRequestBuilder(userId: Int32) -> RequestBuilder<PageResourceUserLevelingResource> {
        var path = "/users/{userId}/leveling"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PageResourceUserLevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a level
     
     - parameter name: (path) The level schema name 
     - parameter newLevel: (body) The level schema definition (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateLevel(name: String, newLevel: LevelingResource? = nil, completion: @escaping ((_ data: LevelingResource?,_ error: Error?) -> Void)) {
        updateLevelWithRequestBuilder(name: name, newLevel: newLevel).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a level
     - PUT /leveling/{name}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "tiers" : [ {
    "name" : "aeiou",
    "additional_properties" : {
      "key" : ""
    },
    "required_progress" : 1,
    "trigger_event_name" : "aeiou"
  } ],
  "name" : "aeiou",
  "description" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 3,
  "updated_date" : 8
}}]
     
     - parameter name: (path) The level schema name 
     - parameter newLevel: (body) The level schema definition (optional)

     - returns: RequestBuilder<LevelingResource> 
     */
    open class func updateLevelWithRequestBuilder(name: String, newLevel: LevelingResource? = nil) -> RequestBuilder<LevelingResource> {
        var path = "/leveling/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = newLevel?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LevelingResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update or create a leveling progress record for a user
     
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter progress: (body) The current progress amount (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserLevel(userId: Int32, name: String, progress: Int32? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateUserLevelWithRequestBuilder(userId: userId, name: name, progress: progress).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update or create a leveling progress record for a user
     - PUT /users/{userId}/leveling/{name}
     - If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter progress: (body) The current progress amount (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateUserLevelWithRequestBuilder(userId: Int32, name: String, progress: Int32? = nil) -> RequestBuilder<Void> {
        var path = "/users/{userId}/leveling/{name}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = progress?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
