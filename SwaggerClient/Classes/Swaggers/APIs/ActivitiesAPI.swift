//
// ActivitiesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ActivitiesAPI: APIBase {
    /**
     Create an activity
     
     - parameter activityResource: (body) The activity resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createActivity(activityResource: ActivityResource? = nil, completion: @escaping ((_ data: ActivityResource?,_ error: Error?) -> Void)) {
        createActivityWithRequestBuilder(activityResource: activityResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create an activity
     - POST /activities
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "entitlements" : [ {
    "item_id" : 6,
    "price" : 0.5270144998466153,
    "name" : "aeiou",
    "sku" : "aeiou",
    "currency_code" : "aeiou"
  } ],
  "template" : false,
  "reward_set" : {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 2,
      "min_rank" : 3,
      "percent" : false,
      "value" : 0.9351791285228317,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 8,
    "id" : 2,
    "long_description" : "aeiou",
    "max_placing" : 7,
    "updated_date" : 8,
    "item_rewards" : [ {
      "quantity" : 9,
      "item_id" : 9,
      "max_rank" : 2,
      "item_name" : "aeiou",
      "min_rank" : 2
    } ]
  },
  "settings" : [ {
    "advanced_option" : false,
    "name" : "aeiou",
    "options" : [ {
      "name" : "aeiou",
      "value" : "aeiou"
    } ],
    "description" : "aeiou",
    "default_value" : "aeiou",
    "key" : "aeiou"
  } ],
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "launch" : "aeiou",
  "long_description" : "aeiou",
  "type" : "aeiou",
  "name" : "aeiou",
  "created_date" : 1,
  "id" : 3,
  "updated_date" : 4
}}]
     
     - parameter activityResource: (body) The activity resource object (optional)

     - returns: RequestBuilder<ActivityResource> 
     */
    open class func createActivityWithRequestBuilder(activityResource: ActivityResource? = nil) -> RequestBuilder<ActivityResource> {
        let path = "/activities"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ActivityResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a new activity occurrence
     
     - parameter test: (query) if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings (optional, default to false)
     - parameter activityOccurrenceResource: (body) The activity occurrence object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createActivityOccurrence(test: Bool? = nil, activityOccurrenceResource: ActivityOccurrenceResource? = nil, completion: @escaping ((_ data: ActivityOccurrenceResource?,_ error: Error?) -> Void)) {
        createActivityOccurrenceWithRequestBuilder(test: test, activityOccurrenceResource: activityOccurrenceResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new activity occurrence
     - POST /activity-occurrences
     - Has to enforce extra rules if not used as an admin
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "settings" : [ {
    "key_name" : "aeiou",
    "value" : "aeiou",
    "key" : "aeiou",
    "value_name" : "aeiou"
  } ],
  "challenge_activity_id" : 9,
  "simulated" : false,
  "entitlement" : {
    "item_id" : 5,
    "price" : 2.577427868914347,
    "name" : "aeiou",
    "sku" : "aeiou",
    "currency_code" : "aeiou"
  },
  "users" : [ {
    "joined_date" : 1,
    "metric" : {
      "value" : 7,
      "activity_occurence_id" : 3,
      "tags" : [ "aeiou" ]
    },
    "host" : false,
    "left_date" : 7,
    "id" : 8,
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 9,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "status" : "present"
  } ],
  "event_id" : 1,
  "activity_id" : 7,
  "created_date" : 2,
  "id" : 7,
  "updated_date" : 1,
  "reward_status" : "pending",
  "start_date" : 4,
  "status" : "SETUP"
}}]
     
     - parameter test: (query) if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings (optional, default to false)
     - parameter activityOccurrenceResource: (body) The activity occurrence object (optional)

     - returns: RequestBuilder<ActivityOccurrenceResource> 
     */
    open class func createActivityOccurrenceWithRequestBuilder(test: Bool? = nil, activityOccurrenceResource: ActivityOccurrenceResource? = nil) -> RequestBuilder<ActivityOccurrenceResource> {
        let path = "/activity-occurrences"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityOccurrenceResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "test": test
        ])
        

        let requestBuilder: RequestBuilder<ActivityOccurrenceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an activity
     
     - parameter id: (path) The id of the activity 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteActivity(id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteActivityWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an activity
     - DELETE /activities/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the activity 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteActivityWithRequestBuilder(id: Int64) -> RequestBuilder<Void> {
        var path = "/activities/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List activity definitions
     
     - parameter filterTemplate: (query) Filter for activities that are templates, or specifically not if false (optional)
     - parameter filterName: (query) Filter for activities that have a name starting with specified string (optional)
     - parameter filterId: (query) Filter for activities with an id in the given comma separated list of ids (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getActivities(filterTemplate: Bool? = nil, filterName: String? = nil, filterId: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceBareActivityResource?,_ error: Error?) -> Void)) {
        getActivitiesWithRequestBuilder(filterTemplate: filterTemplate, filterName: filterName, filterId: filterId, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List activity definitions
     - GET /activities
     - examples: [{contentType=application/json, example={
  "number" : 7,
  "last" : true,
  "size" : 4,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 8,
  "content" : [ {
    "template" : false,
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "name" : "aeiou",
    "launch" : "aeiou",
    "created_date" : 9,
    "id" : 6,
    "long_description" : "aeiou",
    "updated_date" : 7,
    "type" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterTemplate: (query) Filter for activities that are templates, or specifically not if false (optional)
     - parameter filterName: (query) Filter for activities that have a name starting with specified string (optional)
     - parameter filterId: (query) Filter for activities with an id in the given comma separated list of ids (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceBareActivityResource> 
     */
    open class func getActivitiesWithRequestBuilder(filterTemplate: Bool? = nil, filterName: String? = nil, filterId: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceBareActivityResource> {
        let path = "/activities"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_template": filterTemplate, 
            "filter_name": filterName, 
            "filter_id": filterId, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceBareActivityResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single activity
     
     - parameter id: (path) The id of the activity 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getActivity(id: Int64, completion: @escaping ((_ data: ActivityResource?,_ error: Error?) -> Void)) {
        getActivityWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single activity
     - GET /activities/{id}
     - examples: [{contentType=application/json, example={
  "entitlements" : [ {
    "item_id" : 7,
    "price" : 1.3871492915460548,
    "name" : "aeiou",
    "sku" : "aeiou",
    "currency_code" : "aeiou"
  } ],
  "template" : false,
  "reward_set" : {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 4,
      "min_rank" : 4,
      "percent" : false,
      "value" : 5.835822435923525,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 5,
    "id" : 2,
    "long_description" : "aeiou",
    "max_placing" : 4,
    "updated_date" : 0,
    "item_rewards" : [ {
      "quantity" : 9,
      "item_id" : 7,
      "max_rank" : 8,
      "item_name" : "aeiou",
      "min_rank" : 8
    } ]
  },
  "settings" : [ {
    "advanced_option" : false,
    "name" : "aeiou",
    "options" : [ {
      "name" : "aeiou",
      "value" : "aeiou"
    } ],
    "description" : "aeiou",
    "default_value" : "aeiou",
    "key" : "aeiou"
  } ],
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "launch" : "aeiou",
  "long_description" : "aeiou",
  "type" : "aeiou",
  "name" : "aeiou",
  "created_date" : 3,
  "id" : 1,
  "updated_date" : 5
}}]
     
     - parameter id: (path) The id of the activity 

     - returns: RequestBuilder<ActivityResource> 
     */
    open class func getActivityWithRequestBuilder(id: Int64) -> RequestBuilder<ActivityResource> {
        var path = "/activities/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ActivityResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Sets the status of an activity occurrence to FINISHED and logs metrics
     
     - parameter activityOccurrenceId: (path) The id of the activity occurrence 
     - parameter activityOccurrenceResults: (body) The activity occurrence object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setActivityOccurrenceResults(activityOccurrenceId: Int64, activityOccurrenceResults: ActivityOccurrenceResults? = nil, completion: @escaping ((_ data: ActivityOccurrenceResults?,_ error: Error?) -> Void)) {
        setActivityOccurrenceResultsWithRequestBuilder(activityOccurrenceId: activityOccurrenceId, activityOccurrenceResults: activityOccurrenceResults).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Sets the status of an activity occurrence to FINISHED and logs metrics
     - POST /activity-occurrences/{activityOccurrenceId}/results
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "users" : [ {
    "score" : 2,
    "ties" : 2,
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 3,
      "min_rank" : 0,
      "percent" : false,
      "value" : 8.116942234684636,
      "currency_code" : "aeiou"
    } ],
    "rank" : 2,
    "item_rewards" : [ {
      "quantity" : 3,
      "item_id" : 9,
      "max_rank" : 2,
      "item_name" : "aeiou",
      "min_rank" : 0
    } ],
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 8,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "tags" : [ "aeiou" ]
  } ]
}}]
     
     - parameter activityOccurrenceId: (path) The id of the activity occurrence 
     - parameter activityOccurrenceResults: (body) The activity occurrence object (optional)

     - returns: RequestBuilder<ActivityOccurrenceResults> 
     */
    open class func setActivityOccurrenceResultsWithRequestBuilder(activityOccurrenceId: Int64, activityOccurrenceResults: ActivityOccurrenceResults? = nil) -> RequestBuilder<ActivityOccurrenceResults> {
        var path = "/activity-occurrences/{activityOccurrenceId}/results"
        path = path.replacingOccurrences(of: "{activity_occurrence_id}", with: "\(activityOccurrenceId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityOccurrenceResults?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ActivityOccurrenceResults>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update an activity
     
     - parameter id: (path) The id of the activity 
     - parameter activityResource: (body) The activity resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateActivity(id: Int64, activityResource: ActivityResource? = nil, completion: @escaping ((_ data: ActivityResource?,_ error: Error?) -> Void)) {
        updateActivityWithRequestBuilder(id: id, activityResource: activityResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update an activity
     - PUT /activities/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "entitlements" : [ {
    "item_id" : 4,
    "price" : 6.660596132587821,
    "name" : "aeiou",
    "sku" : "aeiou",
    "currency_code" : "aeiou"
  } ],
  "template" : false,
  "reward_set" : {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 8,
      "min_rank" : 3,
      "percent" : false,
      "value" : 1.6698480083950673,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 2,
    "id" : 2,
    "long_description" : "aeiou",
    "max_placing" : 6,
    "updated_date" : 5,
    "item_rewards" : [ {
      "quantity" : 0,
      "item_id" : 6,
      "max_rank" : 1,
      "item_name" : "aeiou",
      "min_rank" : 3
    } ]
  },
  "settings" : [ {
    "advanced_option" : false,
    "name" : "aeiou",
    "options" : [ {
      "name" : "aeiou",
      "value" : "aeiou"
    } ],
    "description" : "aeiou",
    "default_value" : "aeiou",
    "key" : "aeiou"
  } ],
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "launch" : "aeiou",
  "long_description" : "aeiou",
  "type" : "aeiou",
  "name" : "aeiou",
  "created_date" : 4,
  "id" : 3,
  "updated_date" : 0
}}]
     
     - parameter id: (path) The id of the activity 
     - parameter activityResource: (body) The activity resource object (optional)

     - returns: RequestBuilder<ActivityResource> 
     */
    open class func updateActivityWithRequestBuilder(id: Int64, activityResource: ActivityResource? = nil) -> RequestBuilder<ActivityResource> {
        var path = "/activities/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ActivityResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Updated the status of an activity occurrence
     
     - parameter activityOccurrenceId: (path) The id of the activity occurrence 
     - parameter activityCccurrenceStatus: (body) The activity occurrence status object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateActivityOccurrence(activityOccurrenceId: Int64, activityCccurrenceStatus: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateActivityOccurrenceWithRequestBuilder(activityOccurrenceId: activityOccurrenceId, activityCccurrenceStatus: activityCccurrenceStatus).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Updated the status of an activity occurrence
     - PUT /activity-occurrences/{activityOccurrenceId}/status
     - If setting to 'FINISHED' you must POST to /results instead to record the metrics and get synchronous reward results
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter activityOccurrenceId: (path) The id of the activity occurrence 
     - parameter activityCccurrenceStatus: (body) The activity occurrence status object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateActivityOccurrenceWithRequestBuilder(activityOccurrenceId: Int64, activityCccurrenceStatus: String? = nil) -> RequestBuilder<Void> {
        var path = "/activity-occurrences/{activityOccurrenceId}/status"
        path = path.replacingOccurrences(of: "{activity_occurrence_id}", with: "\(activityOccurrenceId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityCccurrenceStatus?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
