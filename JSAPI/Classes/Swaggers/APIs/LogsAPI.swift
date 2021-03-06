//
// LogsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class LogsAPI: APIBase {
    /**
     Add a user log entry
     - parameter logEntry: (body) The user log entry to be added (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addUserLog(logEntry: UserActionLog? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        addUserLogWithRequestBuilder(logEntry: logEntry).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Add a user log entry
     - POST /audit/logs
     - <b>Permissions Needed:</b> owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter logEntry: (body) The user log entry to be added (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addUserLogWithRequestBuilder(logEntry: UserActionLog? = nil) -> RequestBuilder<Void> {
        let path = "/audit/logs"
        let URLString = JSAPIAPI.basePath + path
        let parameters = logEntry?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get an existing BRE event log entry by id
     - parameter id: (path) The BRE event log entry id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREEventLog(id: String, completion: @escaping ((_ data: BreEventLog?, _ error: ErrorResponse?) -> Void)) {
        getBREEventLogWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get an existing BRE event log entry by id
     - GET /bre/logs/event-log/{id}
     - <b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "event_id" : "event_id",
  "event_name" : "event_name",
  "rules" : [ {
    "rule_id" : "rule_id",
    "reason" : "reason",
    "rule_end_date" : 1,
    "rule_name" : "rule_name",
    "rule_start_date" : 5,
    "actions" : [ {
      "name" : "name",
      "runtime" : 6,
      "status" : "status"
    }, {
      "name" : "name",
      "runtime" : 6,
      "status" : "status"
    } ],
    "ran" : false
  }, {
    "rule_id" : "rule_id",
    "reason" : "reason",
    "rule_end_date" : 1,
    "rule_name" : "rule_name",
    "rule_start_date" : 5,
    "actions" : [ {
      "name" : "name",
      "runtime" : 6,
      "status" : "status"
    }, {
      "name" : "name",
      "runtime" : 6,
      "status" : "status"
    } ],
    "ran" : false
  } ],
  "id" : "id",
  "parameters" : "{}",
  "event_start_date" : 0,
  "customer" : "customer"
}}]
     - parameter id: (path) The BRE event log entry id 
     - returns: RequestBuilder<BreEventLog> 
     */
    open class func getBREEventLogWithRequestBuilder(id: String) -> RequestBuilder<BreEventLog> {
        var path = "/bre/logs/event-log/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BreEventLog>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a list of BRE event log entries
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterEventName: (query) Filter event logs by event name (optional)
     - parameter filterEventId: (query) Filter event logs by request id (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)
     - parameter filterRuleId: (query) Filter event logs by request id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREEventLogs(filterStartDate: String? = nil, filterEventName: String? = nil, filterEventId: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, filterRuleId: String? = nil, completion: @escaping ((_ data: PageResourceBreEventLog?, _ error: ErrorResponse?) -> Void)) {
        getBREEventLogsWithRequestBuilder(filterStartDate: filterStartDate, filterEventName: filterEventName, filterEventId: filterEventId, size: size, page: page, order: order, filterRuleId: filterRuleId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a list of BRE event log entries
     - GET /bre/logs/event-log
     - <b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
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
    "event_id" : "event_id",
    "event_name" : "event_name",
    "rules" : [ {
      "rule_id" : "rule_id",
      "reason" : "reason",
      "rule_end_date" : 1,
      "rule_name" : "rule_name",
      "rule_start_date" : 5,
      "actions" : [ {
        "name" : "name",
        "runtime" : 6,
        "status" : "status"
      }, {
        "name" : "name",
        "runtime" : 6,
        "status" : "status"
      } ],
      "ran" : false
    }, {
      "rule_id" : "rule_id",
      "reason" : "reason",
      "rule_end_date" : 1,
      "rule_name" : "rule_name",
      "rule_start_date" : 5,
      "actions" : [ {
        "name" : "name",
        "runtime" : 6,
        "status" : "status"
      }, {
        "name" : "name",
        "runtime" : 6,
        "status" : "status"
      } ],
      "ran" : false
    } ],
    "id" : "id",
    "parameters" : "{}",
    "event_start_date" : 0,
    "customer" : "customer"
  }, {
    "event_id" : "event_id",
    "event_name" : "event_name",
    "rules" : [ {
      "rule_id" : "rule_id",
      "reason" : "reason",
      "rule_end_date" : 1,
      "rule_name" : "rule_name",
      "rule_start_date" : 5,
      "actions" : [ {
        "name" : "name",
        "runtime" : 6,
        "status" : "status"
      }, {
        "name" : "name",
        "runtime" : 6,
        "status" : "status"
      } ],
      "ran" : false
    }, {
      "rule_id" : "rule_id",
      "reason" : "reason",
      "rule_end_date" : 1,
      "rule_name" : "rule_name",
      "rule_start_date" : 5,
      "actions" : [ {
        "name" : "name",
        "runtime" : 6,
        "status" : "status"
      }, {
        "name" : "name",
        "runtime" : 6,
        "status" : "status"
      } ],
      "ran" : false
    } ],
    "id" : "id",
    "parameters" : "{}",
    "event_start_date" : 0,
    "customer" : "customer"
  } ],
  "first" : true
}}]
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterEventName: (query) Filter event logs by event name (optional)
     - parameter filterEventId: (query) Filter event logs by request id (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)
     - parameter filterRuleId: (query) Filter event logs by request id (optional)
     - returns: RequestBuilder<PageResourceBreEventLog> 
     */
    open class func getBREEventLogsWithRequestBuilder(filterStartDate: String? = nil, filterEventName: String? = nil, filterEventId: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, filterRuleId: String? = nil) -> RequestBuilder<PageResourceBreEventLog> {
        let path = "/bre/logs/event-log"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_start_date": filterStartDate, 
            "filter_event_name": filterEventName, 
            "filter_event_id": filterEventId, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order, 
            "filter_rule_id": filterRuleId
        ])

        let requestBuilder: RequestBuilder<PageResourceBreEventLog>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get an existing forward log entry by id
     - parameter id: (path) The forward log entry id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREForwardLog(id: String, completion: @escaping ((_ data: ForwardLog?, _ error: ErrorResponse?) -> Void)) {
        getBREForwardLogWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get an existing forward log entry by id
     - GET /bre/logs/forward-log/{id}
     - <b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "end_date" : 0,
  "retryable" : true,
  "headers" : "headers",
  "error_msg" : "error_msg",
  "method" : "method",
  "http_status_code" : 6,
  "url" : "url",
  "rule_id" : "rule_id",
  "event_id" : "event_id",
  "payload" : "{}",
  "response" : "response",
  "success" : true,
  "retry_count" : 1,
  "id" : "id",
  "start_date" : 5
}}]
     - parameter id: (path) The forward log entry id 
     - returns: RequestBuilder<ForwardLog> 
     */
    open class func getBREForwardLogWithRequestBuilder(id: String) -> RequestBuilder<ForwardLog> {
        var path = "/bre/logs/forward-log/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ForwardLog>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a list of forward log entries
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterEndDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterStatusCode: (query) Filter forward logs by http status code (optional)
     - parameter filterUrl: (query) Filter forward logs by URL starting with... (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREForwardLogs(filterStartDate: String? = nil, filterEndDate: String? = nil, filterStatusCode: Int32? = nil, filterUrl: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceForwardLog?, _ error: ErrorResponse?) -> Void)) {
        getBREForwardLogsWithRequestBuilder(filterStartDate: filterStartDate, filterEndDate: filterEndDate, filterStatusCode: filterStatusCode, filterUrl: filterUrl, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a list of forward log entries
     - GET /bre/logs/forward-log
     - <b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
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
    "end_date" : 0,
    "retryable" : true,
    "headers" : "headers",
    "error_msg" : "error_msg",
    "method" : "method",
    "http_status_code" : 6,
    "url" : "url",
    "rule_id" : "rule_id",
    "event_id" : "event_id",
    "payload" : "{}",
    "response" : "response",
    "success" : true,
    "retry_count" : 1,
    "id" : "id",
    "start_date" : 5
  }, {
    "end_date" : 0,
    "retryable" : true,
    "headers" : "headers",
    "error_msg" : "error_msg",
    "method" : "method",
    "http_status_code" : 6,
    "url" : "url",
    "rule_id" : "rule_id",
    "event_id" : "event_id",
    "payload" : "{}",
    "response" : "response",
    "success" : true,
    "retry_count" : 1,
    "id" : "id",
    "start_date" : 5
  } ],
  "first" : true
}}]
     - parameter filterStartDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterEndDate: (query) A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
     - parameter filterStatusCode: (query) Filter forward logs by http status code (optional)
     - parameter filterUrl: (query) Filter forward logs by URL starting with... (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)
     - returns: RequestBuilder<PageResourceForwardLog> 
     */
    open class func getBREForwardLogsWithRequestBuilder(filterStartDate: String? = nil, filterEndDate: String? = nil, filterStatusCode: Int32? = nil, filterUrl: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceForwardLog> {
        let path = "/bre/logs/forward-log"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_start_date": filterStartDate, 
            "filter_end_date": filterEndDate, 
            "filter_status_code": filterStatusCode?.encodeToJSON(), 
            "filter_url": filterUrl?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceForwardLog>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a user log entry by id
     - parameter id: (path) The user log entry id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLog(id: String, completion: @escaping ((_ data: UserActionLog?, _ error: ErrorResponse?) -> Void)) {
        getUserLogWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a user log entry by id
     - GET /audit/logs/{id}
     - <b>Permissions Needed:</b> LOGS_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "action_description" : "action_description",
  "user_id" : 6,
  "action_name" : "action_name",
  "details" : {
    "key" : "details"
  },
  "created_date" : 0,
  "id" : "id",
  "request_id" : "request_id"
}}]
     - parameter id: (path) The user log entry id 
     - returns: RequestBuilder<UserActionLog> 
     */
    open class func getUserLogWithRequestBuilder(id: String) -> RequestBuilder<UserActionLog> {
        var path = "/audit/logs/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UserActionLog>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a page of user logs entries
     - parameter filterUser: (query) Filter for actions taken by a specific user by id (optional)
     - parameter filterActionName: (query) Filter for actions of a specific name (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to timestamp:DESC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLogs(filterUser: Int32? = nil, filterActionName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceUserActionLog?, _ error: ErrorResponse?) -> Void)) {
        getUserLogsWithRequestBuilder(filterUser: filterUser, filterActionName: filterActionName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a page of user logs entries
     - GET /audit/logs
     - <b>Permissions Needed:</b> LOGS_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
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
  "total_pages" : 7,
  "number_of_elements" : 5,
  "content" : [ {
    "action_description" : "action_description",
    "user_id" : 6,
    "action_name" : "action_name",
    "details" : {
      "key" : "details"
    },
    "created_date" : 0,
    "id" : "id",
    "request_id" : "request_id"
  }, {
    "action_description" : "action_description",
    "user_id" : 6,
    "action_name" : "action_name",
    "details" : {
      "key" : "details"
    },
    "created_date" : 0,
    "id" : "id",
    "request_id" : "request_id"
  } ],
  "first" : true
}}]
     - parameter filterUser: (query) Filter for actions taken by a specific user by id (optional)
     - parameter filterActionName: (query) Filter for actions of a specific name (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to timestamp:DESC)
     - returns: RequestBuilder<PageResourceUserActionLog> 
     */
    open class func getUserLogsWithRequestBuilder(filterUser: Int32? = nil, filterActionName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceUserActionLog> {
        let path = "/audit/logs"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_user": filterUser?.encodeToJSON(), 
            "filter_action_name": filterActionName, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceUserActionLog>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
