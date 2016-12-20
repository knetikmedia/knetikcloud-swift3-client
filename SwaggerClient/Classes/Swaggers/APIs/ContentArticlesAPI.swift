//
// ContentArticlesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ContentArticlesAPI: APIBase {
    /**
     Create an article template
     
     - parameter articleTemplateResource: (body) The article template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createArticleTemplateUsingPOST(articleTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        createArticleTemplateUsingPOSTWithRequestBuilder(articleTemplateResource: articleTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create an article template
     - POST /content/articles/templates
     - Article Templates define a type of article and the properties they have
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter articleTemplateResource: (body) The article template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createArticleTemplateUsingPOSTWithRequestBuilder(articleTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/content/articles/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = articleTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a new article
     
     - parameter articleResource: (body) The new article (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createArticleUsingPOST(articleResource: ArticleResource? = nil, completion: @escaping ((_ data: ArticleResource?,_ error: Error?) -> Void)) {
        createArticleUsingPOSTWithRequestBuilder(articleResource: articleResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new article
     - POST /content/articles
     - Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "body" : "aeiou",
  "category" : {
    "name" : "aeiou",
    "active" : false,
    "id" : "aeiou"
  },
  "title" : "aeiou",
  "tags" : [ "aeiou" ]
}}]
     
     - parameter articleResource: (body) The new article (optional)

     - returns: RequestBuilder<ArticleResource> 
     */
    open class func createArticleUsingPOSTWithRequestBuilder(articleResource: ArticleResource? = nil) -> RequestBuilder<ArticleResource> {
        let path = "/content/articles"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = articleResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ArticleResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an article template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteArticleTemplateUsingDELETE(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteArticleTemplateUsingDELETEWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an article template
     - DELETE /content/articles/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteArticleTemplateUsingDELETEWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/content/articles/templates/{id}"
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
     Delete an existing article
     
     - parameter id: (path) The article id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteArticleUsingDELETE(id: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteArticleUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an existing article
     - DELETE /content/articles/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The article id 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteArticleUsingDELETEWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var path = "/content/articles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single article template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArticleTemplateUsingGET(id: String, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        getArticleTemplateUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single article template
     - GET /content/articles/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getArticleTemplateUsingGETWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/content/articles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search article templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArticleTemplatesUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?,_ error: Error?) -> Void)) {
        getArticleTemplatesUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search article templates
     - GET /content/articles/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
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
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : "aeiou",
    "updated_date" : 123456789,
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
    open class func getArticleTemplatesUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/content/articles/templates"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single article
     
     - parameter id: (path) The article id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArticleUsingGET(id: String, completion: @escaping ((_ data: ArticleResource?,_ error: Error?) -> Void)) {
        getArticleUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single article
     - GET /content/articles/{id}
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "body" : "aeiou",
  "category" : {
    "name" : "aeiou",
    "active" : false,
    "id" : "aeiou"
  },
  "title" : "aeiou",
  "tags" : [ "aeiou" ]
}}]
     
     - parameter id: (path) The article id 

     - returns: RequestBuilder<ArticleResource> 
     */
    open class func getArticleUsingGETWithRequestBuilder(id: String) -> RequestBuilder<ArticleResource> {
        var path = "/content/articles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ArticleResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search articles
     
     - parameter filterCategory: (query) Filter for articles from a specific category by id (optional)
     - parameter filterTagset: (query) Filter for articles with specified tags (separated by comma) (optional)
     - parameter filterTitle: (query) Filter for articles whose title contains a string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArticlesUsingGET(filterCategory: String? = nil, filterTagset: String? = nil, filterTitle: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceArticleResource?,_ error: Error?) -> Void)) {
        getArticlesUsingGETWithRequestBuilder(filterCategory: filterCategory, filterTagset: filterTagset, filterTitle: filterTitle, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search articles
     - GET /content/articles
     - Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed.
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
    "template" : "aeiou",
    "active" : false,
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 123456789,
    "id" : "aeiou",
    "updated_date" : 123456789,
    "body" : "aeiou",
    "category" : {
      "name" : "aeiou",
      "active" : false,
      "id" : "aeiou"
    },
    "title" : "aeiou",
    "tags" : [ "aeiou" ]
  } ],
  "first" : true
}}]
     
     - parameter filterCategory: (query) Filter for articles from a specific category by id (optional)
     - parameter filterTagset: (query) Filter for articles with specified tags (separated by comma) (optional)
     - parameter filterTitle: (query) Filter for articles whose title contains a string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceArticleResource> 
     */
    open class func getArticlesUsingGETWithRequestBuilder(filterCategory: String? = nil, filterTagset: String? = nil, filterTitle: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceArticleResource> {
        let path = "/content/articles"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_category": filterCategory,
            "filter_tagset": filterTagset,
            "filter_title": filterTitle,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceArticleResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update an article template
     
     - parameter id: (path) The id of the template 
     - parameter articleTemplateResource: (body) The article template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateArticleTemplateUsingPUT(id: String, articleTemplateResource: TemplateResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateArticleTemplateUsingPUTWithRequestBuilder(id: id, articleTemplateResource: articleTemplateResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update an article template
     - PUT /content/articles/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter articleTemplateResource: (body) The article template resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateArticleTemplateUsingPUTWithRequestBuilder(id: String, articleTemplateResource: TemplateResource? = nil) -> RequestBuilder<Void> {
        var path = "/content/articles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = articleTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an existing article
     
     - parameter id: (path) The article id 
     - parameter articleResource: (body) The article object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateArticleUsingPUT(id: String, articleResource: ArticleResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateArticleUsingPUTWithRequestBuilder(id: id, articleResource: articleResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update an existing article
     - PUT /content/articles/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The article id 
     - parameter articleResource: (body) The article object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateArticleUsingPUTWithRequestBuilder(id: String, articleResource: ArticleResource? = nil) -> RequestBuilder<Void> {
        var path = "/content/articles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = articleResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}