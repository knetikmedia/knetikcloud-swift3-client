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
    open class func getModerationReport(id: Int64, completion: @escaping ((_ data: FlagReportResource?,_ error: Error?) -> Void)) {
        getModerationReportWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a flag report
     - GET /moderation/reports/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "reason" : "aeiou",
  "context" : "aeiou",
  "context_id" : "aeiou",
  "created_date" : 4,
  "id" : 3,
  "updated_date" : 9,
  "resolution" : "banned",
  "resolved" : 3
}}]
     
     - parameter id: (path) The flag report id 

     - returns: RequestBuilder<FlagReportResource> 
     */
    open class func getModerationReportWithRequestBuilder(id: Int64) -> RequestBuilder<FlagReportResource> {
        var path = "/moderation/reports/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<FlagReportResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a page of flag reports
     
     - parameter excludeResolved: (query) Ignore resolved context (optional, default to true)
     - parameter filterContext: (query) Filter by moderation context (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getModerationReports(excludeResolved: Bool? = nil, filterContext: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceFlagReportResource?,_ error: Error?) -> Void)) {
        getModerationReportsWithRequestBuilder(excludeResolved: excludeResolved, filterContext: filterContext, size: size, page: page).execute { (response, error) -> Void in
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
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 2,
  "total_elements" : 5,
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
    "reason" : "aeiou",
    "context" : "aeiou",
    "context_id" : "aeiou",
    "created_date" : 4,
    "id" : 7,
    "updated_date" : 8,
    "resolution" : "banned",
    "resolved" : 1
  } ],
  "first" : true
}}]
     
     - parameter excludeResolved: (query) Ignore resolved context (optional, default to true)
     - parameter filterContext: (query) Filter by moderation context (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceFlagReportResource> 
     */
    open class func getModerationReportsWithRequestBuilder(excludeResolved: Bool? = nil, filterContext: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceFlagReportResource> {
        let path = "/moderation/reports"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "exclude_resolved": excludeResolved, 
            "filter_context": filterContext, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceFlagReportResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a flag report
     
     - parameter id: (path) The flag report id 
     - parameter flagReportResource: (body) The new flag report (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateModerationReport(id: Int64, flagReportResource: FlagReportResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateModerationReportWithRequestBuilder(id: id, flagReportResource: flagReportResource).execute { (response, error) -> Void in
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
    open class func updateModerationReportWithRequestBuilder(id: Int64, flagReportResource: FlagReportResource? = nil) -> RequestBuilder<Void> {
        var path = "/moderation/reports/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = flagReportResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
