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
    open class func createTriggerUsingPOST(breTriggerResource: BreTriggerResource? = nil, completion: @escaping ((_ data: BreTriggerResource?,_ error: Error?) -> Void)) {
        createTriggerUsingPOSTWithRequestBuilder(breTriggerResource: breTriggerResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a trigger
     - POST /bre/triggers
     - Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services
     - examples: [{output=none}]
     
     - parameter breTriggerResource: (body) The BRE trigger resource object (optional)

     - returns: RequestBuilder<BreTriggerResource> 
     */
    open class func createTriggerUsingPOSTWithRequestBuilder(breTriggerResource: BreTriggerResource? = nil) -> RequestBuilder<BreTriggerResource> {
        let path = "/bre/triggers"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = breTriggerResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<BreTriggerResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a trigger
     
     - parameter eventName: (path) The trigger event name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTriggerUsingDELETE(eventName: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteTriggerUsingDELETEWithRequestBuilder(eventName: eventName).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a trigger
     - DELETE /bre/triggers/{eventName}
     - May fail if there are existing rules against it. Cannot delete core triggers
     
     - parameter eventName: (path) The trigger event name 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteTriggerUsingDELETEWithRequestBuilder(eventName: String) -> RequestBuilder<Void> {
        var path = "/bre/triggers/{eventName}"
        path = path.replacingOccurrences(of: "{eventName}", with: "\(eventName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single trigger
     
     - parameter eventName: (path) The trigger event name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTriggerUsingGET(eventName: String, completion: @escaping ((_ data: BreTriggerResource?,_ error: Error?) -> Void)) {
        getTriggerUsingGETWithRequestBuilder(eventName: eventName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single trigger
     - GET /bre/triggers/{eventName}
     - examples: [{output=none}]
     
     - parameter eventName: (path) The trigger event name 

     - returns: RequestBuilder<BreTriggerResource> 
     */
    open class func getTriggerUsingGETWithRequestBuilder(eventName: String) -> RequestBuilder<BreTriggerResource> {
        var path = "/bre/triggers/{eventName}"
        path = path.replacingOccurrences(of: "{eventName}", with: "\(eventName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<BreTriggerResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     * enum for parameter filterCategory
     */
    public enum FilterCategory_getTriggersUsingGET: String { 
        case achievement = "achievement"
        case behavior = "behavior"
        case comment = "comment"
        case disposition = "disposition"
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
     - parameter filterName: (query) Filter for triggers that have names containing the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTriggersUsingGET(filterSystem: Bool? = nil, filterCategory: FilterCategory_getTriggersUsingGET? = nil, filterName: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageBreTriggerResource?,_ error: Error?) -> Void)) {
        getTriggersUsingGETWithRequestBuilder(filterSystem: filterSystem, filterCategory: filterCategory, filterName: filterName, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List triggers
     - GET /bre/triggers
     - examples: [{output=none}]
     
     - parameter filterSystem: (query) Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed (optional)
     - parameter filterCategory: (query) Filter for triggers that are within a specific category (optional)
     - parameter filterName: (query) Filter for triggers that have names containing the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageBreTriggerResource> 
     */
    open class func getTriggersUsingGETWithRequestBuilder(filterSystem: Bool? = nil, filterCategory: FilterCategory_getTriggersUsingGET? = nil, filterName: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageBreTriggerResource> {
        let path = "/bre/triggers"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_system": filterSystem,
            "filter_category": filterCategory?.rawValue,
            "filter_name": filterName,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageBreTriggerResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a trigger
     
     - parameter eventName: (path) The trigger event name 
     - parameter breTriggerResource: (body) The BRE trigger resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateTriggerUsingPUT(eventName: String, breTriggerResource: BreTriggerResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateTriggerUsingPUTWithRequestBuilder(eventName: eventName, breTriggerResource: breTriggerResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a trigger
     - PUT /bre/triggers/{eventName}
     - May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers
     
     - parameter eventName: (path) The trigger event name 
     - parameter breTriggerResource: (body) The BRE trigger resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateTriggerUsingPUTWithRequestBuilder(eventName: String, breTriggerResource: BreTriggerResource? = nil) -> RequestBuilder<Void> {
        var path = "/bre/triggers/{eventName}"
        path = path.replacingOccurrences(of: "{eventName}", with: "\(eventName)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = breTriggerResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
