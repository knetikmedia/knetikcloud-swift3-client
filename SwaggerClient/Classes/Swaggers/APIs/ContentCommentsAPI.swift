//
// ContentCommentsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ContentCommentsAPI: APIBase {
    /**
     Add a new comment
     
     - parameter commentResource: (body) The comment to be added (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addComment(commentResource: CommentResource? = nil, completion: @escaping ((_ data: CommentResource?,_ error: Error?) -> Void)) {
        addCommentWithRequestBuilder(commentResource: commentResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Add a new comment
     - POST /comments
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "summary" : "aeiou",
  "context" : "aeiou",
  "context_id" : 9,
  "created_date" : 3,
  "id" : 2,
  "updated_date" : 2,
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 2,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "content" : "aeiou"
}}]
     
     - parameter commentResource: (body) The comment to be added (optional)

     - returns: RequestBuilder<CommentResource> 
     */
    open class func addCommentWithRequestBuilder(commentResource: CommentResource? = nil) -> RequestBuilder<CommentResource> {
        let path = "/comments"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = commentResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CommentResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a comment
     
     - parameter id: (path) The comment id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteComment(id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCommentWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a comment
     - DELETE /comments/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The comment id 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCommentWithRequestBuilder(id: Int64) -> RequestBuilder<Void> {
        var path = "/comments/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Return a comment
     
     - parameter id: (path) The comment id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getComment(id: Int64, completion: @escaping ((_ data: CommentResource?,_ error: Error?) -> Void)) {
        getCommentWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Return a comment
     - GET /comments/{id}
     - examples: [{contentType=application/json, example={
  "summary" : "aeiou",
  "context" : "aeiou",
  "context_id" : 2,
  "created_date" : 7,
  "id" : 8,
  "updated_date" : 5,
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 2,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "content" : "aeiou"
}}]
     
     - parameter id: (path) The comment id 

     - returns: RequestBuilder<CommentResource> 
     */
    open class func getCommentWithRequestBuilder(id: Int64) -> RequestBuilder<CommentResource> {
        var path = "/comments/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CommentResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a page of comments
     
     - parameter context: (query) Get comments by context type 
     - parameter contextId: (query) Get comments by context id 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getComments(context: String, contextId: Int32, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceCommentResource?,_ error: Error?) -> Void)) {
        getCommentsWithRequestBuilder(context: context, contextId: contextId, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns a page of comments
     - GET /comments
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 5,
  "total_elements" : 1,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 0,
  "number_of_elements" : 5,
  "content" : [ {
    "summary" : "aeiou",
    "context" : "aeiou",
    "context_id" : 2,
    "created_date" : 6,
    "id" : 1,
    "updated_date" : 6,
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 6,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "content" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter context: (query) Get comments by context type 
     - parameter contextId: (query) Get comments by context id 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceCommentResource> 
     */
    open class func getCommentsWithRequestBuilder(context: String, contextId: Int32, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceCommentResource> {
        let path = "/comments"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "context": context, 
            "context_id": contextId.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceCommentResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Search the comment index
     
     - parameter query: (body) The search query (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchComments(query: Any? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: CommentSearch?,_ error: Error?) -> Void)) {
        searchCommentsWithRequestBuilder(query: query, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Search the comment index
     - POST /comments/search
     - The body is an ElasticSearch query json. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html'>documentation</a> for details on the format and search options
     - examples: [{contentType=application/json, example={
  "owner_id" : 6,
  "owner_username" : "aeiou",
  "context" : "aeiou",
  "context_id" : 8,
  "id" : 6,
  "content" : "aeiou"
}}]
     
     - parameter query: (body) The search query (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<CommentSearch> 
     */
    open class func searchCommentsWithRequestBuilder(query: Any? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<CommentSearch> {
        let path = "/comments/search"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = query?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<CommentSearch>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a comment
     
     - parameter id: (path) The comment id 
     - parameter content: (body) The comment content (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateComment(id: Int64, content: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateCommentWithRequestBuilder(id: id, content: content).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a comment
     - PUT /comments/{id}/content
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The comment id 
     - parameter content: (body) The comment content (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateCommentWithRequestBuilder(id: Int64, content: String? = nil) -> RequestBuilder<Void> {
        var path = "/comments/{id}/content"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = content?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}