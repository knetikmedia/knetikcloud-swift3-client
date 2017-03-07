//
// CampaignsRewardsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class CampaignsRewardsAPI: APIBase {
    /**
     Create a reward set
     
     - parameter rewardSetResource: (body) The reward set resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createRewardSet(rewardSetResource: RewardSetResource? = nil, completion: @escaping ((_ data: RewardSetResource?,_ error: Error?) -> Void)) {
        createRewardSetWithRequestBuilder(rewardSetResource: rewardSetResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a reward set
     - POST /rewards
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "currency_rewards" : [ {
    "currency_name" : "aeiou",
    "max_rank" : 7,
    "min_rank" : 3,
    "percent" : false,
    "value" : 3.393683565947722,
    "currency_code" : "aeiou"
  } ],
  "name" : "aeiou",
  "created_date" : 8,
  "id" : 8,
  "long_description" : "aeiou",
  "max_placing" : 3,
  "updated_date" : 5,
  "item_rewards" : [ {
    "quantity" : 8,
    "item_id" : 2,
    "max_rank" : 9,
    "item_name" : "aeiou",
    "min_rank" : 7
  } ]
}}]
     
     - parameter rewardSetResource: (body) The reward set resource object (optional)

     - returns: RequestBuilder<RewardSetResource> 
     */
    open class func createRewardSetWithRequestBuilder(rewardSetResource: RewardSetResource? = nil) -> RequestBuilder<RewardSetResource> {
        let path = "/rewards"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = rewardSetResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<RewardSetResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a reward set
     
     - parameter id: (path) The reward id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteRewardSet(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteRewardSetWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a reward set
     - DELETE /rewards/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The reward id 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteRewardSetWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/rewards/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single reward set
     
     - parameter id: (path) The reward id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRewardSet(id: Int32, completion: @escaping ((_ data: RewardSetResource?,_ error: Error?) -> Void)) {
        getRewardSetWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single reward set
     - GET /rewards/{id}
     - examples: [{contentType=application/json, example={
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "currency_rewards" : [ {
    "currency_name" : "aeiou",
    "max_rank" : 1,
    "min_rank" : 5,
    "percent" : false,
    "value" : 2.5251293893173985,
    "currency_code" : "aeiou"
  } ],
  "name" : "aeiou",
  "created_date" : 4,
  "id" : 2,
  "long_description" : "aeiou",
  "max_placing" : 0,
  "updated_date" : 0,
  "item_rewards" : [ {
    "quantity" : 9,
    "item_id" : 6,
    "max_rank" : 9,
    "item_name" : "aeiou",
    "min_rank" : 7
  } ]
}}]
     
     - parameter id: (path) The reward id 

     - returns: RequestBuilder<RewardSetResource> 
     */
    open class func getRewardSetWithRequestBuilder(id: Int32) -> RequestBuilder<RewardSetResource> {
        var path = "/rewards/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<RewardSetResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search reward sets
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRewardSets(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceRewardSetResource?,_ error: Error?) -> Void)) {
        getRewardSetsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search reward sets
     - GET /rewards
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 7,
  "total_elements" : 8,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 6,
  "content" : [ {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 7,
      "min_rank" : 7,
      "percent" : false,
      "value" : 1.9899010604158196,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 8,
    "id" : 9,
    "long_description" : "aeiou",
    "max_placing" : 0,
    "updated_date" : 7,
    "item_rewards" : [ {
      "quantity" : 1,
      "item_id" : 4,
      "max_rank" : 0,
      "item_name" : "aeiou",
      "min_rank" : 9
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
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceRewardSetResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a reward set
     
     - parameter id: (path) The reward id 
     - parameter rewardSetResource: (body) The reward set resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateRewardSet(id: Int32, rewardSetResource: RewardSetResource? = nil, completion: @escaping ((_ data: RewardSetResource?,_ error: Error?) -> Void)) {
        updateRewardSetWithRequestBuilder(id: id, rewardSetResource: rewardSetResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a reward set
     - PUT /rewards/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "currency_rewards" : [ {
    "currency_name" : "aeiou",
    "max_rank" : 9,
    "min_rank" : 5,
    "percent" : false,
    "value" : 4.391833487012496,
    "currency_code" : "aeiou"
  } ],
  "name" : "aeiou",
  "created_date" : 6,
  "id" : 8,
  "long_description" : "aeiou",
  "max_placing" : 3,
  "updated_date" : 4,
  "item_rewards" : [ {
    "quantity" : 5,
    "item_id" : 0,
    "max_rank" : 2,
    "item_name" : "aeiou",
    "min_rank" : 3
  } ]
}}]
     
     - parameter id: (path) The reward id 
     - parameter rewardSetResource: (body) The reward set resource object (optional)

     - returns: RequestBuilder<RewardSetResource> 
     */
    open class func updateRewardSetWithRequestBuilder(id: Int32, rewardSetResource: RewardSetResource? = nil) -> RequestBuilder<RewardSetResource> {
        var path = "/rewards/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = rewardSetResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<RewardSetResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
