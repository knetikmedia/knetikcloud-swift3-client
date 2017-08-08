//
// ContentArticlesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ContentArticlesAPI: APIBase {
    /**
     Create a new article
     - parameter articleResource: (body) The new article (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createArticle(articleResource: ArticleResource? = nil, completion: @escaping ((_ data: ArticleResource?, _ error: ErrorResponse?) -> Void)) {
        createArticleWithRequestBuilder(articleResource: articleResource).execute { (response, error) -> Void in
            completion(response?.body, error)
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
  "template" : "template",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "body" : "body",
  "category" : {
    "name" : "name",
    "active" : false,
    "id" : "id"
  },
  "title" : "title",
  "tags" : [ "tags", "tags" ]
}}]
     - parameter articleResource: (body) The new article (optional)
     - returns: RequestBuilder<ArticleResource> 
     */
    open class func createArticleWithRequestBuilder(articleResource: ArticleResource? = nil) -> RequestBuilder<ArticleResource> {
        let path = "/content/articles"
        let URLString = JSAPIAPI.basePath + path
        let parameters = articleResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ArticleResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create an article template
     - parameter articleTemplateResource: (body) The article template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createArticleTemplate(articleTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?, _ error: ErrorResponse?) -> Void)) {
        createArticleTemplateWithRequestBuilder(articleTemplateResource: articleTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error)
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
  "name" : "name",
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "properties" : [ {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  }, {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  } ]
}}]
     - parameter articleTemplateResource: (body) The article template resource object (optional)
     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createArticleTemplateWithRequestBuilder(articleTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/content/articles/templates"
        let URLString = JSAPIAPI.basePath + path
        let parameters = articleTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an existing article
     - parameter id: (path) The article id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteArticle(id: String, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteArticleWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error)
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
    open class func deleteArticleWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var path = "/content/articles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete an article template
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteArticleTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteArticleTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error)
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
    open class func deleteArticleTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/content/articles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single article
     - parameter id: (path) The article id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArticle(id: String, completion: @escaping ((_ data: ArticleResource?, _ error: ErrorResponse?) -> Void)) {
        getArticleWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single article
     - GET /content/articles/{id}

     - examples: [{contentType=application/json, example={
  "template" : "template",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "body" : "body",
  "category" : {
    "name" : "name",
    "active" : false,
    "id" : "id"
  },
  "title" : "title",
  "tags" : [ "tags", "tags" ]
}}]
     - parameter id: (path) The article id 
     - returns: RequestBuilder<ArticleResource> 
     */
    open class func getArticleWithRequestBuilder(id: String) -> RequestBuilder<ArticleResource> {
        var path = "/content/articles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ArticleResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single article template
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArticleTemplate(id: String, completion: @escaping ((_ data: TemplateResource?, _ error: ErrorResponse?) -> Void)) {
        getArticleTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single article template
     - GET /content/articles/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "properties" : [ {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  }, {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  } ]
}}]
     - parameter id: (path) The id of the template 
     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getArticleTemplateWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/content/articles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search article templates
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArticleTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?, _ error: ErrorResponse?) -> Void)) {
        getArticleTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List and search article templates
     - GET /content/articles/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 5,
  "content" : [ {
    "name" : "name",
    "created_date" : 0,
    "id" : "id",
    "updated_date" : 6,
    "properties" : [ {
      "name" : "name",
      "type" : "type",
      "field_list" : {
        "property_definition_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ],
        "property_type" : "property_type",
        "property_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ]
      },
      "required" : false
    }, {
      "name" : "name",
      "type" : "type",
      "field_list" : {
        "property_definition_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ],
        "property_type" : "property_type",
        "property_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ]
      },
      "required" : false
    } ]
  }, {
    "name" : "name",
    "created_date" : 0,
    "id" : "id",
    "updated_date" : 6,
    "properties" : [ {
      "name" : "name",
      "type" : "type",
      "field_list" : {
        "property_definition_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ],
        "property_type" : "property_type",
        "property_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ]
      },
      "required" : false
    }, {
      "name" : "name",
      "type" : "type",
      "field_list" : {
        "property_definition_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ],
        "property_type" : "property_type",
        "property_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ]
      },
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
    open class func getArticleTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/content/articles/templates"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceTemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search articles
     - parameter filterCategory: (query) Filter for articles from a specific category by id (optional)
     - parameter filterTagset: (query) Filter for articles with at least one of a specified set of tags (separated by comma) (optional)
     - parameter filterTagIntersection: (query) Filter for articles with all of a specified set of tags (separated by comma) (optional)
     - parameter filterTagExclusion: (query) Filter for articles with none of a specified set of tags (separated by comma) (optional)
     - parameter filterTitle: (query) Filter for articles whose title contains a string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArticles(filterCategory: String? = nil, filterTagset: String? = nil, filterTagIntersection: String? = nil, filterTagExclusion: String? = nil, filterTitle: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceArticleResource?, _ error: ErrorResponse?) -> Void)) {
        getArticlesWithRequestBuilder(filterCategory: filterCategory, filterTagset: filterTagset, filterTagIntersection: filterTagIntersection, filterTagExclusion: filterTagExclusion, filterTitle: filterTitle, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List and search articles
     - GET /content/articles
     - Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed.

     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 5,
  "content" : [ {
    "template" : "template",
    "active" : false,
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "created_date" : 0,
    "id" : "id",
    "updated_date" : 6,
    "body" : "body",
    "category" : {
      "name" : "name",
      "active" : false,
      "id" : "id"
    },
    "title" : "title",
    "tags" : [ "tags", "tags" ]
  }, {
    "template" : "template",
    "active" : false,
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "created_date" : 0,
    "id" : "id",
    "updated_date" : 6,
    "body" : "body",
    "category" : {
      "name" : "name",
      "active" : false,
      "id" : "id"
    },
    "title" : "title",
    "tags" : [ "tags", "tags" ]
  } ],
  "first" : true
}}]
     - parameter filterCategory: (query) Filter for articles from a specific category by id (optional)
     - parameter filterTagset: (query) Filter for articles with at least one of a specified set of tags (separated by comma) (optional)
     - parameter filterTagIntersection: (query) Filter for articles with all of a specified set of tags (separated by comma) (optional)
     - parameter filterTagExclusion: (query) Filter for articles with none of a specified set of tags (separated by comma) (optional)
     - parameter filterTitle: (query) Filter for articles whose title contains a string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - returns: RequestBuilder<PageResourceArticleResource> 
     */
    open class func getArticlesWithRequestBuilder(filterCategory: String? = nil, filterTagset: String? = nil, filterTagIntersection: String? = nil, filterTagExclusion: String? = nil, filterTitle: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceArticleResource> {
        let path = "/content/articles"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_category": filterCategory, 
            "filter_tagset": filterTagset, 
            "filter_tag_intersection": filterTagIntersection, 
            "filter_tag_exclusion": filterTagExclusion, 
            "filter_title": filterTitle, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceArticleResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an existing article
     - parameter id: (path) The article id 
     - parameter articleResource: (body) The article object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateArticle(id: String, articleResource: ArticleResource? = nil, completion: @escaping ((_ data: ArticleResource?, _ error: ErrorResponse?) -> Void)) {
        updateArticleWithRequestBuilder(id: id, articleResource: articleResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update an existing article
     - PUT /content/articles/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "template",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "body" : "body",
  "category" : {
    "name" : "name",
    "active" : false,
    "id" : "id"
  },
  "title" : "title",
  "tags" : [ "tags", "tags" ]
}}]
     - parameter id: (path) The article id 
     - parameter articleResource: (body) The article object (optional)
     - returns: RequestBuilder<ArticleResource> 
     */
    open class func updateArticleWithRequestBuilder(id: String, articleResource: ArticleResource? = nil) -> RequestBuilder<ArticleResource> {
        var path = "/content/articles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = articleResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ArticleResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update an article template
     - parameter id: (path) The id of the template 
     - parameter articleTemplateResource: (body) The article template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateArticleTemplate(id: String, articleTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?, _ error: ErrorResponse?) -> Void)) {
        updateArticleTemplateWithRequestBuilder(id: id, articleTemplateResource: articleTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update an article template
     - PUT /content/articles/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "properties" : [ {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  }, {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  } ]
}}]
     - parameter id: (path) The id of the template 
     - parameter articleTemplateResource: (body) The article template resource object (optional)
     - returns: RequestBuilder<TemplateResource> 
     */
    open class func updateArticleTemplateWithRequestBuilder(id: String, articleTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        var path = "/content/articles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = articleTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
