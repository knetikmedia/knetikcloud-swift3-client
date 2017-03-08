//
// ReportingChallengesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ReportingChallengesAPI: APIBase {
    /**
     Retrieve a challenge event leaderboard details
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getChallengeEventLeaderboard(filterEvent: Int64? = nil, completion: @escaping ((_ data: PageResourceChallengeEventParticipantResource?,_ error: Error?) -> Void)) {
        getChallengeEventLeaderboardWithRequestBuilder(filterEvent: filterEvent).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve a challenge event leaderboard details
     - GET /reporting/events/leaderboard
     - Lists all leaderboard entries with additional user details
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 6,
  "last" : true,
  "size" : 5,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 4,
  "number_of_elements" : 9,
  "content" : [ {
    "score" : 2,
    "user_id" : 8,
    "fullname" : "aeiou",
    "email" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)

     - returns: RequestBuilder<PageResourceChallengeEventParticipantResource> 
     */
    open class func getChallengeEventLeaderboardWithRequestBuilder(filterEvent: Int64? = nil) -> RequestBuilder<PageResourceChallengeEventParticipantResource> {
        let path = "/reporting/events/leaderboard"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_event": filterEvent?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceChallengeEventParticipantResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieve a challenge event participant details
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getChallengeEventParticipants(filterEvent: Int64? = nil, completion: @escaping ((_ data: PageResourceChallengeEventParticipantResource?,_ error: Error?) -> Void)) {
        getChallengeEventParticipantsWithRequestBuilder(filterEvent: filterEvent).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve a challenge event participant details
     - GET /reporting/events/participants
     - Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 2,
  "last" : true,
  "size" : 0,
  "total_elements" : 4,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 8,
  "content" : [ {
    "score" : 5,
    "user_id" : 3,
    "fullname" : "aeiou",
    "email" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)

     - returns: RequestBuilder<PageResourceChallengeEventParticipantResource> 
     */
    open class func getChallengeEventParticipantsWithRequestBuilder(filterEvent: Int64? = nil) -> RequestBuilder<PageResourceChallengeEventParticipantResource> {
        let path = "/reporting/events/participants"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_event": filterEvent?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceChallengeEventParticipantResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
