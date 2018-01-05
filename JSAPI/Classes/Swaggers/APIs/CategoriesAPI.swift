//
// CategoriesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class CategoriesAPI: APIBase {
    /**
     Create a new category
     - parameter category: (body) The category to create (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCategory(category: CategoryResource? = nil, completion: @escaping ((_ data: CategoryResource?, _ error: ErrorResponse?) -> Void)) {
        createCategoryWithRequestBuilder(category: category).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a new category
     - POST /categories
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "template" : "template",
  "name" : "name",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "id" : "id"
}}]
     - parameter category: (body) The category to create (optional)
     - returns: RequestBuilder<CategoryResource> 
     */
    open class func createCategoryWithRequestBuilder(category: CategoryResource? = nil) -> RequestBuilder<CategoryResource> {
        let path = "/categories"
        let URLString = JSAPIAPI.basePath + path
        let parameters = category?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CategoryResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a category template
     - parameter template: (body) The template to create (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCategoryTemplate(template: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?, _ error: ErrorResponse?) -> Void)) {
        createCategoryTemplateWithRequestBuilder(template: template).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a category template
     - POST /categories/templates
     - Templates define a type of category and the properties they have
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "allow_additional" : false,
  "name" : "name",
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "properties" : [ {
    "friendly_name" : "friendly_name",
    "option_value_path" : "path.to.value",
    "option_label_path" : "path.to.label",
    "name" : "name",
    "description" : "description",
    "options_url" : "options_url",
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
    "friendly_name" : "friendly_name",
    "option_value_path" : "path.to.value",
    "option_label_path" : "path.to.label",
    "name" : "name",
    "description" : "description",
    "options_url" : "options_url",
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
     - parameter template: (body) The template to create (optional)
     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createCategoryTemplateWithRequestBuilder(template: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/categories/templates"
        let URLString = JSAPIAPI.basePath + path
        let parameters = template?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an existing category
     - parameter id: (path) The id of the category to be deleted 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCategory(id: String, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteCategoryWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete an existing category
     - DELETE /categories/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the category to be deleted 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteCategoryWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var path = "/categories/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a category template
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCategoryTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteCategoryTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete a category template
     - DELETE /categories/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteCategoryTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/categories/templates/{id}"
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
     List and search categories with optional filters
     - parameter filterSearch: (query) Filter for categories whose names begin with provided string (optional)
     - parameter filterActive: (query) Filter for categories that are specifically active or inactive (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCategories(filterSearch: String? = nil, filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceCategoryResource?, _ error: ErrorResponse?) -> Void)) {
        getCategoriesWithRequestBuilder(filterSearch: filterSearch, filterActive: filterActive, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List and search categories with optional filters
     - GET /categories
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 1,
  "total_elements" : 5,
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
  "total_pages" : 5,
  "number_of_elements" : 6,
  "content" : [ {
    "template" : "template",
    "name" : "name",
    "active" : false,
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "id" : "id"
  }, {
    "template" : "template",
    "name" : "name",
    "active" : false,
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "id" : "id"
  } ],
  "first" : true
}}]
     - parameter filterSearch: (query) Filter for categories whose names begin with provided string (optional)
     - parameter filterActive: (query) Filter for categories that are specifically active or inactive (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - returns: RequestBuilder<PageResourceCategoryResource> 
     */
    open class func getCategoriesWithRequestBuilder(filterSearch: String? = nil, filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCategoryResource> {
        let path = "/categories"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_search": filterSearch, 
            "filter_active": filterActive, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceCategoryResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single category
     - parameter id: (path) The id of the category to retrieve 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCategory(id: String, completion: @escaping ((_ data: CategoryResource?, _ error: ErrorResponse?) -> Void)) {
        getCategoryWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single category
     - GET /categories/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "template" : "template",
  "name" : "name",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "id" : "id"
}}]
     - parameter id: (path) The id of the category to retrieve 
     - returns: RequestBuilder<CategoryResource> 
     */
    open class func getCategoryWithRequestBuilder(id: String) -> RequestBuilder<CategoryResource> {
        var path = "/categories/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CategoryResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single category template
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCategoryTemplate(id: String, completion: @escaping ((_ data: TemplateResource?, _ error: ErrorResponse?) -> Void)) {
        getCategoryTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single category template
     - GET /categories/templates/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "allow_additional" : false,
  "name" : "name",
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "properties" : [ {
    "friendly_name" : "friendly_name",
    "option_value_path" : "path.to.value",
    "option_label_path" : "path.to.label",
    "name" : "name",
    "description" : "description",
    "options_url" : "options_url",
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
    "friendly_name" : "friendly_name",
    "option_value_path" : "path.to.value",
    "option_label_path" : "path.to.label",
    "name" : "name",
    "description" : "description",
    "options_url" : "options_url",
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
    open class func getCategoryTemplateWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/categories/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search category templates
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCategoryTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?, _ error: ErrorResponse?) -> Void)) {
        getCategoryTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List and search category templates
     - GET /categories/templates
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
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
    "allow_additional" : false,
    "name" : "name",
    "created_date" : 0,
    "id" : "id",
    "updated_date" : 6,
    "properties" : [ {
      "friendly_name" : "friendly_name",
      "option_value_path" : "path.to.value",
      "option_label_path" : "path.to.label",
      "name" : "name",
      "description" : "description",
      "options_url" : "options_url",
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
      "friendly_name" : "friendly_name",
      "option_value_path" : "path.to.value",
      "option_label_path" : "path.to.label",
      "name" : "name",
      "description" : "description",
      "options_url" : "options_url",
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
    "allow_additional" : false,
    "name" : "name",
    "created_date" : 0,
    "id" : "id",
    "updated_date" : 6,
    "properties" : [ {
      "friendly_name" : "friendly_name",
      "option_value_path" : "path.to.value",
      "option_label_path" : "path.to.label",
      "name" : "name",
      "description" : "description",
      "options_url" : "options_url",
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
      "friendly_name" : "friendly_name",
      "option_value_path" : "path.to.value",
      "option_label_path" : "path.to.label",
      "name" : "name",
      "description" : "description",
      "options_url" : "options_url",
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
    open class func getCategoryTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/categories/templates"
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
     List all trivia tags in the system
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTags(size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourcestring?, _ error: ErrorResponse?) -> Void)) {
        getTagsWithRequestBuilder(size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List all trivia tags in the system
     - GET /tags
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 1,
  "total_elements" : 5,
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
  "total_pages" : 5,
  "number_of_elements" : 6,
  "content" : [ "content", "content" ],
  "first" : true
}}]
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - returns: RequestBuilder<PageResourcestring> 
     */
    open class func getTagsWithRequestBuilder(size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourcestring> {
        let path = "/tags"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PageResourcestring>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an existing category
     - parameter id: (path) The id of the category 
     - parameter category: (body) The category to update (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCategory(id: String, category: CategoryResource? = nil, completion: @escaping ((_ data: CategoryResource?, _ error: ErrorResponse?) -> Void)) {
        updateCategoryWithRequestBuilder(id: id, category: category).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update an existing category
     - PUT /categories/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "template" : "template",
  "name" : "name",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "id" : "id"
}}]
     - parameter id: (path) The id of the category 
     - parameter category: (body) The category to update (optional)
     - returns: RequestBuilder<CategoryResource> 
     */
    open class func updateCategoryWithRequestBuilder(id: String, category: CategoryResource? = nil) -> RequestBuilder<CategoryResource> {
        var path = "/categories/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = category?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CategoryResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a category template
     - parameter id: (path) The id of the template 
     - parameter template: (body) The updated template information (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCategoryTemplate(id: String, template: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?, _ error: ErrorResponse?) -> Void)) {
        updateCategoryTemplateWithRequestBuilder(id: id, template: template).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a category template
     - PUT /categories/templates/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "allow_additional" : false,
  "name" : "name",
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "properties" : [ {
    "friendly_name" : "friendly_name",
    "option_value_path" : "path.to.value",
    "option_label_path" : "path.to.label",
    "name" : "name",
    "description" : "description",
    "options_url" : "options_url",
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
    "friendly_name" : "friendly_name",
    "option_value_path" : "path.to.value",
    "option_label_path" : "path.to.label",
    "name" : "name",
    "description" : "description",
    "options_url" : "options_url",
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
     - parameter template: (body) The updated template information (optional)
     - returns: RequestBuilder<TemplateResource> 
     */
    open class func updateCategoryTemplateWithRequestBuilder(id: String, template: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        var path = "/categories/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = template?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
