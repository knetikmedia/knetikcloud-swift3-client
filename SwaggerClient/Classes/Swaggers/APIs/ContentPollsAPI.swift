//
// ContentPollsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ContentPollsAPI: APIBase {
    /**
     Add your vote to a poll
     
     - parameter id: (path) The poll id 
     - parameter answerKey: (body) The answer key (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func answerPollUsingPOST(id: String, answerKey: String? = nil, completion: @escaping ((_ data: PollResponseResource?,_ error: Error?) -> Void)) {
        answerPollUsingPOSTWithRequestBuilder(id: id, answerKey: answerKey).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Add your vote to a poll
     - POST /media/polls/{id}/response
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter id: (path) The poll id 
     - parameter answerKey: (body) The answer key (optional)

     - returns: RequestBuilder<PollResponseResource> 
     */
    open class func answerPollUsingPOSTWithRequestBuilder(id: String, answerKey: String? = nil) -> RequestBuilder<PollResponseResource> {
        var path = "/media/polls/{id}/response"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = answerKey?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PollResponseResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a poll template
     
     - parameter pollTemplateResource: (body) The poll template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPollTemplateUsingPOST(pollTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        createPollTemplateUsingPOSTWithRequestBuilder(pollTemplateResource: pollTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a poll template
     - POST /media/polls/templates
     - Poll templates define a type of poll and the properties they have
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter pollTemplateResource: (body) The poll template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createPollTemplateUsingPOSTWithRequestBuilder(pollTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/media/polls/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = pollTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a new poll
     
     - parameter pollResource: (body) The poll object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPollUsingPOST(pollResource: PollResource? = nil, completion: @escaping ((_ data: PollResource?,_ error: Error?) -> Void)) {
        createPollUsingPOSTWithRequestBuilder(pollResource: pollResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new poll
     - POST /media/polls
     - Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter pollResource: (body) The poll object (optional)

     - returns: RequestBuilder<PollResource> 
     */
    open class func createPollUsingPOSTWithRequestBuilder(pollResource: PollResource? = nil) -> RequestBuilder<PollResource> {
        let path = "/media/polls"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = pollResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PollResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a poll template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePollTemplateUsingDELETE(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deletePollTemplateUsingDELETEWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a poll template
     - DELETE /media/polls/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deletePollTemplateUsingDELETEWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/media/polls/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "cascade": cascade
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Delete an existing poll
     
     - parameter id: (path) The poll id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePollUsingDELETE(id: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deletePollUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an existing poll
     - DELETE /media/polls/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The poll id 

     - returns: RequestBuilder<Void> 
     */
    open class func deletePollUsingDELETEWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var path = "/media/polls/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get poll answer
     
     - parameter id: (path) The poll id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPollAnswerUsingGET(id: String, completion: @escaping ((_ data: PollResponseResource?,_ error: Error?) -> Void)) {
        getPollAnswerUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get poll answer
     - GET /media/polls/{id}/response
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter id: (path) The poll id 

     - returns: RequestBuilder<PollResponseResource> 
     */
    open class func getPollAnswerUsingGETWithRequestBuilder(id: String) -> RequestBuilder<PollResponseResource> {
        var path = "/media/polls/{id}/response"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PollResponseResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single poll template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPollTemplateUsingGET(id: String, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        getPollTemplateUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single poll template
     - GET /media/polls/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getPollTemplateUsingGETWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/media/polls/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search poll templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPollTemplatesUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageTemplateResource?,_ error: Error?) -> Void)) {
        getPollTemplatesUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search poll templates
     - GET /media/polls/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageTemplateResource> 
     */
    open class func getPollTemplatesUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageTemplateResource> {
        let path = "/media/polls/templates"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single poll
     
     - parameter id: (path) The poll id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPollUsingGET(id: String, completion: @escaping ((_ data: PollResource?,_ error: Error?) -> Void)) {
        getPollUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single poll
     - GET /media/polls/{id}
     - examples: [{output=none}]
     
     - parameter id: (path) The poll id 

     - returns: RequestBuilder<PollResource> 
     */
    open class func getPollUsingGETWithRequestBuilder(id: String) -> RequestBuilder<PollResource> {
        var path = "/media/polls/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PollResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search polls
     
     - parameter filterCategory: (query) Filter for polls from a specific category by id (optional)
     - parameter filterTagset: (query) Filter for polls with specified tags (separated by comma) (optional)
     - parameter filterText: (query) Filter for polls whose text contains a string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPollsUsingGET(filterCategory: String? = nil, filterTagset: String? = nil, filterText: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PagePollResource?,_ error: Error?) -> Void)) {
        getPollsUsingGETWithRequestBuilder(filterCategory: filterCategory, filterTagset: filterTagset, filterText: filterText, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search polls
     - GET /media/polls
     - Get a list of polls with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.
     - examples: [{output=none}]
     
     - parameter filterCategory: (query) Filter for polls from a specific category by id (optional)
     - parameter filterTagset: (query) Filter for polls with specified tags (separated by comma) (optional)
     - parameter filterText: (query) Filter for polls whose text contains a string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PagePollResource> 
     */
    open class func getPollsUsingGETWithRequestBuilder(filterCategory: String? = nil, filterTagset: String? = nil, filterText: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PagePollResource> {
        let path = "/media/polls"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_category": filterCategory,
            "filter_tagset": filterTagset,
            "filter_text": filterText,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PagePollResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a poll template
     
     - parameter id: (path) The id of the template 
     - parameter pollTemplateResource: (body) The poll template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePollTemplateUsingPUT(id: String, pollTemplateResource: TemplateResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updatePollTemplateUsingPUTWithRequestBuilder(id: id, pollTemplateResource: pollTemplateResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a poll template
     - PUT /media/polls/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter pollTemplateResource: (body) The poll template resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updatePollTemplateUsingPUTWithRequestBuilder(id: String, pollTemplateResource: TemplateResource? = nil) -> RequestBuilder<Void> {
        var path = "/media/polls/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = pollTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an existing poll
     
     - parameter id: (path) The poll id 
     - parameter pollResource: (body) The poll object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePollUsingPUT(id: String, pollResource: PollResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updatePollUsingPUTWithRequestBuilder(id: id, pollResource: pollResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update an existing poll
     - PUT /media/polls/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The poll id 
     - parameter pollResource: (body) The poll object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updatePollUsingPUTWithRequestBuilder(id: String, pollResource: PollResource? = nil) -> RequestBuilder<Void> {
        var path = "/media/polls/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = pollResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
