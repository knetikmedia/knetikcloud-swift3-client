//
// GamificationLeaderboardsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class GamificationLeaderboardsAPI: APIBase {
    /**
     Retrieves leaderboard details and paginated entries
     
     - parameter contextType: (path) The context type for the leaderboard 
     - parameter contextId: (path) The context id for the leaderboard 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLeaderboardUsingGET(contextType: String, contextId: String, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: LeaderboardResource?,_ error: Error?) -> Void)) {
        getLeaderboardUsingGETWithRequestBuilder(contextType: contextType, contextId: contextId, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieves leaderboard details and paginated entries
     - GET /leaderboards/{contextType}/{contextId}
     - The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.
     - examples: [{contentType=application/json, example={
  "entries" : [ {
    "score" : 123456789,
    "rank" : 123456789,
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 123,
      "display_name" : "aeiou",
      "username" : "aeiou"
    }
  } ],
  "id" : 123456789,
  "strategy" : "aeiou"
}}]
     
     - parameter contextType: (path) The context type for the leaderboard 
     - parameter contextId: (path) The context id for the leaderboard 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<LeaderboardResource> 
     */
    open class func getLeaderboardUsingGETWithRequestBuilder(contextType: String, contextId: String, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<LeaderboardResource> {
        var path = "/leaderboards/{contextType}/{contextId}"
        path = path.replacingOccurrences(of: "{contextType}", with: "\(contextType)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{contextId}", with: "\(contextId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LeaderboardResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a list of available leaderboard strategy names
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStrategiesUsingGET(completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        getStrategiesUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of available leaderboard strategy names
     - GET /leaderboards/strategies
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]

     - returns: RequestBuilder<[String]> 
     */
    open class func getStrategiesUsingGETWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/leaderboards/strategies"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Retrieves a specific user entry with rank
     
     - parameter contextType: (path) The context type for the leaderboard 
     - parameter contextId: (path) The context id for the leaderboard 
     - parameter id: (path) The id of a user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserRankUsingGET(contextType: String, contextId: String, id: String, completion: @escaping ((_ data: LeaderboardEntryResource?,_ error: Error?) -> Void)) {
        getUserRankUsingGETWithRequestBuilder(contextType: contextType, contextId: contextId, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieves a specific user entry with rank
     - GET /leaderboards/{contextType}/{contextId}/users/{id}/rank
     - The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.
     - examples: [{contentType=application/json, example={
  "score" : 123456789,
  "rank" : 123456789,
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 123,
    "display_name" : "aeiou",
    "username" : "aeiou"
  }
}}]
     
     - parameter contextType: (path) The context type for the leaderboard 
     - parameter contextId: (path) The context id for the leaderboard 
     - parameter id: (path) The id of a user 

     - returns: RequestBuilder<LeaderboardEntryResource> 
     */
    open class func getUserRankUsingGETWithRequestBuilder(contextType: String, contextId: String, id: String) -> RequestBuilder<LeaderboardEntryResource> {
        var path = "/leaderboards/{contextType}/{contextId}/users/{id}/rank"
        path = path.replacingOccurrences(of: "{contextType}", with: "\(contextType)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{contextId}", with: "\(contextId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<LeaderboardEntryResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}