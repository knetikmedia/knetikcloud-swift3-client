//
// CampaignsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class CampaignsAPI: APIBase {
    /**
     Add a challenge to a campaign
     
     - parameter id: (path) The id of the campaign 
     - parameter challengeId: (body) The id of the challenge (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addChallengesUsingPOST(id: Int64, challengeId: Int64? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addChallengesUsingPOSTWithRequestBuilder(id: id, challengeId: challengeId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add a challenge to a campaign
     - POST /campaigns/{id}/challenges
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the campaign 
     - parameter challengeId: (body) The id of the challenge (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addChallengesUsingPOSTWithRequestBuilder(id: Int64, challengeId: Int64? = nil) -> RequestBuilder<Void> {
        var path = "/campaigns/{id}/challenges"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = challengeId?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a campaign template
     
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCampaignTemplateUsingPOST(campaignTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        createCampaignTemplateUsingPOSTWithRequestBuilder(campaignTemplateResource: campaignTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a campaign template
     - POST /campaigns/templates
     - Campaign Templates define a type of campaign and the properties they have
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createCampaignTemplateUsingPOSTWithRequestBuilder(campaignTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/campaigns/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a campaign
     
     - parameter campaignResource: (body) The campaign resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCampaignUsingPOST(campaignResource: CampaignResource? = nil, completion: @escaping ((_ data: CampaignResource?,_ error: Error?) -> Void)) {
        createCampaignUsingPOSTWithRequestBuilder(campaignResource: campaignResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a campaign
     - POST /campaigns
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "reward_set" : {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 123,
      "min_rank" : 123,
      "percent" : false,
      "value" : 1.3579000000000001069366817318950779736042022705078125,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : 123,
    "long_description" : "aeiou",
    "max_placing" : 123,
    "updated_date" : 123456789,
    "item_rewards" : [ {
      "quantity" : 123,
      "item_id" : 123,
      "max_rank" : 123,
      "item_name" : "aeiou",
      "min_rank" : 123
    } ]
  },
  "short_description" : "aeiou",
  "next_challenge_date" : 123456789,
  "active" : false,
  "long_description" : "aeiou",
  "leaderboard_strategy" : "aeiou",
  "next_challenge" : "aeiou",
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789,
  "reward_status" : "aeiou"
}}]
     
     - parameter campaignResource: (body) The campaign resource object (optional)

     - returns: RequestBuilder<CampaignResource> 
     */
    open class func createCampaignUsingPOSTWithRequestBuilder(campaignResource: CampaignResource? = nil) -> RequestBuilder<CampaignResource> {
        let path = "/campaigns"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CampaignResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a campaign template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCampaignTemplateUsingDELETE(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCampaignTemplateUsingDELETEWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a campaign template
     - DELETE /campaigns/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCampaignTemplateUsingDELETEWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/campaigns/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a campaign
     
     - parameter id: (path) The campaign id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCampaignUsingDELETE(id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCampaignUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a campaign
     - DELETE /campaigns/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The campaign id 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCampaignUsingDELETEWithRequestBuilder(id: Int64) -> RequestBuilder<Void> {
        var path = "/campaigns/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single campaign template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCampaignTemplateUsingGET(id: String, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        getCampaignTemplateUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single campaign template
     - GET /campaigns/templates/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getCampaignTemplateUsingGETWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/campaigns/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search campaign templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCampaignTemplatesUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?,_ error: Error?) -> Void)) {
        getCampaignTemplatesUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search campaign templates
     - GET /campaigns/templates
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
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : "aeiou",
    "updated_date" : 123456789,
    "properties" : [ {
      "name" : "aeiou",
      "type" : "aeiou",
      "required" : false
    } ]
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceTemplateResource> 
     */
    open class func getCampaignTemplatesUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/campaigns/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a single campaign
     
     - parameter id: (path) The campaign id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCampaignUsingGET(id: Int64, completion: @escaping ((_ data: CampaignResource?,_ error: Error?) -> Void)) {
        getCampaignUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a single campaign
     - GET /campaigns/{id}
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "reward_set" : {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 123,
      "min_rank" : 123,
      "percent" : false,
      "value" : 1.3579000000000001069366817318950779736042022705078125,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : 123,
    "long_description" : "aeiou",
    "max_placing" : 123,
    "updated_date" : 123456789,
    "item_rewards" : [ {
      "quantity" : 123,
      "item_id" : 123,
      "max_rank" : 123,
      "item_name" : "aeiou",
      "min_rank" : 123
    } ]
  },
  "short_description" : "aeiou",
  "next_challenge_date" : 123456789,
  "active" : false,
  "long_description" : "aeiou",
  "leaderboard_strategy" : "aeiou",
  "next_challenge" : "aeiou",
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789,
  "reward_status" : "aeiou"
}}]
     
     - parameter id: (path) The campaign id 

     - returns: RequestBuilder<CampaignResource> 
     */
    open class func getCampaignUsingGETWithRequestBuilder(id: Int64) -> RequestBuilder<CampaignResource> {
        var path = "/campaigns/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CampaignResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search campaigns
     
     - parameter filterActive: (query) Filter for campaigns that are active (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCampaignsUsingGET(filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceCampaignResource?,_ error: Error?) -> Void)) {
        getCampaignsUsingGETWithRequestBuilder(filterActive: filterActive, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search campaigns
     - GET /campaigns
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
    "template" : "aeiou",
    "reward_set" : {
      "short_description" : "aeiou",
      "unique_key" : "aeiou",
      "currency_rewards" : [ {
        "currency_name" : "aeiou",
        "max_rank" : 123,
        "min_rank" : 123,
        "percent" : false,
        "value" : 1.3579000000000001069366817318950779736042022705078125,
        "currency_code" : "aeiou"
      } ],
      "name" : "aeiou",
      "created_date" : 123456789,
      "id" : 123,
      "long_description" : "aeiou",
      "max_placing" : 123,
      "updated_date" : 123456789,
      "item_rewards" : [ {
        "quantity" : 123,
        "item_id" : 123,
        "max_rank" : 123,
        "item_name" : "aeiou",
        "min_rank" : 123
      } ]
    },
    "short_description" : "aeiou",
    "next_challenge_date" : 123456789,
    "active" : false,
    "long_description" : "aeiou",
    "leaderboard_strategy" : "aeiou",
    "next_challenge" : "aeiou",
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 123456789,
    "id" : 123456789,
    "updated_date" : 123456789,
    "reward_status" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterActive: (query) Filter for campaigns that are active (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceCampaignResource> 
     */
    open class func getCampaignsUsingGETWithRequestBuilder(filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCampaignResource> {
        let path = "/campaigns"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_active": filterActive, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceCampaignResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List the challenges associated with a campaign
     
     - parameter id: (path) The campaign id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getChallengesUsingGET(id: Int64, completion: @escaping ((_ data: PageResourceChallengeResource?,_ error: Error?) -> Void)) {
        getChallengesUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List the challenges associated with a campaign
     - GET /campaigns/{id}/challenges
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
    "template" : "aeiou",
    "reward_set" : {
      "short_description" : "aeiou",
      "unique_key" : "aeiou",
      "currency_rewards" : [ {
        "currency_name" : "aeiou",
        "max_rank" : 123,
        "min_rank" : 123,
        "percent" : false,
        "value" : 1.3579000000000001069366817318950779736042022705078125,
        "currency_code" : "aeiou"
      } ],
      "name" : "aeiou",
      "created_date" : 123456789,
      "id" : 123,
      "long_description" : "aeiou",
      "max_placing" : 123,
      "updated_date" : 123456789,
      "item_rewards" : [ {
        "quantity" : 123,
        "item_id" : 123,
        "max_rank" : 123,
        "item_name" : "aeiou",
        "min_rank" : 123
      } ]
    },
    "short_description" : "aeiou",
    "next_event_date" : 123456789,
    "long_description" : "aeiou",
    "reward_lag_minutes" : 123,
    "leaderboard_strategy" : "aeiou",
    "schedule" : {
      "duration" : 123,
      "repeat" : "aeiou",
      "duration_unit" : "aeiou"
    },
    "copy_of" : 123456789,
    "activities" : 123,
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 123456789,
    "id" : 123456789,
    "updated_date" : 123456789,
    "campaign_id" : 123456789,
    "start_date" : 123456789
  } ],
  "first" : true
}}]
     
     - parameter id: (path) The campaign id 

     - returns: RequestBuilder<PageResourceChallengeResource> 
     */
    open class func getChallengesUsingGETWithRequestBuilder(id: Int64) -> RequestBuilder<PageResourceChallengeResource> {
        var path = "/campaigns/{id}/challenges"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PageResourceChallengeResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove a challenge from a campaign
     
     - parameter campaignId: (path) The campaign id 
     - parameter id: (path) The challenge id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeChallengeUsingDELETE(campaignId: Int64, id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        removeChallengeUsingDELETEWithRequestBuilder(campaignId: campaignId, id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Remove a challenge from a campaign
     - DELETE /campaigns/{campaignId}/challenges/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter campaignId: (path) The campaign id 
     - parameter id: (path) The challenge id 

     - returns: RequestBuilder<Void> 
     */
    open class func removeChallengeUsingDELETEWithRequestBuilder(campaignId: Int64, id: Int64) -> RequestBuilder<Void> {
        var path = "/campaigns/{campaignId}/challenges/{id}"
        path = path.replacingOccurrences(of: "{campaignId}", with: "\(campaignId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an campaign template
     
     - parameter id: (path) The id of the template 
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCampaignTemplateUsingPUT(id: String, campaignTemplateResource: TemplateResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateCampaignTemplateUsingPUTWithRequestBuilder(id: id, campaignTemplateResource: campaignTemplateResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update an campaign template
     - PUT /campaigns/templates/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the template 
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateCampaignTemplateUsingPUTWithRequestBuilder(id: String, campaignTemplateResource: TemplateResource? = nil) -> RequestBuilder<Void> {
        var path = "/campaigns/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a campaign
     
     - parameter id: (path) The campaign id 
     - parameter campaignResource: (body) The campaign resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCampaignUsingPUT(id: Int64, campaignResource: CampaignResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateCampaignUsingPUTWithRequestBuilder(id: id, campaignResource: campaignResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a campaign
     - PUT /campaigns/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The campaign id 
     - parameter campaignResource: (body) The campaign resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateCampaignUsingPUTWithRequestBuilder(id: Int64, campaignResource: CampaignResource? = nil) -> RequestBuilder<Void> {
        var path = "/campaigns/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
