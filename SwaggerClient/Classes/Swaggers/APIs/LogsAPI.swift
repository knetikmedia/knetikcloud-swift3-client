//
// LogsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class LogsAPI: APIBase {
    /**
     Add a user log entry
     
     - parameter logEntry: (body) The user log entry to be added (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addUserLog(logEntry: UserActionLog? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addUserLogWithRequestBuilder(logEntry: logEntry).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add a user log entry
     - POST /audit/logs
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter logEntry: (body) The user log entry to be added (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addUserLogWithRequestBuilder(logEntry: UserActionLog? = nil) -> RequestBuilder<Void> {
        let path = "/audit/logs"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = logEntry?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get an existing BRE event log entry by id
     
     - parameter id: (path) The BRE event log entry id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREEventLog(id: String, completion: @escaping ((_ data: BreEventLog?,_ error: Error?) -> Void)) {
        getBREEventLogWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get an existing BRE event log entry by id
     - GET /bre/logs/event-log/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "event_id" : 9,
  "event_name" : "aeiou",
  "rules" : [ {
    "rule_id" : "aeiou",
    "reason" : "aeiou",
    "rule_end_date" : 3,
    "rule_name" : "aeiou",
    "rule_start_date" : 8,
    "ran" : false
  } ],
  "id" : "aeiou",
  "parameters" : "{}",
  "event_start_date" : 2,
  "customer" : "aeiou"
}}]
     
     - parameter id: (path) The BRE event log entry id 

     - returns: RequestBuilder<BreEventLog> 
     */
    open class func getBREEventLogWithRequestBuilder(id: String) -> RequestBuilder<BreEventLog> {
        var path = "/bre/logs/event-log/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreEventLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
    open class func getBREEventLogs(filterStartDate: String? = nil, filterEventName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceBreEventLog?,_ error: Error?) -> Void)) {
        getBREEventLogsWithRequestBuilder(filterStartDate: filterStartDate, filterEventName: filterEventName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a list of BRE event log entries
     - GET /bre/logs/event-log
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 8,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 9,
  "content" : [ {
    "event_id" : 8,
    "event_name" : "aeiou",
    "rules" : [ {
      "rule_id" : "aeiou",
      "reason" : "aeiou",
      "rule_end_date" : 3,
      "rule_name" : "aeiou",
      "rule_start_date" : 7,
      "ran" : false
    } ],
    "id" : "aeiou",
    "parameters" : "{}",
    "event_start_date" : 9,
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
    open class func getBREEventLogsWithRequestBuilder(filterStartDate: String? = nil, filterEventName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceBreEventLog> {
        let path = "/bre/logs/event-log"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_start_date": filterStartDate, 
            "filter_event_name": filterEventName, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceBreEventLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get an existing forward log entry by id
     
     - parameter id: (path) The forward log entry id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREForwardLog(id: String, completion: @escaping ((_ data: ForwardLog?,_ error: Error?) -> Void)) {
        getBREForwardLogWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get an existing forward log entry by id
     - GET /bre/logs/forward-log/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "end_date" : 2,
  "error_msg" : "aeiou",
  "http_status_code" : 6,
  "payload" : "{}",
  "response" : "aeiou",
  "retry_count" : 0,
  "id" : "aeiou",
  "url" : "aeiou",
  "start_date" : 3
}}]
     
     - parameter id: (path) The forward log entry id 

     - returns: RequestBuilder<ForwardLog> 
     */
    open class func getBREForwardLogWithRequestBuilder(id: String) -> RequestBuilder<ForwardLog> {
        var path = "/bre/logs/forward-log/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ForwardLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
    open class func getBREForwardLogs(filterStartDate: String? = nil, filterEndDate: String? = nil, filterStatusCode: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceForwardLog?,_ error: Error?) -> Void)) {
        getBREForwardLogsWithRequestBuilder(filterStartDate: filterStartDate, filterEndDate: filterEndDate, filterStatusCode: filterStatusCode, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a list of forward log entries
     - GET /bre/logs/forward-log
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 7,
  "last" : true,
  "size" : 7,
  "total_elements" : 4,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 4,
  "content" : [ {
    "end_date" : 1,
    "error_msg" : "aeiou",
    "http_status_code" : 0,
    "payload" : "{}",
    "response" : "aeiou",
    "retry_count" : 2,
    "id" : "aeiou",
    "url" : "aeiou",
    "start_date" : 3
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
    open class func getBREForwardLogsWithRequestBuilder(filterStartDate: String? = nil, filterEndDate: String? = nil, filterStatusCode: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceForwardLog> {
        let path = "/bre/logs/forward-log"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_start_date": filterStartDate, 
            "filter_end_date": filterEndDate, 
            "filter_status_code": filterStatusCode?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceForwardLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a user log entry by id
     
     - parameter id: (path) The user log entry id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLog(id: String, completion: @escaping ((_ data: UserActionLog?,_ error: Error?) -> Void)) {
        getUserLogWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a user log entry by id
     - GET /audit/logs/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "action_description" : "aeiou",
  "user_id" : 6,
  "action_name" : "aeiou",
  "details" : {
    "key" : "aeiou"
  },
  "created_date" : 8,
  "id" : "aeiou",
  "request_id" : "aeiou"
}}]
     
     - parameter id: (path) The user log entry id 

     - returns: RequestBuilder<UserActionLog> 
     */
    open class func getUserLogWithRequestBuilder(id: String) -> RequestBuilder<UserActionLog> {
        var path = "/audit/logs/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserActionLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a page of user logs entries
     
     - parameter filterUser: (query) Filter for actions taken by a specific user by id (optional)
     - parameter filterActionName: (query) Filter for actions of a specific name (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLogs(filterUser: Int32? = nil, filterActionName: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceUserActionLog?,_ error: Error?) -> Void)) {
        getUserLogsWithRequestBuilder(filterUser: filterUser, filterActionName: filterActionName, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a page of user logs entries
     - GET /audit/logs
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 0,
  "total_elements" : 4,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 6,
  "number_of_elements" : 3,
  "content" : [ {
    "action_description" : "aeiou",
    "user_id" : 1,
    "action_name" : "aeiou",
    "details" : {
      "key" : "aeiou"
    },
    "created_date" : 7,
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
    open class func getUserLogsWithRequestBuilder(filterUser: Int32? = nil, filterActionName: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceUserActionLog> {
        let path = "/audit/logs"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_user": filterUser?.encodeToJSON(), 
            "filter_action_name": filterActionName, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceUserActionLog>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
