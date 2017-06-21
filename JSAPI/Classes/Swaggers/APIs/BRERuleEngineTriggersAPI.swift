//
// BRERuleEngineTriggersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class BRERuleEngineTriggersAPI: APIBase {
    /**
     Create a trigger
     
     - parameter breTriggerResource: (body) The BRE trigger resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBRETrigger(breTriggerResource: BreTriggerResource? = nil, completion: @escaping ((_ data: BreTriggerResource?,_ error: Error?) -> Void)) {
        createBRETriggerWithRequestBuilder(breTriggerResource: breTriggerResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a trigger
     - POST /bre/triggers
     - Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "trigger_name" : "aeiou",
  "system_trigger" : false,
  "event_name" : "aeiou",
  "category" : "achievement",
  "parameters" : [ {
    "name" : "aeiou",
    "type" : "aeiou"
  } ],
  "tags" : [ "aeiou" ],
  "trigger_description" : "aeiou"
}}]
     
     - parameter breTriggerResource: (body) The BRE trigger resource object (optional)

     - returns: RequestBuilder<BreTriggerResource> 
     */
    open class func createBRETriggerWithRequestBuilder(breTriggerResource: BreTriggerResource? = nil) -> RequestBuilder<BreTriggerResource> {
        let path = "/bre/triggers"
        let URLString = JSAPIAPI.basePath + path
        let parameters = breTriggerResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreTriggerResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a trigger
     
     - parameter eventName: (path) The trigger event name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBRETrigger(eventName: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteBRETriggerWithRequestBuilder(eventName: eventName).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a trigger
     - DELETE /bre/triggers/{eventName}
     - May fail if there are existing rules against it. Cannot delete core triggers
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter eventName: (path) The trigger event name 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteBRETriggerWithRequestBuilder(eventName: String) -> RequestBuilder<Void> {
        var path = "/bre/triggers/{eventName}"
        path = path.replacingOccurrences(of: "{event_name}", with: "\(eventName)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single trigger
     
     - parameter eventName: (path) The trigger event name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBRETrigger(eventName: String, completion: @escaping ((_ data: BreTriggerResource?,_ error: Error?) -> Void)) {
        getBRETriggerWithRequestBuilder(eventName: eventName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single trigger
     - GET /bre/triggers/{eventName}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "trigger_name" : "aeiou",
  "system_trigger" : false,
  "event_name" : "aeiou",
  "category" : "achievement",
  "parameters" : [ {
    "name" : "aeiou",
    "type" : "aeiou"
  } ],
  "tags" : [ "aeiou" ],
  "trigger_description" : "aeiou"
}}]
     
     - parameter eventName: (path) The trigger event name 

     - returns: RequestBuilder<BreTriggerResource> 
     */
    open class func getBRETriggerWithRequestBuilder(eventName: String) -> RequestBuilder<BreTriggerResource> {
        var path = "/bre/triggers/{eventName}"
        path = path.replacingOccurrences(of: "{event_name}", with: "\(eventName)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreTriggerResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter filterCategory
     */
    public enum FilterCategory_getBRETriggers: String { 
        case achievement = "achievement"
        case behavior = "behavior"
        case comment = "comment"
        case disposition = "disposition"
        case device = "device"
        case entitlement = "entitlement"
        case friends = "friends"
        case fulfillment = "fulfillment"
        case gamification = "gamification"
        case inventory = "inventory"
        case invoice = "invoice"
        case media = "media"
        case scheduler = "scheduler"
        case store = "store"
        case subscription = "subscription"
        case user = "user"
        case wallet = "wallet"
        case custom = "custom"
        case challenge = "challenge"
        case activity = "activity"
        case campaign = "campaign"
        case event = "event"
    }

    /**
     List triggers
     
     - parameter filterSystem: (query) Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed (optional)
     - parameter filterCategory: (query) Filter for triggers that are within a specific category (optional)
     - parameter filterTags: (query) Filter for triggers that have all of the given tags (comma separated list) (optional)
     - parameter filterName: (query) Filter for triggers that have names containing the given string (optional)
     - parameter filterSearch: (query) Filter for triggers containing the given words somewhere within name, description and tags (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBRETriggers(filterSystem: Bool? = nil, filterCategory: FilterCategory_getBRETriggers? = nil, filterTags: String? = nil, filterName: String? = nil, filterSearch: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceBreTriggerResource?,_ error: Error?) -> Void)) {
        getBRETriggersWithRequestBuilder(filterSystem: filterSystem, filterCategory: filterCategory, filterTags: filterTags, filterName: filterName, filterSearch: filterSearch, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List triggers
     - GET /bre/triggers
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 7,
  "last" : true,
  "size" : 9,
  "total_elements" : 3,
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
    "trigger_name" : "aeiou",
    "system_trigger" : false,
    "event_name" : "aeiou",
    "category" : "achievement",
    "parameters" : [ {
      "name" : "aeiou",
      "type" : "aeiou"
    } ],
    "tags" : [ "aeiou" ],
    "trigger_description" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterSystem: (query) Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed (optional)
     - parameter filterCategory: (query) Filter for triggers that are within a specific category (optional)
     - parameter filterTags: (query) Filter for triggers that have all of the given tags (comma separated list) (optional)
     - parameter filterName: (query) Filter for triggers that have names containing the given string (optional)
     - parameter filterSearch: (query) Filter for triggers containing the given words somewhere within name, description and tags (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceBreTriggerResource> 
     */
    open class func getBRETriggersWithRequestBuilder(filterSystem: Bool? = nil, filterCategory: FilterCategory_getBRETriggers? = nil, filterTags: String? = nil, filterName: String? = nil, filterSearch: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceBreTriggerResource> {
        let path = "/bre/triggers"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_system": filterSystem, 
            "filter_category": filterCategory?.rawValue, 
            "filter_tags": filterTags, 
            "filter_name": filterName, 
            "filter_search": filterSearch, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceBreTriggerResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a trigger
     
     - parameter eventName: (path) The trigger event name 
     - parameter breTriggerResource: (body) The BRE trigger resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBRETrigger(eventName: String, breTriggerResource: BreTriggerResource? = nil, completion: @escaping ((_ data: BreTriggerResource?,_ error: Error?) -> Void)) {
        updateBRETriggerWithRequestBuilder(eventName: eventName, breTriggerResource: breTriggerResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a trigger
     - PUT /bre/triggers/{eventName}
     - May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "trigger_name" : "aeiou",
  "system_trigger" : false,
  "event_name" : "aeiou",
  "category" : "achievement",
  "parameters" : [ {
    "name" : "aeiou",
    "type" : "aeiou"
  } ],
  "tags" : [ "aeiou" ],
  "trigger_description" : "aeiou"
}}]
     
     - parameter eventName: (path) The trigger event name 
     - parameter breTriggerResource: (body) The BRE trigger resource object (optional)

     - returns: RequestBuilder<BreTriggerResource> 
     */
    open class func updateBRETriggerWithRequestBuilder(eventName: String, breTriggerResource: BreTriggerResource? = nil) -> RequestBuilder<BreTriggerResource> {
        var path = "/bre/triggers/{eventName}"
        path = path.replacingOccurrences(of: "{event_name}", with: "\(eventName)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = breTriggerResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreTriggerResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
