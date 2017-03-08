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
    open class func addChallengeToCampaign(id: Int64, challengeId: Int64? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addChallengeToCampaignWithRequestBuilder(id: id, challengeId: challengeId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add a challenge to a campaign
     - POST /campaigns/{id}/challenges
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the campaign 
     - parameter challengeId: (body) The id of the challenge (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addChallengeToCampaignWithRequestBuilder(id: Int64, challengeId: Int64? = nil) -> RequestBuilder<Void> {
        var path = "/campaigns/{id}/challenges"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = challengeId?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a campaign
     
     - parameter campaignResource: (body) The campaign resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCampaign(campaignResource: CampaignResource? = nil, completion: @escaping ((_ data: CampaignResource?,_ error: Error?) -> Void)) {
        createCampaignWithRequestBuilder(campaignResource: campaignResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a campaign
     - POST /campaigns
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "reward_set" : {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 3,
      "min_rank" : 6,
      "percent" : false,
      "value" : 5.475432192840318,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 8,
    "id" : 0,
    "long_description" : "aeiou",
    "max_placing" : 7,
    "updated_date" : 8,
    "item_rewards" : [ {
      "quantity" : 7,
      "item_id" : 2,
      "max_rank" : 2,
      "item_name" : "aeiou",
      "min_rank" : 8
    } ]
  },
  "short_description" : "aeiou",
  "next_challenge_date" : 1,
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
  "created_date" : 2,
  "id" : 7,
  "updated_date" : 8,
  "reward_status" : "pending"
}}]
     
     - parameter campaignResource: (body) The campaign resource object (optional)

     - returns: RequestBuilder<CampaignResource> 
     */
    open class func createCampaignWithRequestBuilder(campaignResource: CampaignResource? = nil) -> RequestBuilder<CampaignResource> {
        let path = "/campaigns"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CampaignResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a campaign template
     
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCampaignTemplate(campaignTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        createCampaignTemplateWithRequestBuilder(campaignTemplateResource: campaignTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a campaign template
     - POST /campaigns/templates
     - Campaign Templates define a type of campaign and the properties they have
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 1,
  "id" : "aeiou",
  "updated_date" : 8,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createCampaignTemplateWithRequestBuilder(campaignTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/campaigns/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a campaign
     
     - parameter id: (path) The campaign id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCampaign(id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCampaignWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a campaign
     - DELETE /campaigns/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The campaign id 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCampaignWithRequestBuilder(id: Int64) -> RequestBuilder<Void> {
        var path = "/campaigns/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a campaign template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCampaignTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCampaignTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a campaign template
     - DELETE /campaigns/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCampaignTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
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
     Returns a single campaign
     
     - parameter id: (path) The campaign id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCampaign(id: Int64, completion: @escaping ((_ data: CampaignResource?,_ error: Error?) -> Void)) {
        getCampaignWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
      "max_rank" : 2,
      "min_rank" : 9,
      "percent" : false,
      "value" : 8.912880830639205,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 8,
    "id" : 8,
    "long_description" : "aeiou",
    "max_placing" : 4,
    "updated_date" : 4,
    "item_rewards" : [ {
      "quantity" : 2,
      "item_id" : 2,
      "max_rank" : 9,
      "item_name" : "aeiou",
      "min_rank" : 6
    } ]
  },
  "short_description" : "aeiou",
  "next_challenge_date" : 6,
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
  "created_date" : 2,
  "id" : 1,
  "updated_date" : 0,
  "reward_status" : "pending"
}}]
     
     - parameter id: (path) The campaign id 

     - returns: RequestBuilder<CampaignResource> 
     */
    open class func getCampaignWithRequestBuilder(id: Int64) -> RequestBuilder<CampaignResource> {
        var path = "/campaigns/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CampaignResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List the challenges associated with a campaign
     
     - parameter id: (path) The campaign id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCampaignChallenges(id: Int64, completion: @escaping ((_ data: PageResourceChallengeResource?,_ error: Error?) -> Void)) {
        getCampaignChallengesWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List the challenges associated with a campaign
     - GET /campaigns/{id}/challenges
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 7,
  "total_elements" : 3,
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
    "end_date" : 3,
    "template" : "aeiou",
    "reward_set" : {
      "short_description" : "aeiou",
      "unique_key" : "aeiou",
      "currency_rewards" : [ {
        "currency_name" : "aeiou",
        "max_rank" : 8,
        "min_rank" : 2,
        "percent" : false,
        "value" : 0.723029769385054,
        "currency_code" : "aeiou"
      } ],
      "name" : "aeiou",
      "created_date" : 9,
      "id" : 3,
      "long_description" : "aeiou",
      "max_placing" : 5,
      "updated_date" : 6,
      "item_rewards" : [ {
        "quantity" : 7,
        "item_id" : 0,
        "max_rank" : 0,
        "item_name" : "aeiou",
        "min_rank" : 9
      } ]
    },
    "short_description" : "aeiou",
    "next_event_date" : 0,
    "long_description" : "aeiou",
    "reward_lag_minutes" : 5,
    "leaderboard_strategy" : "aeiou",
    "schedule" : {
      "duration" : 8,
      "repeat" : "DAILY",
      "duration_unit" : "millisecond"
    },
    "copy_of" : 6,
    "activities" : 4,
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 4,
    "id" : 4,
    "updated_date" : 9,
    "campaign_id" : 9,
    "start_date" : 9
  } ],
  "first" : true
}}]
     
     - parameter id: (path) The campaign id 

     - returns: RequestBuilder<PageResourceChallengeResource> 
     */
    open class func getCampaignChallengesWithRequestBuilder(id: Int64) -> RequestBuilder<PageResourceChallengeResource> {
        var path = "/campaigns/{id}/challenges"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PageResourceChallengeResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single campaign template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCampaignTemplate(id: String, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        getCampaignTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single campaign template
     - GET /campaigns/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 5,
  "id" : "aeiou",
  "updated_date" : 4,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getCampaignTemplateWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
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
    open class func getCampaignTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?,_ error: Error?) -> Void)) {
        getCampaignTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search campaign templates
     - GET /campaigns/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 3,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 5,
  "number_of_elements" : 9,
  "content" : [ {
    "name" : "aeiou",
    "created_date" : 1,
    "id" : "aeiou",
    "updated_date" : 6,
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
    open class func getCampaignTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
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
     List and search campaigns
     
     - parameter filterActive: (query) Filter for campaigns that are active (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCampaigns(filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceCampaignResource?,_ error: Error?) -> Void)) {
        getCampaignsWithRequestBuilder(filterActive: filterActive, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search campaigns
     - GET /campaigns
     - examples: [{contentType=application/json, example={
  "number" : 9,
  "last" : true,
  "size" : 5,
  "total_elements" : 9,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 0,
  "number_of_elements" : 9,
  "content" : [ {
    "template" : "aeiou",
    "reward_set" : {
      "short_description" : "aeiou",
      "unique_key" : "aeiou",
      "currency_rewards" : [ {
        "currency_name" : "aeiou",
        "max_rank" : 5,
        "min_rank" : 9,
        "percent" : false,
        "value" : 9.225303735666012,
        "currency_code" : "aeiou"
      } ],
      "name" : "aeiou",
      "created_date" : 4,
      "id" : 8,
      "long_description" : "aeiou",
      "max_placing" : 7,
      "updated_date" : 3,
      "item_rewards" : [ {
        "quantity" : 6,
        "item_id" : 2,
        "max_rank" : 2,
        "item_name" : "aeiou",
        "min_rank" : 5
      } ]
    },
    "short_description" : "aeiou",
    "next_challenge_date" : 0,
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
    "created_date" : 1,
    "id" : 6,
    "updated_date" : 4,
    "reward_status" : "pending"
  } ],
  "first" : true
}}]
     
     - parameter filterActive: (query) Filter for campaigns that are active (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceCampaignResource> 
     */
    open class func getCampaignsWithRequestBuilder(filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCampaignResource> {
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
     Remove a challenge from a campaign
     
     - parameter campaignId: (path) The campaign id 
     - parameter id: (path) The challenge id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeChallengeFromCampaign(campaignId: Int64, id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        removeChallengeFromCampaignWithRequestBuilder(campaignId: campaignId, id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Remove a challenge from a campaign
     - DELETE /campaigns/{campaignId}/challenges/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter campaignId: (path) The campaign id 
     - parameter id: (path) The challenge id 

     - returns: RequestBuilder<Void> 
     */
    open class func removeChallengeFromCampaignWithRequestBuilder(campaignId: Int64, id: Int64) -> RequestBuilder<Void> {
        var path = "/campaigns/{campaignId}/challenges/{id}"
        path = path.replacingOccurrences(of: "{campaign_id}", with: "\(campaignId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a campaign
     
     - parameter id: (path) The campaign id 
     - parameter campaignResource: (body) The campaign resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCampaign(id: Int64, campaignResource: CampaignResource? = nil, completion: @escaping ((_ data: CampaignResource?,_ error: Error?) -> Void)) {
        updateCampaignWithRequestBuilder(id: id, campaignResource: campaignResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a campaign
     - PUT /campaigns/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "reward_set" : {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 9,
      "min_rank" : 1,
      "percent" : false,
      "value" : 4.372875988021577,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 9,
    "id" : 6,
    "long_description" : "aeiou",
    "max_placing" : 1,
    "updated_date" : 6,
    "item_rewards" : [ {
      "quantity" : 1,
      "item_id" : 7,
      "max_rank" : 1,
      "item_name" : "aeiou",
      "min_rank" : 7
    } ]
  },
  "short_description" : "aeiou",
  "next_challenge_date" : 7,
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
  "created_date" : 1,
  "id" : 1,
  "updated_date" : 5,
  "reward_status" : "pending"
}}]
     
     - parameter id: (path) The campaign id 
     - parameter campaignResource: (body) The campaign resource object (optional)

     - returns: RequestBuilder<CampaignResource> 
     */
    open class func updateCampaignWithRequestBuilder(id: Int64, campaignResource: CampaignResource? = nil) -> RequestBuilder<CampaignResource> {
        var path = "/campaigns/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CampaignResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update an campaign template
     
     - parameter id: (path) The id of the template 
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCampaignTemplate(id: String, campaignTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        updateCampaignTemplateWithRequestBuilder(id: id, campaignTemplateResource: campaignTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update an campaign template
     - PUT /campaigns/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 2,
  "id" : "aeiou",
  "updated_date" : 3,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func updateCampaignTemplateWithRequestBuilder(id: String, campaignTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        var path = "/campaigns/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
