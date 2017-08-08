//
// GamificationLevelingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class GamificationLevelingAPI: APIBase {
    /**
     Create a level schema
     - parameter level: (body) The level schema definition (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createLevel(level: LevelingResource? = nil, completion: @escaping ((_ data: LevelingResource?, _ error: ErrorResponse?) -> Void)) {
        createLevelWithRequestBuilder(level: level).execute { (response, error) -> Void in
            completion(response?.body, error)
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
    "name" : "name",
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "required_progress" : 6,
    "trigger_event_name" : "trigger_event_name"
  }, {
    "name" : "name",
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "required_progress" : 6,
    "trigger_event_name" : "trigger_event_name"
  } ],
  "name" : "name",
  "description" : "description",
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "created_date" : 0,
  "updated_date" : 1
}}]
     - parameter level: (body) The level schema definition (optional)
     - returns: RequestBuilder<LevelingResource> 
     */
    open class func createLevelWithRequestBuilder(level: LevelingResource? = nil) -> RequestBuilder<LevelingResource> {
        let path = "/leveling"
        let URLString = JSAPIAPI.basePath + path
        let parameters = level?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LevelingResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a level
     - parameter name: (path) The level schema name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteLevel(name: String, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteLevelWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(error)
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
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieve a level
     - parameter name: (path) The level schema name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLevel(name: String, completion: @escaping ((_ data: LevelingResource?, _ error: ErrorResponse?) -> Void)) {
        getLevelWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(response?.body, error)
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
    "name" : "name",
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "required_progress" : 6,
    "trigger_event_name" : "trigger_event_name"
  }, {
    "name" : "name",
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "required_progress" : 6,
    "trigger_event_name" : "trigger_event_name"
  } ],
  "name" : "name",
  "description" : "description",
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "created_date" : 0,
  "updated_date" : 1
}}]
     - parameter name: (path) The level schema name 
     - returns: RequestBuilder<LevelingResource> 
     */
    open class func getLevelWithRequestBuilder(name: String) -> RequestBuilder<LevelingResource> {
        var path = "/leveling/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LevelingResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the list of triggers that can be used to trigger a leveling progress update
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLevelTriggers(completion: @escaping ((_ data: [BreTriggerResource]?, _ error: ErrorResponse?) -> Void)) {
        getLevelTriggersWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the list of triggers that can be used to trigger a leveling progress update
     - GET /leveling/triggers
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "trigger_name" : "trigger_name",
  "system_trigger" : false,
  "event_name" : "event_name",
  "category" : "achievement",
  "parameters" : [ {
    "name" : "name",
    "optional" : false,
    "type" : "type"
  }, {
    "name" : "name",
    "optional" : false,
    "type" : "type"
  } ],
  "tags" : [ "tags", "tags" ],
  "trigger_description" : "trigger_description"
}, {
  "trigger_name" : "trigger_name",
  "system_trigger" : false,
  "event_name" : "event_name",
  "category" : "achievement",
  "parameters" : [ {
    "name" : "name",
    "optional" : false,
    "type" : "type"
  }, {
    "name" : "name",
    "optional" : false,
    "type" : "type"
  } ],
  "tags" : [ "tags", "tags" ],
  "trigger_description" : "trigger_description"
} ]}]
     - returns: RequestBuilder<[BreTriggerResource]> 
     */
    open class func getLevelTriggersWithRequestBuilder() -> RequestBuilder<[BreTriggerResource]> {
        let path = "/leveling/triggers"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[BreTriggerResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

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
    open class func getLevels(filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceLevelingResource?, _ error: ErrorResponse?) -> Void)) {
        getLevelsWithRequestBuilder(filterName: filterName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
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
  "number" : 5,
  "last" : true,
  "size" : 2,
  "total_elements" : 7,
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
  "total_pages" : 9,
  "number_of_elements" : 5,
  "content" : [ {
    "tiers" : [ {
      "name" : "name",
      "additional_properties" : {
        "key" : {
          "type" : "type"
        }
      },
      "required_progress" : 6,
      "trigger_event_name" : "trigger_event_name"
    }, {
      "name" : "name",
      "additional_properties" : {
        "key" : {
          "type" : "type"
        }
      },
      "required_progress" : 6,
      "trigger_event_name" : "trigger_event_name"
    } ],
    "name" : "name",
    "description" : "description",
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "created_date" : 0,
    "updated_date" : 1
  }, {
    "tiers" : [ {
      "name" : "name",
      "additional_properties" : {
        "key" : {
          "type" : "type"
        }
      },
      "required_progress" : 6,
      "trigger_event_name" : "trigger_event_name"
    }, {
      "name" : "name",
      "additional_properties" : {
        "key" : {
          "type" : "type"
        }
      },
      "required_progress" : 6,
      "trigger_event_name" : "trigger_event_name"
    } ],
    "name" : "name",
    "description" : "description",
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "created_date" : 0,
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
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_name": filterName, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceLevelingResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a user's progress for a given level schema
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLevel(userId: Int32, name: String, completion: @escaping ((_ data: UserLevelingResource?, _ error: ErrorResponse?) -> Void)) {
        getUserLevelWithRequestBuilder(userId: userId, name: name).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a user's progress for a given level schema
     - GET /users/{user_id}/leveling/{name}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "last_tier_name" : "last_tier_name",
  "level_name" : "level_name",
  "next_tier_name" : "next_tier_name",
  "tier_names" : [ "tier_names", "tier_names" ],
  "user_id" : 5,
  "progress" : 1,
  "last_tier_progress" : 0,
  "next_tier_progress" : 6
}}]
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - returns: RequestBuilder<UserLevelingResource> 
     */
    open class func getUserLevelWithRequestBuilder(userId: Int32, name: String) -> RequestBuilder<UserLevelingResource> {
        var path = "/users/{user_id}/leveling/{name}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UserLevelingResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a user's progress for all level schemas
     - parameter userId: (path) The id of the user 
     - parameter filterName: (query) Filter for level schemas whose name contains a given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLevels(userId: Int32, filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceUserLevelingResource?, _ error: ErrorResponse?) -> Void)) {
        getUserLevelsWithRequestBuilder(userId: userId, filterName: filterName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a user's progress for all level schemas
     - GET /users/{user_id}/leveling
     - Filtering and sorting is based on the LevelingResource object, not the UserLevelingResource that is returned here.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 5,
  "last" : true,
  "size" : 7,
  "total_elements" : 9,
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
  "total_pages" : 3,
  "number_of_elements" : 2,
  "content" : [ {
    "last_tier_name" : "last_tier_name",
    "level_name" : "level_name",
    "next_tier_name" : "next_tier_name",
    "tier_names" : [ "tier_names", "tier_names" ],
    "user_id" : 5,
    "progress" : 1,
    "last_tier_progress" : 0,
    "next_tier_progress" : 6
  }, {
    "last_tier_name" : "last_tier_name",
    "level_name" : "level_name",
    "next_tier_name" : "next_tier_name",
    "tier_names" : [ "tier_names", "tier_names" ],
    "user_id" : 5,
    "progress" : 1,
    "last_tier_progress" : 0,
    "next_tier_progress" : 6
  } ],
  "first" : true
}}]
     - parameter userId: (path) The id of the user 
     - parameter filterName: (query) Filter for level schemas whose name contains a given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - returns: RequestBuilder<PageResourceUserLevelingResource> 
     */
    open class func getUserLevelsWithRequestBuilder(userId: Int32, filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceUserLevelingResource> {
        var path = "/users/{user_id}/leveling"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_name": filterName, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceUserLevelingResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update or create a leveling progress record for a user
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter progress: (body) The amount of progress to add (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func incrementProgress(userId: Int32, name: String, progress: IntWrapper? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        incrementProgressWithRequestBuilder(userId: userId, name: name, progress: progress).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Update or create a leveling progress record for a user
     - POST /users/{user_id}/leveling/{name}/progress
     - If no progress record yet exists for the user, it will be created. Otherwise the provided value will be added to it. May be negative. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter progress: (body) The amount of progress to add (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func incrementProgressWithRequestBuilder(userId: Int32, name: String, progress: IntWrapper? = nil) -> RequestBuilder<Void> {
        var path = "/users/{user_id}/leveling/{name}/progress"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = progress?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set leveling progress for a user
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter progress: (body) The new progress amount (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setProgress(userId: Int32, name: String, progress: IntWrapper? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        setProgressWithRequestBuilder(userId: userId, name: name, progress: progress).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Set leveling progress for a user
     - PUT /users/{user_id}/leveling/{name}/progress
     - If no progress record yet exists for the user, it will be created. Otherwise it will be updated to the provided value. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter userId: (path) The id of the user 
     - parameter name: (path) The level schema name 
     - parameter progress: (body) The new progress amount (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func setProgressWithRequestBuilder(userId: Int32, name: String, progress: IntWrapper? = nil) -> RequestBuilder<Void> {
        var path = "/users/{user_id}/leveling/{name}/progress"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = progress?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a level
     - parameter name: (path) The level schema name 
     - parameter newLevel: (body) The level schema definition (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateLevel(name: String, newLevel: LevelingResource? = nil, completion: @escaping ((_ data: LevelingResource?, _ error: ErrorResponse?) -> Void)) {
        updateLevelWithRequestBuilder(name: name, newLevel: newLevel).execute { (response, error) -> Void in
            completion(response?.body, error)
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
    "name" : "name",
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "required_progress" : 6,
    "trigger_event_name" : "trigger_event_name"
  }, {
    "name" : "name",
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "required_progress" : 6,
    "trigger_event_name" : "trigger_event_name"
  } ],
  "name" : "name",
  "description" : "description",
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "created_date" : 0,
  "updated_date" : 1
}}]
     - parameter name: (path) The level schema name 
     - parameter newLevel: (body) The level schema definition (optional)
     - returns: RequestBuilder<LevelingResource> 
     */
    open class func updateLevelWithRequestBuilder(name: String, newLevel: LevelingResource? = nil) -> RequestBuilder<LevelingResource> {
        var path = "/leveling/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = newLevel?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LevelingResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
