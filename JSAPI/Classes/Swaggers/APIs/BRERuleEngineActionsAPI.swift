//
// BRERuleEngineActionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class BRERuleEngineActionsAPI: APIBase {
    /**
     * enum for parameter filterCategory
     */
    public enum FilterCategory_getBREActions: String { 
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
     Get a list of available actions
     
     - parameter filterCategory: (query) Filter for actions that are within a specific category (optional)
     - parameter filterName: (query) Filter for actions that have names containing the given string (optional)
     - parameter filterTags: (query) Filter for actions that have all of the given tags (comma separated list) (optional)
     - parameter filterSearch: (query) Filter for actions containing the given words somewhere within name, description and tags (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREActions(filterCategory: FilterCategory_getBREActions? = nil, filterName: String? = nil, filterTags: String? = nil, filterSearch: String? = nil, completion: @escaping ((_ data: [ActionResource]?,_ error: Error?) -> Void)) {
        getBREActionsWithRequestBuilder(filterCategory: filterCategory, filterName: filterName, filterTags: filterTags, filterSearch: filterSearch).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of available actions
     - GET /bre/actions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "variables" : [ {
    "name" : "aeiou",
    "optional" : false,
    "type" : "aeiou"
  } ],
  "name" : "aeiou",
  "description" : "aeiou",
  "category" : "achievement",
  "tags" : [ "aeiou" ]
} ]}]
     
     - parameter filterCategory: (query) Filter for actions that are within a specific category (optional)
     - parameter filterName: (query) Filter for actions that have names containing the given string (optional)
     - parameter filterTags: (query) Filter for actions that have all of the given tags (comma separated list) (optional)
     - parameter filterSearch: (query) Filter for actions containing the given words somewhere within name, description and tags (optional)

     - returns: RequestBuilder<[ActionResource]> 
     */
    open class func getBREActionsWithRequestBuilder(filterCategory: FilterCategory_getBREActions? = nil, filterName: String? = nil, filterTags: String? = nil, filterSearch: String? = nil) -> RequestBuilder<[ActionResource]> {
        let path = "/bre/actions"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_category": filterCategory?.rawValue, 
            "filter_name": filterName, 
            "filter_tags": filterTags, 
            "filter_search": filterSearch
        ])
        

        let requestBuilder: RequestBuilder<[ActionResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}