//
// LogsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class LogsAPI: APIBase {
    /**
     Add a new user log entry
     
     - parameter logEntry: (body) The user log entry to be added (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addUserLogUsingPOST(logEntry: UserActionLog? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addUserLogUsingPOSTWithRequestBuilder(logEntry: logEntry).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add a new user log entry
     - POST /audit/logs
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter logEntry: (body) The user log entry to be added (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addUserLogUsingPOSTWithRequestBuilder(logEntry: UserActionLog? = nil) -> RequestBuilder<Void> {
        let path = "/audit/logs"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = logEntry?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get an existing BRE event log entry by id
     
     - parameter id: (path) The BRE event log entry id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEventLogUsingGET(id: String, completion: @escaping ((_ data: BreEventLog?,_ error: Error?) -> Void)) {
        getEventLogUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get an existing BRE event log entry by id
     - GET /bre/logs/event-log/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "event_id" : 123456789,
  "event_name" : "aeiou",
  "rules" : [ {
    "rule_id" : "aeiou",
    "reason" : "aeiou",
    "rule_end_date" : 123456789,
    "rule_name" : "aeiou",
    "rule_start_date" : 123456789,
    "ran" : false
  } ],
  "id" : "aeiou",
  "parameters" : "{}",
  "event_start_date" : 123456789,
  "customer" : "aeiou"
}}]
     
     - parameter id: (path) The BRE event log entry id 

     - returns: RequestBuilder<BreEventLog> 
     */
    open class func getEventLogUsingGETWithRequestBuilder(id: String) -> RequestBuilder<BreEventLog> {
        var path = "/bre/logs/event-log/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<BreEventLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Returns a list of BRE event log entries
     
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterEventName: (query) Filter event logs by event name (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEventsLogsUsingGET(filterStartDate: String? = nil, filterEventName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceBreEventLog?,_ error: Error?) -> Void)) {
        getEventsLogsUsingGETWithRequestBuilder(filterStartDate: filterStartDate, filterEventName: filterEventName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a list of BRE event log entries
     - GET /bre/logs/event-log
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
    "event_id" : 123456789,
    "event_name" : "aeiou",
    "rules" : [ {
      "rule_id" : "aeiou",
      "reason" : "aeiou",
      "rule_end_date" : 123456789,
      "rule_name" : "aeiou",
      "rule_start_date" : 123456789,
      "ran" : false
    } ],
    "id" : "aeiou",
    "parameters" : "{}",
    "event_start_date" : 123456789,
    "customer" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterEventName: (query) Filter event logs by event name (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)

     - returns: RequestBuilder<PageResourceBreEventLog> 
     */
    open class func getEventsLogsUsingGETWithRequestBuilder(filterStartDate: String? = nil, filterEventName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceBreEventLog> {
        let path = "/bre/logs/event-log"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_start_date": filterStartDate,
            "filter_event_name": filterEventName,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceBreEventLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get an existing forward log entry by id
     
     - parameter id: (path) The forward log entry id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getForwardLogUsingGET(id: String, completion: @escaping ((_ data: ForwardLog?,_ error: Error?) -> Void)) {
        getForwardLogUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get an existing forward log entry by id
     - GET /bre/logs/forward-log/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "end_date" : 123456789,
  "error_msg" : "aeiou",
  "http_status_code" : 123,
  "payload" : "{}",
  "response" : "aeiou",
  "retry_count" : 123,
  "id" : "aeiou",
  "url" : "aeiou",
  "start_date" : 123456789
}}]
     
     - parameter id: (path) The forward log entry id 

     - returns: RequestBuilder<ForwardLog> 
     */
    open class func getForwardLogUsingGETWithRequestBuilder(id: String) -> RequestBuilder<ForwardLog> {
        var path = "/bre/logs/forward-log/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ForwardLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Returns a list of forward log entries
     
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterEndDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterStatusCode: (query) Filter forward logs by http status code (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getForwardLogsUsingGET(filterStartDate: String? = nil, filterEndDate: String? = nil, filterStatusCode: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceForwardLog?,_ error: Error?) -> Void)) {
        getForwardLogsUsingGETWithRequestBuilder(filterStartDate: filterStartDate, filterEndDate: filterEndDate, filterStatusCode: filterStatusCode, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a list of forward log entries
     - GET /bre/logs/forward-log
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
    "end_date" : 123456789,
    "error_msg" : "aeiou",
    "http_status_code" : 123,
    "payload" : "{}",
    "response" : "aeiou",
    "retry_count" : 123,
    "id" : "aeiou",
    "url" : "aeiou",
    "start_date" : 123456789
  } ],
  "first" : true
}}]
     
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterEndDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterStatusCode: (query) Filter forward logs by http status code (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)

     - returns: RequestBuilder<PageResourceForwardLog> 
     */
    open class func getForwardLogsUsingGETWithRequestBuilder(filterStartDate: String? = nil, filterEndDate: String? = nil, filterStatusCode: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceForwardLog> {
        let path = "/bre/logs/forward-log"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_start_date": filterStartDate,
            "filter_end_date": filterEndDate,
            "filter_status_code": filterStatusCode?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceForwardLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Returns a user log entry by id
     
     - parameter id: (path) The user log entry id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLogsUsingGET(id: String, completion: @escaping ((_ data: UserActionLog?,_ error: Error?) -> Void)) {
        getUserLogsUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a user log entry by id
     - GET /audit/logs/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "action_description" : "aeiou",
  "user_id" : 123,
  "action_name" : "aeiou",
  "details" : {
    "key" : "aeiou"
  },
  "created_date" : 123456789,
  "id" : "aeiou",
  "request_id" : "aeiou"
}}]
     
     - parameter id: (path) The user log entry id 

     - returns: RequestBuilder<UserActionLog> 
     */
    open class func getUserLogsUsingGETWithRequestBuilder(id: String) -> RequestBuilder<UserActionLog> {
        var path = "/audit/logs/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<UserActionLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Returns a page of user logs entries
     
     - parameter filterUser: (query) Filter for actions taken by a specific user by id (optional)
     - parameter filterActionName: (query) Filter for actions of a specific name (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLogsUsingGET1(filterUser: Int32? = nil, filterActionName: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceUserActionLog?,_ error: Error?) -> Void)) {
        getUserLogsUsingGET1WithRequestBuilder(filterUser: filterUser, filterActionName: filterActionName, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a page of user logs entries
     - GET /audit/logs
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
    "action_description" : "aeiou",
    "user_id" : 123,
    "action_name" : "aeiou",
    "details" : {
      "key" : "aeiou"
    },
    "created_date" : 123456789,
    "id" : "aeiou",
    "request_id" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterUser: (query) Filter for actions taken by a specific user by id (optional)
     - parameter filterActionName: (query) Filter for actions of a specific name (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceUserActionLog> 
     */
    open class func getUserLogsUsingGET1WithRequestBuilder(filterUser: Int32? = nil, filterActionName: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceUserActionLog> {
        let path = "/audit/logs"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_user": filterUser?.encodeToJSON(),
            "filter_action_name": filterActionName,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceUserActionLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
