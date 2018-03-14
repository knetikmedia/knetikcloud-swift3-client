//
// Rule_Engine_RulesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Rule_Engine_RulesAPI: APIBase {
    /**
     Create a rule
     - parameter breRule: (body) The BRE rule object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBRERule(breRule: BreRule? = nil, completion: @escaping ((_ data: BreRule?, _ error: ErrorResponse?) -> Void)) {
        createBRERuleWithRequestBuilder(breRule: breRule).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a rule
     - POST /bre/rules
     - Rules define which actions to run when a given event verifies the specified condition. Full list of predicates and other type of expressions can be found at GET /bre/expressions/. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "end_date" : 0,
  "condition_text" : "condition_text",
  "evaluation_count" : 6,
  "description" : "description",
  "sort" : 5,
  "enabled" : false,
  "run_count" : 1,
  "condition" : {
    "args" : [ {
      "definition" : "definition",
      "type" : "type"
    }, {
      "definition" : "definition",
      "type" : "type"
    } ],
    "return_type" : "return_type",
    "op" : "op",
    "supported_operators" : [ {
      "return_type" : "return_type",
      "template" : "template",
      "description" : "description",
      "arguments" : [ {
        "name" : "name",
        "type" : "type"
      }, {
        "name" : "name",
        "type" : "type"
      } ],
      "operator" : { }
    }, {
      "return_type" : "return_type",
      "template" : "template",
      "description" : "description",
      "arguments" : [ {
        "name" : "name",
        "type" : "type"
      }, {
        "name" : "name",
        "type" : "type"
      } ],
      "operator" : { }
    } ],
    "definition" : "definition",
    "type" : "type"
  },
  "system_rule" : false,
  "name" : "name",
  "event_name" : "event_name",
  "id" : "id",
  "actions" : [ {
    "mapping" : "{}",
    "type" : "type"
  }, {
    "mapping" : "{}",
    "type" : "type"
  } ],
  "start_date" : 5
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
    open class func deleteBRERule(id: String, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteBRERuleWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete a rule
     - DELETE /bre/rules/{id}
     - May fail if there are existing rules against it. Cannot delete core rules. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
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
    open class func getBREExpressionAsString(expression: Expressionobject? = nil, completion: @escaping ((_ data: String?, _ error: ErrorResponse?) -> Void)) {
        getBREExpressionAsStringWithRequestBuilder(expression: expression).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a string representation of the provided expression
     - POST /bre/rules/expression-as-string
     - <b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=""}]
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
    open class func getBRERule(id: String, completion: @escaping ((_ data: BreRule?, _ error: ErrorResponse?) -> Void)) {
        getBRERuleWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single rule
     - GET /bre/rules/{id}
     - <b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "end_date" : 0,
  "condition_text" : "condition_text",
  "evaluation_count" : 6,
  "description" : "description",
  "sort" : 5,
  "enabled" : false,
  "run_count" : 1,
  "condition" : {
    "args" : [ {
      "definition" : "definition",
      "type" : "type"
    }, {
      "definition" : "definition",
      "type" : "type"
    } ],
    "return_type" : "return_type",
    "op" : "op",
    "supported_operators" : [ {
      "return_type" : "return_type",
      "template" : "template",
      "description" : "description",
      "arguments" : [ {
        "name" : "name",
        "type" : "type"
      }, {
        "name" : "name",
        "type" : "type"
      } ],
      "operator" : { }
    }, {
      "return_type" : "return_type",
      "template" : "template",
      "description" : "description",
      "arguments" : [ {
        "name" : "name",
        "type" : "type"
      }, {
        "name" : "name",
        "type" : "type"
      } ],
      "operator" : { }
    } ],
    "definition" : "definition",
    "type" : "type"
  },
  "system_rule" : false,
  "name" : "name",
  "event_name" : "event_name",
  "id" : "id",
  "actions" : [ {
    "mapping" : "{}",
    "type" : "type"
  }, {
    "mapping" : "{}",
    "type" : "type"
  } ],
  "start_date" : 5
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
    open class func getBRERules(filterName: String? = nil, filterEnabled: Bool? = nil, filterSystem: Bool? = nil, filterTrigger: String? = nil, filterAction: String? = nil, filterCondition: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceBreRule?, _ error: ErrorResponse?) -> Void)) {
        getBRERulesWithRequestBuilder(filterName: filterName, filterEnabled: filterEnabled, filterSystem: filterSystem, filterTrigger: filterTrigger, filterAction: filterAction, filterCondition: filterCondition, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List rules
     - GET /bre/rules
     - <b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 2,
  "last" : true,
  "size" : 9,
  "total_elements" : 3,
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
  "total_pages" : 2,
  "number_of_elements" : 7,
  "content" : [ {
    "end_date" : 0,
    "condition_text" : "condition_text",
    "evaluation_count" : 6,
    "description" : "description",
    "sort" : 5,
    "enabled" : false,
    "run_count" : 1,
    "condition" : {
      "args" : [ {
        "definition" : "definition",
        "type" : "type"
      }, {
        "definition" : "definition",
        "type" : "type"
      } ],
      "return_type" : "return_type",
      "op" : "op",
      "supported_operators" : [ {
        "return_type" : "return_type",
        "template" : "template",
        "description" : "description",
        "arguments" : [ {
          "name" : "name",
          "type" : "type"
        }, {
          "name" : "name",
          "type" : "type"
        } ],
        "operator" : { }
      }, {
        "return_type" : "return_type",
        "template" : "template",
        "description" : "description",
        "arguments" : [ {
          "name" : "name",
          "type" : "type"
        }, {
          "name" : "name",
          "type" : "type"
        } ],
        "operator" : { }
      } ],
      "definition" : "definition",
      "type" : "type"
    },
    "system_rule" : false,
    "name" : "name",
    "event_name" : "event_name",
    "id" : "id",
    "actions" : [ {
      "mapping" : "{}",
      "type" : "type"
    }, {
      "mapping" : "{}",
      "type" : "type"
    } ],
    "start_date" : 5
  }, {
    "end_date" : 0,
    "condition_text" : "condition_text",
    "evaluation_count" : 6,
    "description" : "description",
    "sort" : 5,
    "enabled" : false,
    "run_count" : 1,
    "condition" : {
      "args" : [ {
        "definition" : "definition",
        "type" : "type"
      }, {
        "definition" : "definition",
        "type" : "type"
      } ],
      "return_type" : "return_type",
      "op" : "op",
      "supported_operators" : [ {
        "return_type" : "return_type",
        "template" : "template",
        "description" : "description",
        "arguments" : [ {
          "name" : "name",
          "type" : "type"
        }, {
          "name" : "name",
          "type" : "type"
        } ],
        "operator" : { }
      }, {
        "return_type" : "return_type",
        "template" : "template",
        "description" : "description",
        "arguments" : [ {
          "name" : "name",
          "type" : "type"
        }, {
          "name" : "name",
          "type" : "type"
        } ],
        "operator" : { }
      } ],
      "definition" : "definition",
      "type" : "type"
    },
    "system_rule" : false,
    "name" : "name",
    "event_name" : "event_name",
    "id" : "id",
    "actions" : [ {
      "mapping" : "{}",
      "type" : "type"
    }, {
      "mapping" : "{}",
      "type" : "type"
    } ],
    "start_date" : 5
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
    open class func setBRERule(id: String, enabled: BooleanResource? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        setBRERuleWithRequestBuilder(id: id, enabled: enabled).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Enable or disable a rule
     - PUT /bre/rules/{id}/enabled
     - This is helpful for turning off systems rules which cannot be deleted or modified otherwise. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
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
    open class func updateBRERule(id: String, breRule: BreRule? = nil, completion: @escaping ((_ data: BreRule?, _ error: ErrorResponse?) -> Void)) {
        updateBRERuleWithRequestBuilder(id: id, breRule: breRule).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a rule
     - PUT /bre/rules/{id}
     - Cannot update system rules. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_RULES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "end_date" : 0,
  "condition_text" : "condition_text",
  "evaluation_count" : 6,
  "description" : "description",
  "sort" : 5,
  "enabled" : false,
  "run_count" : 1,
  "condition" : {
    "args" : [ {
      "definition" : "definition",
      "type" : "type"
    }, {
      "definition" : "definition",
      "type" : "type"
    } ],
    "return_type" : "return_type",
    "op" : "op",
    "supported_operators" : [ {
      "return_type" : "return_type",
      "template" : "template",
      "description" : "description",
      "arguments" : [ {
        "name" : "name",
        "type" : "type"
      }, {
        "name" : "name",
        "type" : "type"
      } ],
      "operator" : { }
    }, {
      "return_type" : "return_type",
      "template" : "template",
      "description" : "description",
      "arguments" : [ {
        "name" : "name",
        "type" : "type"
      }, {
        "name" : "name",
        "type" : "type"
      } ],
      "operator" : { }
    } ],
    "definition" : "definition",
    "type" : "type"
  },
  "system_rule" : false,
  "name" : "name",
  "event_name" : "event_name",
  "id" : "id",
  "actions" : [ {
    "mapping" : "{}",
    "type" : "type"
  }, {
    "mapping" : "{}",
    "type" : "type"
  } ],
  "start_date" : 5
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