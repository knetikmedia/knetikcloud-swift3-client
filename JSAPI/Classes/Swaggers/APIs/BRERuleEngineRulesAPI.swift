//
// BRERuleEngineRulesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class BRERuleEngineRulesAPI: APIBase {
    /**
     Create a rule
     
     - parameter breRule: (body) The BRE rule object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBRERule(breRule: BreRule? = nil, completion: @escaping ((_ data: BreRule?,_ error: Error?) -> Void)) {
        createBRERuleWithRequestBuilder(breRule: breRule).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a rule
     - POST /bre/rules
     - Rules define which actions to run when a given event verifies the specified conditions. Conditions and actions are defined by binding event or context parameters to arguments. Conditions also known as Predicates are logical expressions that result in a boolean. Operators are used to describe rules between arguments to form that condition. There are 3 families of operators: Boolean, Math and String. Math and String operators are functions that transform arguments into numbers or strings...<h1>Boolean Operators</h1><br /><br />1 arg:<br />======<br /><br /><ul> <li>IS_NULL</li> <li>IS_NOT_NULL</li> <li>STRING_IS_EMPTY</li> <li>NOT </li> <li>MAP_IS_EMPTY</li></ul><br />2 args:<br />=======<br /><br /><ul> <li>EQ</li> <li>NE (Not Equals)</li> <li>GT (Greater Than)</li> <li>GOE (Greater Or Equals)</li> <li>LT (Lesser Than)</li> <li>LOE (Lesser Or Equals)</li> <li>OR</li> <li>AND</li> <li>XNOR</li> <li>XOR</li> <li>CONTAINS_KEY (for maps only)</li> <li>CONTAINS_VALUE (for maps only)</li> <li>MATCHES (regex)</li> <li>MATCHES_IC (regex ignore case)</li> <li>STARTS_WITH</li> <li>STARTS_WITH_IC</li> <li>EQ_IGNORE_CASE</li> <li>ENDS_WITH</li> <li>ENDS_WITH_IC</li> <li>STRING_CONTAINS</li> <li>STRING_CONTAINS_IC</li> <li>LIKE (SQL like)</li></ul><br />3 args exceptions:<br />=================<br /><br /><ul> <li>BETWEEN</li></ul><br />n args:<br />=======<br /><br /><ul> <li>IN</li> <li>NOT_INT</li></ul><h1>Math Operators</h1>1 arg:<br />=====<br /><br /><ul> <li>NEGATE</li> <li>MAP_SIZE</li> <li>STRING_LENGTH</li> <li>CEIL</li> <li>ABS</li> <li>FLOOR</li> <li>ROUND</li> <li>RANDOM (no arg)</li> <li>RANDOM2 (seed arg)</li> <li>NUMCAST</li> <li>HOUR</li> <li>MINUTE</li> <li>SECOND</li> <li>MILLISECOND</li> <li>YEAR</li> <li>WEEK</li> <li>YEAR_MONTH</li> <li>YEAR_WEEK</li> <li>DAY_OF_WEEK</li> <li>DAY_OF_MONTH</li> <li>DAY_OF_YEAR</li> <li>WEEK</li> <li>WEEK</li> <li>WEEK</li></ul><br /><br />2 args:<br />======<br /><br /><ul> <li>ADD</li> <li>DIV</li> <li>MULT</li> <li>SUB</li> <li>POWER</li> <li>MOD</li> <li>LOCATE (index of (string, char))</li> <li>DIFF_YEARS</li> <li>DIFF_MONTHS</li> <li>DIFF_WEEKS</li> <li>DIFF_DAYS</li> <li>DIFF_HOURS</li> <li>DIFF_MINUTES</li> <li>DIFF_SECONDS</li></ul><br /><br />2 args:<br />======<br /><br /><ul> <li>MIN</li> <li>MAX</li></ul><h1>String Operators</h1>0 arg:<br />=====<br /><br /><ul> <li>CURRENT_TIME</li></ul><br /><br />1 arg:<br />=====<br /><br /><ul> <li>CURRENT_TIME</li> <li>LOWER</li> <li>UPPER</li> <li>TRIM</li> <li>STRING_CAST</li></ul><br /><br />2 args:<br />=====<br /><br /><ul> <li>CHAR_AT</li> <li>SUBSTR_1ARG (substr(string, start))</li> <li>CONCAT</li> <li>TRIM</li> <li>STRING_CAST</li></ul><br /><br />3 args:<br />=====<br /><br /><ul> <li>SUBSTR_2ARGS (substr(string, start, length))</li></ul>
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "end_date" : 0,
  "condition" : {
    "args" : [ { } ],
    "operator" : { }
  },
  "system_rule" : false,
  "condition_text" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "event_name" : "aeiou",
  "id" : "aeiou",
  "sort" : 6,
  "actions" : {
    "variables" : [ {
      "name" : "aeiou",
      "optional" : false,
      "type" : "aeiou"
    } ],
    "name" : "aeiou",
    "description" : "aeiou",
    "category" : "achievement",
    "tags" : [ "aeiou" ]
  },
  "enabled" : false,
  "start_date" : 1
}}]
     
     - parameter breRule: (body) The BRE rule object (optional)

     - returns: RequestBuilder<BreRule> 
     */
    open class func createBRERuleWithRequestBuilder(breRule: BreRule? = nil) -> RequestBuilder<BreRule> {
        let path = "/bre/rules"
        let URLString = JSAPIAPI.basePath + path
        let parameters = breRule?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreRule>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a rule
     
     - parameter id: (path) The id of the rule 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBRERule(id: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteBRERuleWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a rule
     - DELETE /bre/rules/{id}
     - May fail if there are existing rules against it. Cannot delete core rules
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the rule 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteBRERuleWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var path = "/bre/rules/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a string representation of the provided expression
     
     - parameter expression: (body) The expression (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREExpressionAsString(expression: Expressionobject? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getBREExpressionAsStringWithRequestBuilder(expression: expression).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a string representation of the provided expression
     - POST /bre/rules/expression-as-string
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter expression: (body) The expression (optional)

     - returns: RequestBuilder<String> 
     */
    open class func getBREExpressionAsStringWithRequestBuilder(expression: Expressionobject? = nil) -> RequestBuilder<String> {
        let path = "/bre/rules/expression-as-string"
        let URLString = JSAPIAPI.basePath + path
        let parameters = expression?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<String>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get a single rule
     
     - parameter id: (path) The id of the rule 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBRERule(id: String, completion: @escaping ((_ data: BreRule?,_ error: Error?) -> Void)) {
        getBRERuleWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single rule
     - GET /bre/rules/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "end_date" : 0,
  "condition" : {
    "args" : [ { } ],
    "operator" : { }
  },
  "system_rule" : false,
  "condition_text" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "event_name" : "aeiou",
  "id" : "aeiou",
  "sort" : 6,
  "actions" : {
    "variables" : [ {
      "name" : "aeiou",
      "optional" : false,
      "type" : "aeiou"
    } ],
    "name" : "aeiou",
    "description" : "aeiou",
    "category" : "achievement",
    "tags" : [ "aeiou" ]
  },
  "enabled" : false,
  "start_date" : 1
}}]
     
     - parameter id: (path) The id of the rule 

     - returns: RequestBuilder<BreRule> 
     */
    open class func getBRERuleWithRequestBuilder(id: String) -> RequestBuilder<BreRule> {
        var path = "/bre/rules/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreRule>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List rules
     
     - parameter filterName: (query) Filter for rules containing the given name (optional)
     - parameter filterEnabled: (query) Filter for rules by active status, null for both (optional, default to null)
     - parameter filterSystem: (query) Filter for rules that are system rules when true, or not when false. Leave off for both mixed (optional)
     - parameter filterTrigger: (query) Filter for rules that are for the trigger with the given name (optional)
     - parameter filterAction: (query) Filter for rules that use the action with the given name (optional)
     - parameter filterCondition: (query) Filter for rules that have a condition containing the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBRERules(filterName: String? = nil, filterEnabled: Bool? = nil, filterSystem: Bool? = nil, filterTrigger: String? = nil, filterAction: String? = nil, filterCondition: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceBreRule?,_ error: Error?) -> Void)) {
        getBRERulesWithRequestBuilder(filterName: filterName, filterEnabled: filterEnabled, filterSystem: filterSystem, filterTrigger: filterTrigger, filterAction: filterAction, filterCondition: filterCondition, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List rules
     - GET /bre/rules
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
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 9,
  "number_of_elements" : 5,
  "content" : [ {
    "end_date" : 0,
    "condition" : {
      "args" : [ { } ],
      "operator" : { }
    },
    "system_rule" : false,
    "condition_text" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "event_name" : "aeiou",
    "id" : "aeiou",
    "sort" : 6,
    "actions" : {
      "variables" : [ {
        "name" : "aeiou",
        "optional" : false,
        "type" : "aeiou"
      } ],
      "name" : "aeiou",
      "description" : "aeiou",
      "category" : "achievement",
      "tags" : [ "aeiou" ]
    },
    "enabled" : false,
    "start_date" : 1
  } ],
  "first" : true
}}]
     
     - parameter filterName: (query) Filter for rules containing the given name (optional)
     - parameter filterEnabled: (query) Filter for rules by active status, null for both (optional, default to null)
     - parameter filterSystem: (query) Filter for rules that are system rules when true, or not when false. Leave off for both mixed (optional)
     - parameter filterTrigger: (query) Filter for rules that are for the trigger with the given name (optional)
     - parameter filterAction: (query) Filter for rules that use the action with the given name (optional)
     - parameter filterCondition: (query) Filter for rules that have a condition containing the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceBreRule> 
     */
    open class func getBRERulesWithRequestBuilder(filterName: String? = nil, filterEnabled: Bool? = nil, filterSystem: Bool? = nil, filterTrigger: String? = nil, filterAction: String? = nil, filterCondition: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceBreRule> {
        let path = "/bre/rules"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_name": filterName, 
            "filter_enabled": filterEnabled, 
            "filter_system": filterSystem, 
            "filter_trigger": filterTrigger, 
            "filter_action": filterAction, 
            "filter_condition": filterCondition, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceBreRule>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Enable or disable a rule
     
     - parameter id: (path) The id of the rule 
     - parameter enabled: (body) The boolean value (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setBRERule(id: String, enabled: BooleanResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setBRERuleWithRequestBuilder(id: id, enabled: enabled).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Enable or disable a rule
     - PUT /bre/rules/{id}/enabled
     - This is helpful for turning off systems rules which cannot be deleted or modified otherwise
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the rule 
     - parameter enabled: (body) The boolean value (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setBRERuleWithRequestBuilder(id: String, enabled: BooleanResource? = nil) -> RequestBuilder<Void> {
        var path = "/bre/rules/{id}/enabled"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = enabled?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a rule
     
     - parameter id: (path) The id of the rule 
     - parameter breRule: (body) The BRE rule object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBRERule(id: String, breRule: BreRule? = nil, completion: @escaping ((_ data: BreRule?,_ error: Error?) -> Void)) {
        updateBRERuleWithRequestBuilder(id: id, breRule: breRule).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a rule
     - PUT /bre/rules/{id}
     - Cannot update system rules
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "end_date" : 0,
  "condition" : {
    "args" : [ { } ],
    "operator" : { }
  },
  "system_rule" : false,
  "condition_text" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "event_name" : "aeiou",
  "id" : "aeiou",
  "sort" : 6,
  "actions" : {
    "variables" : [ {
      "name" : "aeiou",
      "optional" : false,
      "type" : "aeiou"
    } ],
    "name" : "aeiou",
    "description" : "aeiou",
    "category" : "achievement",
    "tags" : [ "aeiou" ]
  },
  "enabled" : false,
  "start_date" : 1
}}]
     
     - parameter id: (path) The id of the rule 
     - parameter breRule: (body) The BRE rule object (optional)

     - returns: RequestBuilder<BreRule> 
     */
    open class func updateBRERuleWithRequestBuilder(id: String, breRule: BreRule? = nil) -> RequestBuilder<BreRule> {
        var path = "/bre/rules/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = breRule?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreRule>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
