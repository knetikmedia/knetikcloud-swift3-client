//
// StoreSubscriptionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreSubscriptionsAPI: APIBase {
    /**
     Creates a subscription item and associated plans
     
     - parameter subscriptionResource: (body) The subscription to be created (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSubscription(subscriptionResource: SubscriptionResource? = nil, completion: @escaping ((_ data: SubscriptionResource?,_ error: Error?) -> Void)) {
        createSubscriptionWithRequestBuilder(subscriptionResource: subscriptionResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Creates a subscription item and associated plans
     - POST /subscriptions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "geo_policy_type" : "whitelist",
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "store_end" : 3,
  "unique_key" : "aeiou",
  "availability" : "all",
  "long_description" : "aeiou",
  "sort" : 3,
  "tags" : [ "aeiou" ],
  "consolidation_day_of_month" : 5,
  "plans" : [ {
    "end_date" : 8,
    "initial_fee" : 0.9710240190511421,
    "late_payment_fee" : 6.187977526783258,
    "billing_cycle_length" : 5,
    "reactivation_sku" : "aeiou",
    "currency_code" : "aeiou",
    "recurring_fee" : 0.5331696802307428,
    "min_cycles" : 0,
    "recurring_sku" : "aeiou",
    "max_bill_attempts" : 2,
    "additional_properties" : {
      "key" : ""
    },
    "id" : "aeiou",
    "locked" : false,
    "start_date" : 8,
    "initial_sku" : "aeiou",
    "published" : false,
    "grace_period" : 9,
    "consolidated" : false,
    "first_billing_cycle_unit" : "millisecond",
    "late_payment_sku" : "aeiou",
    "first_billing_cycle_length" : 9,
    "migrate_to_plan" : "aeiou",
    "name" : "aeiou",
    "billing_cycle_unit" : "millisecond",
    "reactivation_fee" : 9.126883159270525,
    "max_cycles" : 5
  } ],
  "store_start" : 5,
  "vendor_id" : 9,
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 2,
  "id" : 5,
  "updated_date" : 6,
  "category" : "aeiou"
}}]
     
     - parameter subscriptionResource: (body) The subscription to be created (optional)

     - returns: RequestBuilder<SubscriptionResource> 
     */
    open class func createSubscriptionWithRequestBuilder(subscriptionResource: SubscriptionResource? = nil) -> RequestBuilder<SubscriptionResource> {
        let path = "/subscriptions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = subscriptionResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SubscriptionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a subscription template
     
     - parameter subscriptionTemplateResource: (body) The new subscription template (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSubscriptionTemplate(subscriptionTemplateResource: SubscriptionTemplateResource? = nil, completion: @escaping ((_ data: SubscriptionTemplateResource?,_ error: Error?) -> Void)) {
        createSubscriptionTemplateWithRequestBuilder(subscriptionTemplateResource: subscriptionTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a subscription template
     - POST /subscriptions/templates
     - Subscription Templates define a type of subscription and the properties they have.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "plan_template" : {
    "name" : "aeiou",
    "created_date" : 4,
    "id" : "aeiou",
    "updated_date" : 4,
    "properties" : [ {
      "name" : "aeiou",
      "type" : "aeiou",
      "required" : false
    } ]
  },
  "created_date" : 7,
  "id" : "aeiou",
  "updated_date" : 0,
  "properties" : [ "" ]
}}]
     
     - parameter subscriptionTemplateResource: (body) The new subscription template (optional)

     - returns: RequestBuilder<SubscriptionTemplateResource> 
     */
    open class func createSubscriptionTemplateWithRequestBuilder(subscriptionTemplateResource: SubscriptionTemplateResource? = nil) -> RequestBuilder<SubscriptionTemplateResource> {
        let path = "/subscriptions/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = subscriptionTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SubscriptionTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a subscription plan
     
     - parameter id: (path) The id of the subscription 
     - parameter planId: (path) The id of the plan 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubscription(id: Int32, planId: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteSubscriptionWithRequestBuilder(id: id, planId: planId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a subscription plan
     - DELETE /subscriptions/{id}/plans/{planId}
     - Must not be locked or a migration target
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the subscription 
     - parameter planId: (path) The id of the plan 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteSubscriptionWithRequestBuilder(id: Int32, planId: String) -> RequestBuilder<Void> {
        var path = "/subscriptions/{id}/plans/{planId}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{plan_id}", with: "\(planId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a subscription template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSubscriptionTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteSubscriptionTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a subscription template
     - DELETE /subscriptions/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteSubscriptionTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/subscriptions/templates/{id}"
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
     Retrieve a single subscription item and associated plans
     
     - parameter id: (path) The id of the subscription 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscription(id: Int32, completion: @escaping ((_ data: SubscriptionResource?,_ error: Error?) -> Void)) {
        getSubscriptionWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve a single subscription item and associated plans
     - GET /subscriptions/{id}
     - examples: [{contentType=application/json, example={
  "geo_policy_type" : "whitelist",
  "template" : "aeiou",
  "short_description" : "aeiou",
  "geo_country_list" : [ "aeiou" ],
  "store_end" : 0,
  "unique_key" : "aeiou",
  "availability" : "all",
  "long_description" : "aeiou",
  "sort" : 1,
  "tags" : [ "aeiou" ],
  "consolidation_day_of_month" : 6,
  "plans" : [ {
    "end_date" : 0,
    "initial_fee" : 5.911382949230546,
    "late_payment_fee" : 2.59023644301722,
    "billing_cycle_length" : 2,
    "reactivation_sku" : "aeiou",
    "currency_code" : "aeiou",
    "recurring_fee" : 9.79671389814171,
    "min_cycles" : 5,
    "recurring_sku" : "aeiou",
    "max_bill_attempts" : 9,
    "additional_properties" : {
      "key" : ""
    },
    "id" : "aeiou",
    "locked" : false,
    "start_date" : 3,
    "initial_sku" : "aeiou",
    "published" : false,
    "grace_period" : 1,
    "consolidated" : false,
    "first_billing_cycle_unit" : "millisecond",
    "late_payment_sku" : "aeiou",
    "first_billing_cycle_length" : 4,
    "migrate_to_plan" : "aeiou",
    "name" : "aeiou",
    "billing_cycle_unit" : "millisecond",
    "reactivation_fee" : 4.900805797367555,
    "max_cycles" : 1
  } ],
  "store_start" : 2,
  "vendor_id" : 9,
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 0,
  "id" : 8,
  "updated_date" : 1,
  "category" : "aeiou"
}}]
     
     - parameter id: (path) The id of the subscription 

     - returns: RequestBuilder<SubscriptionResource> 
     */
    open class func getSubscriptionWithRequestBuilder(id: Int32) -> RequestBuilder<SubscriptionResource> {
        var path = "/subscriptions/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SubscriptionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single subscription template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscriptionTemplate(id: String, completion: @escaping ((_ data: SubscriptionTemplateResource?,_ error: Error?) -> Void)) {
        getSubscriptionTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single subscription template
     - GET /subscriptions/templates/{id}
     - Subscription Templates define a type of subscription and the properties they have.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "plan_template" : {
    "name" : "aeiou",
    "created_date" : 3,
    "id" : "aeiou",
    "updated_date" : 9,
    "properties" : [ {
      "name" : "aeiou",
      "type" : "aeiou",
      "required" : false
    } ]
  },
  "created_date" : 8,
  "id" : "aeiou",
  "updated_date" : 1,
  "properties" : [ "" ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<SubscriptionTemplateResource> 
     */
    open class func getSubscriptionTemplateWithRequestBuilder(id: String) -> RequestBuilder<SubscriptionTemplateResource> {
        var path = "/subscriptions/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SubscriptionTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search subscription templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscriptionTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceSubscriptionTemplateResource?,_ error: Error?) -> Void)) {
        getSubscriptionTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search subscription templates
     - GET /subscriptions/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 0,
  "total_elements" : 3,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 1,
  "content" : [ {
    "name" : "aeiou",
    "plan_template" : {
      "name" : "aeiou",
      "created_date" : 1,
      "id" : "aeiou",
      "updated_date" : 6,
      "properties" : [ {
        "name" : "aeiou",
        "type" : "aeiou",
        "required" : false
      } ]
    },
    "created_date" : 3,
    "id" : "aeiou",
    "updated_date" : 1,
    "properties" : [ "" ]
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceSubscriptionTemplateResource> 
     */
    open class func getSubscriptionTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceSubscriptionTemplateResource> {
        let path = "/subscriptions/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceSubscriptionTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List available subscription items and associated plans
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscriptions(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceSubscriptionResource?,_ error: Error?) -> Void)) {
        getSubscriptionsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List available subscription items and associated plans
     - GET /subscriptions
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 6,
  "total_elements" : 9,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 8,
  "number_of_elements" : 4,
  "content" : [ {
    "geo_policy_type" : "whitelist",
    "template" : "aeiou",
    "short_description" : "aeiou",
    "geo_country_list" : [ "aeiou" ],
    "store_end" : 8,
    "unique_key" : "aeiou",
    "availability" : "all",
    "long_description" : "aeiou",
    "sort" : 7,
    "tags" : [ "aeiou" ],
    "consolidation_day_of_month" : 7,
    "plans" : [ {
      "end_date" : 1,
      "initial_fee" : 8.019410615791635,
      "late_payment_fee" : 2.979026516794485,
      "billing_cycle_length" : 8,
      "reactivation_sku" : "aeiou",
      "currency_code" : "aeiou",
      "recurring_fee" : 3.3129351676187344,
      "min_cycles" : 0,
      "recurring_sku" : "aeiou",
      "max_bill_attempts" : 5,
      "additional_properties" : {
        "key" : ""
      },
      "id" : "aeiou",
      "locked" : false,
      "start_date" : 8,
      "initial_sku" : "aeiou",
      "published" : false,
      "grace_period" : 6,
      "consolidated" : false,
      "first_billing_cycle_unit" : "millisecond",
      "late_payment_sku" : "aeiou",
      "first_billing_cycle_length" : 5,
      "migrate_to_plan" : "aeiou",
      "name" : "aeiou",
      "billing_cycle_unit" : "millisecond",
      "reactivation_fee" : 8.135570817901744,
      "max_cycles" : 4
    } ],
    "store_start" : 2,
    "vendor_id" : 4,
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 5,
    "id" : 6,
    "updated_date" : 8,
    "category" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceSubscriptionResource> 
     */
    open class func getSubscriptionsWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceSubscriptionResource> {
        let path = "/subscriptions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceSubscriptionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Processes subscriptions and charge dues
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func processSubscriptions(completion: @escaping ((_ error: Error?) -> Void)) {
        processSubscriptionsWithRequestBuilder().execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Processes subscriptions and charge dues
     - POST /subscriptions/process
     - OAuth:
       - type: oauth2
       - name: OAuth2

     - returns: RequestBuilder<Void> 
     */
    open class func processSubscriptionsWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/subscriptions/process"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Updates a subscription item and associated plans
     
     - parameter id: (path) The id of the subscription 
     - parameter subscriptionResource: (body) The subscription resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSubscription(id: Int32, subscriptionResource: SubscriptionResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateSubscriptionWithRequestBuilder(id: id, subscriptionResource: subscriptionResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Updates a subscription item and associated plans
     - PUT /subscriptions/{id}
     - Will not remove plans left out
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the subscription 
     - parameter subscriptionResource: (body) The subscription resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateSubscriptionWithRequestBuilder(id: Int32, subscriptionResource: SubscriptionResource? = nil) -> RequestBuilder<Void> {
        var path = "/subscriptions/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = subscriptionResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a subscription template
     
     - parameter id: (path) The id of the template 
     - parameter subscriptionTemplateResource: (body) The subscription template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSubscriptionTemplate(id: String, subscriptionTemplateResource: SubscriptionTemplateResource? = nil, completion: @escaping ((_ data: SubscriptionTemplateResource?,_ error: Error?) -> Void)) {
        updateSubscriptionTemplateWithRequestBuilder(id: id, subscriptionTemplateResource: subscriptionTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a subscription template
     - PUT /subscriptions/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "plan_template" : {
    "name" : "aeiou",
    "created_date" : 8,
    "id" : "aeiou",
    "updated_date" : 8,
    "properties" : [ {
      "name" : "aeiou",
      "type" : "aeiou",
      "required" : false
    } ]
  },
  "created_date" : 4,
  "id" : "aeiou",
  "updated_date" : 8,
  "properties" : [ "" ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter subscriptionTemplateResource: (body) The subscription template resource object (optional)

     - returns: RequestBuilder<SubscriptionTemplateResource> 
     */
    open class func updateSubscriptionTemplateWithRequestBuilder(id: String, subscriptionTemplateResource: SubscriptionTemplateResource? = nil) -> RequestBuilder<SubscriptionTemplateResource> {
        var path = "/subscriptions/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = subscriptionTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SubscriptionTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
