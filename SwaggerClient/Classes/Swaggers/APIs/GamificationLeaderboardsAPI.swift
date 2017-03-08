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
    open class func getLeaderboard(contextType: String, contextId: String, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: LeaderboardResource?,_ error: Error?) -> Void)) {
        getLeaderboardWithRequestBuilder(contextType: contextType, contextId: contextId, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieves leaderboard details and paginated entries
     - GET /leaderboards/{contextType}/{contextId}
     - The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.
     - examples: [{contentType=application/json, example={
  "entries" : [ {
    "score" : 0,
    "rank" : 3,
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 7,
      "display_name" : "aeiou",
      "username" : "aeiou"
    }
  } ],
  "id" : 9,
  "strategy" : "aeiou"
}}]
     
     - parameter contextType: (path) The context type for the leaderboard 
     - parameter contextId: (path) The context id for the leaderboard 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<LeaderboardResource> 
     */
    open class func getLeaderboardWithRequestBuilder(contextType: String, contextId: String, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<LeaderboardResource> {
        var path = "/leaderboards/{contextType}/{contextId}"
        path = path.replacingOccurrences(of: "{context_type}", with: "\(contextType)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{context_id}", with: "\(contextId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<LeaderboardResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieves a specific user entry with rank
     
     - parameter contextType: (path) The context type for the leaderboard 
     - parameter contextId: (path) The context id for the leaderboard 
     - parameter id: (path) The id of a user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLeaderboardRank(contextType: String, contextId: String, id: String, completion: @escaping ((_ data: LeaderboardEntryResource?,_ error: Error?) -> Void)) {
        getLeaderboardRankWithRequestBuilder(contextType: contextType, contextId: contextId, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieves a specific user entry with rank
     - GET /leaderboards/{contextType}/{contextId}/users/{id}/rank
     - The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "score" : 0,
  "rank" : 1,
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 7,
    "display_name" : "aeiou",
    "username" : "aeiou"
  }
}}]
     
     - parameter contextType: (path) The context type for the leaderboard 
     - parameter contextId: (path) The context id for the leaderboard 
     - parameter id: (path) The id of a user 

     - returns: RequestBuilder<LeaderboardEntryResource> 
     */
    open class func getLeaderboardRankWithRequestBuilder(contextType: String, contextId: String, id: String) -> RequestBuilder<LeaderboardEntryResource> {
        var path = "/leaderboards/{contextType}/{contextId}/users/{id}/rank"
        path = path.replacingOccurrences(of: "{context_type}", with: "\(contextType)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{context_id}", with: "\(contextId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LeaderboardEntryResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of available leaderboard strategy names
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLeaderboardStrategies(completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        getLeaderboardStrategiesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of available leaderboard strategy names
     - GET /leaderboards/strategies
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]

     - returns: RequestBuilder<[String]> 
     */
    open class func getLeaderboardStrategiesWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/leaderboards/strategies"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}