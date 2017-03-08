//
// BRERuleEngineCategoriesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class BRERuleEngineCategoriesAPI: APIBase {
    /**
     Create a BRE category template
     
     - parameter template: (body) The category template to create (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBRECategoryTemplate(template: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        createBRECategoryTemplateWithRequestBuilder(template: template).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a BRE category template
     - POST /bre/categories/templates
     - Templates define a type of BRE category and the properties they have
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 7,
  "id" : "aeiou",
  "updated_date" : 7,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter template: (body) The category template to create (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createBRECategoryTemplateWithRequestBuilder(template: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/bre/categories/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = template?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a BRE category template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBRECategoryTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteBRECategoryTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a BRE category template
     - DELETE /bre/categories/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteBRECategoryTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/bre/categories/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List categories
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBRECategories(size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceBreCategoryResource?,_ error: Error?) -> Void)) {
        getBRECategoriesWithRequestBuilder(size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List categories
     - GET /bre/categories
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 9,
  "last" : true,
  "size" : 1,
  "total_elements" : 6,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 1,
  "content" : [ {
    "template" : "aeiou",
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    }
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceBreCategoryResource> 
     */
    open class func getBRECategoriesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceBreCategoryResource> {
        let path = "/bre/categories"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceBreCategoryResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single category
     
     - parameter name: (path) The category name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBRECategory(name: String, completion: @escaping ((_ data: BreCategoryResource?,_ error: Error?) -> Void)) {
        getBRECategoryWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single category
     - GET /bre/categories/{name}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  }
}}]
     
     - parameter name: (path) The category name 

     - returns: RequestBuilder<BreCategoryResource> 
     */
    open class func getBRECategoryWithRequestBuilder(name: String) -> RequestBuilder<BreCategoryResource> {
        var path = "/bre/categories/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreCategoryResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single BRE category template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBRECategoryTemplate(id: String, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        getBRECategoryTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single BRE category template
     - GET /bre/categories/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 8,
  "id" : "aeiou",
  "updated_date" : 8,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getBRECategoryTemplateWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/bre/categories/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search BRE category templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBRECategoryTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?,_ error: Error?) -> Void)) {
        getBRECategoryTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search BRE category templates
     - GET /bre/categories/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 9,
  "last" : true,
  "size" : 4,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 4,
  "content" : [ {
    "name" : "aeiou",
    "created_date" : 1,
    "id" : "aeiou",
    "updated_date" : 5,
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
    open class func getBRECategoryTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/bre/categories/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a category
     
     - parameter name: (path) The category name 
     - parameter category: (body) The updated BRE category information (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBRECategory(name: String, category: BreCategoryResource? = nil, completion: @escaping ((_ data: BreCategoryResource?,_ error: Error?) -> Void)) {
        updateBRECategoryWithRequestBuilder(name: name, category: category).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a category
     - PUT /bre/categories/{name}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  }
}}]
     
     - parameter name: (path) The category name 
     - parameter category: (body) The updated BRE category information (optional)

     - returns: RequestBuilder<BreCategoryResource> 
     */
    open class func updateBRECategoryWithRequestBuilder(name: String, category: BreCategoryResource? = nil) -> RequestBuilder<BreCategoryResource> {
        var path = "/bre/categories/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = category?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BreCategoryResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a BRE category template
     
     - parameter id: (path) The id of the template 
     - parameter template: (body) The updated category template definition (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBRECategoryTemplate(id: String, template: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        updateBRECategoryTemplateWithRequestBuilder(id: id, template: template).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a BRE category template
     - PUT /bre/categories/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 4,
  "id" : "aeiou",
  "updated_date" : 2,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter template: (body) The updated category template definition (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func updateBRECategoryTemplateWithRequestBuilder(id: String, template: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        var path = "/bre/categories/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = template?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
