//
// Campaigns_RewardsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Campaigns_RewardsAPI: APIBase {
    /**
     Create a reward set
     - parameter rewardSetResource: (body) The reward set resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createRewardSet(rewardSetResource: RewardSetResource? = nil, completion: @escaping ((_ data: RewardSetResource?, _ error: ErrorResponse?) -> Void)) {
        createRewardSetWithRequestBuilder(rewardSetResource: rewardSetResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a reward set
     - POST /rewards
     - <b>Permissions Needed:</b> REWARDS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "short_description" : "short_description",
  "unique_key" : "unique_key",
  "currency_rewards" : [ {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  }, {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  } ],
  "name" : "name",
  "created_date" : 7,
  "id" : 4,
  "long_description" : "long_description",
  "max_placing" : 6,
  "updated_date" : 7,
  "item_rewards" : [ {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  }, {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  } ]
}}]
     - parameter rewardSetResource: (body) The reward set resource object (optional)
     - returns: RequestBuilder<RewardSetResource> 
     */
    open class func createRewardSetWithRequestBuilder(rewardSetResource: RewardSetResource? = nil) -> RequestBuilder<RewardSetResource> {
        let path = "/rewards"
        let URLString = JSAPIAPI.basePath + path
        let parameters = rewardSetResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RewardSetResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a reward set
     - parameter id: (path) The reward id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteRewardSet(id: Int32, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteRewardSetWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete a reward set
     - DELETE /rewards/{id}
     - <b>Permissions Needed:</b> REWARDS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The reward id 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteRewardSetWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/rewards/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single reward set
     - parameter id: (path) The reward id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRewardSet(id: Int32, completion: @escaping ((_ data: RewardSetResource?, _ error: ErrorResponse?) -> Void)) {
        getRewardSetWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single reward set
     - GET /rewards/{id}
     - <b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "short_description" : "short_description",
  "unique_key" : "unique_key",
  "currency_rewards" : [ {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  }, {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  } ],
  "name" : "name",
  "created_date" : 7,
  "id" : 4,
  "long_description" : "long_description",
  "max_placing" : 6,
  "updated_date" : 7,
  "item_rewards" : [ {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  }, {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  } ]
}}]
     - parameter id: (path) The reward id 
     - returns: RequestBuilder<RewardSetResource> 
     */
    open class func getRewardSetWithRequestBuilder(id: Int32) -> RequestBuilder<RewardSetResource> {
        var path = "/rewards/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RewardSetResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search reward sets
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRewardSets(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceRewardSetResource?, _ error: ErrorResponse?) -> Void)) {
        getRewardSetsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List and search reward sets
     - GET /rewards
     - <b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 1,
  "total_elements" : 5,
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
  "total_pages" : 5,
  "number_of_elements" : 6,
  "content" : [ {
    "short_description" : "short_description",
    "unique_key" : "unique_key",
    "currency_rewards" : [ {
      "currency_name" : "currency_name",
      "max_rank" : 9,
      "min_rank" : 3,
      "percent" : false,
      "value" : 2.027123023002322,
      "currency_code" : "currency_code"
    }, {
      "currency_name" : "currency_name",
      "max_rank" : 9,
      "min_rank" : 3,
      "percent" : false,
      "value" : 2.027123023002322,
      "currency_code" : "currency_code"
    } ],
    "name" : "name",
    "created_date" : 7,
    "id" : 4,
    "long_description" : "long_description",
    "max_placing" : 6,
    "updated_date" : 7,
    "item_rewards" : [ {
      "quantity" : 1,
      "item_id" : 7,
      "max_rank" : 1,
      "item_name" : "item_name",
      "min_rank" : 1
    }, {
      "quantity" : 1,
      "item_id" : 7,
      "max_rank" : 1,
      "item_name" : "item_name",
      "min_rank" : 1
    } ]
  }, {
    "short_description" : "short_description",
    "unique_key" : "unique_key",
    "currency_rewards" : [ {
      "currency_name" : "currency_name",
      "max_rank" : 9,
      "min_rank" : 3,
      "percent" : false,
      "value" : 2.027123023002322,
      "currency_code" : "currency_code"
    }, {
      "currency_name" : "currency_name",
      "max_rank" : 9,
      "min_rank" : 3,
      "percent" : false,
      "value" : 2.027123023002322,
      "currency_code" : "currency_code"
    } ],
    "name" : "name",
    "created_date" : 7,
    "id" : 4,
    "long_description" : "long_description",
    "max_placing" : 6,
    "updated_date" : 7,
    "item_rewards" : [ {
      "quantity" : 1,
      "item_id" : 7,
      "max_rank" : 1,
      "item_name" : "item_name",
      "min_rank" : 1
    }, {
      "quantity" : 1,
      "item_id" : 7,
      "max_rank" : 1,
      "item_name" : "item_name",
      "min_rank" : 1
    } ]
  } ],
  "first" : true
}}]
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - returns: RequestBuilder<PageResourceRewardSetResource> 
     */
    open class func getRewardSetsWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceRewardSetResource> {
        let path = "/rewards"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceRewardSetResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a reward set
     - parameter id: (path) The reward id 
     - parameter rewardSetResource: (body) The reward set resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateRewardSet(id: Int32, rewardSetResource: RewardSetResource? = nil, completion: @escaping ((_ data: RewardSetResource?, _ error: ErrorResponse?) -> Void)) {
        updateRewardSetWithRequestBuilder(id: id, rewardSetResource: rewardSetResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a reward set
     - PUT /rewards/{id}
     - <b>Permissions Needed:</b> REWARDS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "short_description" : "short_description",
  "unique_key" : "unique_key",
  "currency_rewards" : [ {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  }, {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  } ],
  "name" : "name",
  "created_date" : 7,
  "id" : 4,
  "long_description" : "long_description",
  "max_placing" : 6,
  "updated_date" : 7,
  "item_rewards" : [ {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  }, {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  } ]
}}]
     - parameter id: (path) The reward id 
     - parameter rewardSetResource: (body) The reward set resource object (optional)
     - returns: RequestBuilder<RewardSetResource> 
     */
    open class func updateRewardSetWithRequestBuilder(id: Int32, rewardSetResource: RewardSetResource? = nil) -> RequestBuilder<RewardSetResource> {
        var path = "/rewards/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = rewardSetResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<RewardSetResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}