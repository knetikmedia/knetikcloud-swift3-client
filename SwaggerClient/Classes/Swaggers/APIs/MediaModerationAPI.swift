//
// MediaModerationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class MediaModerationAPI: APIBase {
    /**
     Get a flag report
     
     - parameter id: (path) The flag report id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFlagReportUsingGET(id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        getFlagReportUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Get a flag report
     - GET /moderation/reports/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The flag report id 

     - returns: RequestBuilder<Void> 
     */
    open class func getFlagReportUsingGETWithRequestBuilder(id: Int64) -> RequestBuilder<Void> {
        var path = "/moderation/reports/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Returns a page of flag reports
     
     - parameter excludeResolved: (query) Ignore resolved context (optional, default to true)
     - parameter filterContext: (query) Filter by moderation context (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFlagsReportUsingGET(excludeResolved: Bool? = nil, filterContext: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageFlagReportResource?,_ error: Error?) -> Void)) {
        getFlagsReportUsingGETWithRequestBuilder(excludeResolved: excludeResolved, filterContext: filterContext, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a page of flag reports
     - GET /moderation/reports
     - Context can be either a free-form string or a pre-defined context name
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter excludeResolved: (query) Ignore resolved context (optional, default to true)
     - parameter filterContext: (query) Filter by moderation context (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageFlagReportResource> 
     */
    open class func getFlagsReportUsingGETWithRequestBuilder(excludeResolved: Bool? = nil, filterContext: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageFlagReportResource> {
        let path = "/moderation/reports"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "exclude_resolved": excludeResolved,
            "filter_context": filterContext,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageFlagReportResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a flag report
     
     - parameter id: (path) The flag report id 
     - parameter flagReportResource: (body) The new flag report (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setFlagResolutionUsingPUT(id: Int64, flagReportResource: FlagReportResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setFlagResolutionUsingPUTWithRequestBuilder(id: id, flagReportResource: flagReportResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a flag report
     - PUT /moderation/reports/{id}
     - Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The flag report id 
     - parameter flagReportResource: (body) The new flag report (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setFlagResolutionUsingPUTWithRequestBuilder(id: Int64, flagReportResource: FlagReportResource? = nil) -> RequestBuilder<Void> {
        var path = "/moderation/reports/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = flagReportResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
