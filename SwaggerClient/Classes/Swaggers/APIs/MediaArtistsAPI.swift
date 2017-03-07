//
// MediaArtistsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class MediaArtistsAPI: APIBase {
    /**
     Adds a new artist in the system
     
     - parameter artistResource: (body) The new artist (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addArtist(artistResource: ArtistResource? = nil, completion: @escaping ((_ data: ArtistResource?,_ error: Error?) -> Void)) {
        addArtistWithRequestBuilder(artistResource: artistResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Adds a new artist in the system
     - POST /media/artists
     - Adds a new artist in the system. Use specific media contributions endpoint to add contributions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "contribution_count" : 5,
  "template" : "aeiou",
  "short_description" : "aeiou",
  "born" : "aeiou",
  "died" : "aeiou",
  "long_description" : "aeiou",
  "priority" : 8,
  "contributions" : [ {
    "role" : "aeiou",
    "artist" : {
      "name" : "aeiou",
      "id" : 6
    },
    "media" : ""
  } ],
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 0,
  "id" : 2,
  "updated_date" : 4
}}]
     
     - parameter artistResource: (body) The new artist (optional)

     - returns: RequestBuilder<ArtistResource> 
     */
    open class func addArtistWithRequestBuilder(artistResource: ArtistResource? = nil) -> RequestBuilder<ArtistResource> {
        let path = "/media/artists"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = artistResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ArtistResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create an artist template
     
     - parameter artistTemplateResource: (body) The artist template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createArtistTemplate(artistTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        createArtistTemplateWithRequestBuilder(artistTemplateResource: artistTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create an artist template
     - POST /media/artists/templates
     - Artist Templates define a type of artist and the properties they have
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 5,
  "id" : "aeiou",
  "updated_date" : 8,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter artistTemplateResource: (body) The artist template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createArtistTemplateWithRequestBuilder(artistTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/media/artists/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = artistTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Removes an artist from the system IF no resources are attached to it
     
     - parameter id: (path) The artist id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteArtist(id: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteArtistWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Removes an artist from the system IF no resources are attached to it
     - DELETE /media/artists/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The artist id 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteArtistWithRequestBuilder(id: Int64) -> RequestBuilder<Void> {
        var path = "/media/artists/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete an artist template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteArtistTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteArtistTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an artist template
     - DELETE /media/artists/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteArtistTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/media/artists/templates/{id}"
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
     Loads a specific artist details
     
     - parameter id: (path) The artist id 
     - parameter showContributions: (query) The number of contributions to show fetch (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArtist(id: Int64, showContributions: Int32? = nil, completion: @escaping ((_ data: ArtistResource?,_ error: Error?) -> Void)) {
        getArtistWithRequestBuilder(id: id, showContributions: showContributions).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Loads a specific artist details
     - GET /media/artists/{id}
     - examples: [{contentType=application/json, example={
  "contribution_count" : 4,
  "template" : "aeiou",
  "short_description" : "aeiou",
  "born" : "aeiou",
  "died" : "aeiou",
  "long_description" : "aeiou",
  "priority" : 6,
  "contributions" : [ {
    "role" : "aeiou",
    "artist" : {
      "name" : "aeiou",
      "id" : 4
    },
    "media" : ""
  } ],
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 0,
  "id" : 9,
  "updated_date" : 3
}}]
     
     - parameter id: (path) The artist id 
     - parameter showContributions: (query) The number of contributions to show fetch (optional)

     - returns: RequestBuilder<ArtistResource> 
     */
    open class func getArtistWithRequestBuilder(id: Int64, showContributions: Int32? = nil) -> RequestBuilder<ArtistResource> {
        var path = "/media/artists/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "show_contributions": showContributions?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<ArtistResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single artist template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArtistTemplate(id: String, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        getArtistTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single artist template
     - GET /media/artists/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 6,
  "id" : "aeiou",
  "updated_date" : 2,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getArtistTemplateWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/media/artists/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search artist templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArtistTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?,_ error: Error?) -> Void)) {
        getArtistTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search artist templates
     - GET /media/artists/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 2,
  "last" : true,
  "size" : 6,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 9,
  "number_of_elements" : 1,
  "content" : [ {
    "name" : "aeiou",
    "created_date" : 5,
    "id" : "aeiou",
    "updated_date" : 1,
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
    open class func getArtistTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/media/artists/templates"
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
     Search for artists
     
     - parameter filterArtistsByName: (query) Filter for artists which name *STARTS* with the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getArtists(filterArtistsByName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceArtistResource?,_ error: Error?) -> Void)) {
        getArtistsWithRequestBuilder(filterArtistsByName: filterArtistsByName, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Search for artists
     - GET /media/artists
     - examples: [{contentType=application/json, example={
  "number" : 9,
  "last" : true,
  "size" : 1,
  "total_elements" : 4,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 5,
  "number_of_elements" : 1,
  "content" : [ {
    "contribution_count" : 5,
    "template" : "aeiou",
    "short_description" : "aeiou",
    "born" : "aeiou",
    "died" : "aeiou",
    "long_description" : "aeiou",
    "priority" : 6,
    "contributions" : [ {
      "role" : "aeiou",
      "artist" : {
        "name" : "aeiou",
        "id" : 2
      },
      "media" : ""
    } ],
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 7,
    "id" : 9,
    "updated_date" : 9
  } ],
  "first" : true
}}]
     
     - parameter filterArtistsByName: (query) Filter for artists which name *STARTS* with the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceArtistResource> 
     */
    open class func getArtistsWithRequestBuilder(filterArtistsByName: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceArtistResource> {
        let path = "/media/artists"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_artists_by_name": filterArtistsByName, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceArtistResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Modifies an artist details
     
     - parameter id: (path) The artist id 
     - parameter artistResource: (body) The new artist (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateArtist(id: Int64, artistResource: ArtistResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateArtistWithRequestBuilder(id: id, artistResource: artistResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Modifies an artist details
     - PUT /media/artists/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The artist id 
     - parameter artistResource: (body) The new artist (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateArtistWithRequestBuilder(id: Int64, artistResource: ArtistResource? = nil) -> RequestBuilder<Void> {
        var path = "/media/artists/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = artistResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update an artist template
     
     - parameter id: (path) The id of the template 
     - parameter artistTemplateResource: (body) The artist template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateArtistTemplate(id: String, artistTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?,_ error: Error?) -> Void)) {
        updateArtistTemplateWithRequestBuilder(id: id, artistTemplateResource: artistTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update an artist template
     - PUT /media/artists/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 1,
  "id" : "aeiou",
  "updated_date" : 5,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 
     - parameter artistTemplateResource: (body) The artist template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    open class func updateArtistTemplateWithRequestBuilder(id: String, artistTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        var path = "/media/artists/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = artistTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}