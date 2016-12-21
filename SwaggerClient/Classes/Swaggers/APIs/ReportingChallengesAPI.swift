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
    open class func getChallengeEventLeaderboardUsingGET(filterEvent: Int64? = nil, completion: @escaping ((_ data: PageResourceChallengeEventParticipantResource?,_ error: Error?) -> Void)) {
        getChallengeEventLeaderboardUsingGETWithRequestBuilder(filterEvent: filterEvent).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve a challenge event leaderboard details
     - GET /reporting/events/leaderboard
     - Lists all leaderboard entries with additional user details
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
    "score" : 123456789,
    "user_id" : 123,
    "fullname" : "aeiou",
    "email" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)

     - returns: RequestBuilder<PageResourceChallengeEventParticipantResource> 
     */
    open class func getChallengeEventLeaderboardUsingGETWithRequestBuilder(filterEvent: Int64? = nil) -> RequestBuilder<PageResourceChallengeEventParticipantResource> {
        let path = "/reporting/events/leaderboard"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_event": filterEvent?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceChallengeEventParticipantResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Retrieve a challenge event participant details
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getChallengeEventParticipantsUsingGET(filterEvent: Int64? = nil, completion: @escaping ((_ data: PageResourceChallengeEventParticipantResource?,_ error: Error?) -> Void)) {
        getChallengeEventParticipantsUsingGETWithRequestBuilder(filterEvent: filterEvent).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve a challenge event participant details
     - GET /reporting/events/participants
     - Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
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
    "score" : 123456789,
    "user_id" : 123,
    "fullname" : "aeiou",
    "email" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)

     - returns: RequestBuilder<PageResourceChallengeEventParticipantResource> 
     */
    open class func getChallengeEventParticipantsUsingGETWithRequestBuilder(filterEvent: Int64? = nil) -> RequestBuilder<PageResourceChallengeEventParticipantResource> {
        let path = "/reporting/events/participants"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_event": filterEvent?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceChallengeEventParticipantResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
