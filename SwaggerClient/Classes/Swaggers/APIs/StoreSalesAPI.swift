//
// StoreSalesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreSalesAPI: APIBase {
    /**
     Create a sale
     
     - parameter catalogSale: (body) The catalog sale object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCatalogSale(catalogSale: CatalogSale? = nil, completion: @escaping ((_ data: CatalogSale?,_ error: Error?) -> Void)) {
        createCatalogSaleWithRequestBuilder(catalogSale: catalogSale).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a sale
     - POST /store/sales
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "short_description" : "aeiou",
  "item" : 9,
  "sale_end_date" : 6,
  "vendor" : 5,
  "name" : "aeiou",
  "discount_value" : 9.679690106283385,
  "sale_start_date" : 5,
  "id" : 7,
  "long_description" : "aeiou",
  "tag" : "aeiou",
  "discount_type" : "value",
  "currency_code" : "aeiou"
}}]
     
     - parameter catalogSale: (body) The catalog sale object (optional)

     - returns: RequestBuilder<CatalogSale> 
     */
    open class func createCatalogSaleWithRequestBuilder(catalogSale: CatalogSale? = nil) -> RequestBuilder<CatalogSale> {
        let path = "/store/sales"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = catalogSale?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CatalogSale>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a sale
     
     - parameter id: (path) The id of the sale 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCatalogSale(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCatalogSaleWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a sale
     - DELETE /store/sales/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the sale 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCatalogSaleWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/store/sales/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single sale
     
     - parameter id: (path) The id of the sale 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCatalogSale(id: Int32, completion: @escaping ((_ data: CatalogSale?,_ error: Error?) -> Void)) {
        getCatalogSaleWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single sale
     - GET /store/sales/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "short_description" : "aeiou",
  "item" : 7,
  "sale_end_date" : 7,
  "vendor" : 7,
  "name" : "aeiou",
  "discount_value" : 4.662497220832174,
  "sale_start_date" : 1,
  "id" : 9,
  "long_description" : "aeiou",
  "tag" : "aeiou",
  "discount_type" : "value",
  "currency_code" : "aeiou"
}}]
     
     - parameter id: (path) The id of the sale 

     - returns: RequestBuilder<CatalogSale> 
     */
    open class func getCatalogSaleWithRequestBuilder(id: Int32) -> RequestBuilder<CatalogSale> {
        var path = "/store/sales/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CatalogSale>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search sales
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCatalogSales(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceCatalogSale?,_ error: Error?) -> Void)) {
        getCatalogSalesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search sales
     - GET /store/sales
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 5,
  "last" : true,
  "size" : 6,
  "total_elements" : 4,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 9,
  "content" : [ {
    "short_description" : "aeiou",
    "item" : 1,
    "sale_end_date" : 4,
    "vendor" : 0,
    "name" : "aeiou",
    "discount_value" : 3.2238061940256535,
    "sale_start_date" : 9,
    "id" : 5,
    "long_description" : "aeiou",
    "tag" : "aeiou",
    "discount_type" : "value",
    "currency_code" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceCatalogSale> 
     */
    open class func getCatalogSalesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCatalogSale> {
        let path = "/store/sales"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceCatalogSale>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a sale
     
     - parameter id: (path) The id of the sale 
     - parameter catalogSale: (body) The catalog sale object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCatalogSale(id: Int32, catalogSale: CatalogSale? = nil, completion: @escaping ((_ data: CatalogSale?,_ error: Error?) -> Void)) {
        updateCatalogSaleWithRequestBuilder(id: id, catalogSale: catalogSale).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a sale
     - PUT /store/sales/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "short_description" : "aeiou",
  "item" : 1,
  "sale_end_date" : 9,
  "vendor" : 7,
  "name" : "aeiou",
  "discount_value" : 2.8075433359679214,
  "sale_start_date" : 6,
  "id" : 4,
  "long_description" : "aeiou",
  "tag" : "aeiou",
  "discount_type" : "value",
  "currency_code" : "aeiou"
}}]
     
     - parameter id: (path) The id of the sale 
     - parameter catalogSale: (body) The catalog sale object (optional)

     - returns: RequestBuilder<CatalogSale> 
     */
    open class func updateCatalogSaleWithRequestBuilder(id: Int32, catalogSale: CatalogSale? = nil) -> RequestBuilder<CatalogSale> {
        var path = "/store/sales/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = catalogSale?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CatalogSale>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}