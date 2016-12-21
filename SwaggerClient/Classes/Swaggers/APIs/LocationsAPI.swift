//
// LocationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class LocationsAPI: APIBase {
    /**
     Get a list of a state's cities
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func citiesUsingGET(countryCodeIso3: String, stateCode: String, completion: @escaping ((_ data: [CityResource]?,_ error: Error?) -> Void)) {
        citiesUsingGETWithRequestBuilder(countryCodeIso3: countryCodeIso3, stateCode: stateCode).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of a state's cities
     - GET /location/countries/{country_code_iso3}/states/{stateCode}/cities
     - examples: [{contentType=application/json, example=[ {
  "country_code_iso3" : "aeiou",
  "name" : "aeiou",
  "id" : 123,
  "state_code" : "aeiou"
} ]}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 

     - returns: RequestBuilder<[CityResource]> 
     */
    open class func citiesUsingGETWithRequestBuilder(countryCodeIso3: String, stateCode: String) -> RequestBuilder<[CityResource]> {
        var path = "/location/countries/{country_code_iso3}/states/{stateCode}/cities"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{stateCode}", with: "\(stateCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[CityResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a list of countries
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func countriesUsingGET(completion: @escaping ((_ data: [CountryResource]?,_ error: Error?) -> Void)) {
        countriesUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of countries
     - GET /location/countries
     - examples: [{contentType=application/json, example=[ {
  "name" : "aeiou",
  "iso2" : "aeiou",
  "iso3" : "aeiou"
} ]}]

     - returns: RequestBuilder<[CountryResource]> 
     */
    open class func countriesUsingGETWithRequestBuilder() -> RequestBuilder<[CountryResource]> {
        let path = "/location/countries"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[CountryResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the currency information of your country
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCurrencyByGeoLocationUsingGET(completion: @escaping ((_ data: CurrencyResource?,_ error: Error?) -> Void)) {
        getCurrencyByGeoLocationUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get the currency information of your country
     - GET /location/geolocation/currency
     - Determined by geo ip location, currency to country mapping and a fallback setting
     - examples: [{contentType=application/json, example={
  "code" : "aeiou",
  "icon" : "aeiou",
  "name" : "aeiou",
  "active" : false,
  "created_date" : 123456789,
  "updated_date" : 123456789,
  "factor" : 1.3579000000000001069366817318950779736042022705078125,
  "type" : "aeiou"
}}]

     - returns: RequestBuilder<CurrencyResource> 
     */
    open class func getCurrencyByGeoLocationUsingGETWithRequestBuilder() -> RequestBuilder<CurrencyResource> {
        let path = "/location/geolocation/currency"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CurrencyResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get the iso3 code of your country
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGeoLocationCountryUsingGET(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getGeoLocationCountryUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get the iso3 code of your country
     - GET /location/geolocation/country
     - Determined by geo ip location
     - examples: [{contentType=application/json, example="aeiou"}]

     - returns: RequestBuilder<String> 
     */
    open class func getGeoLocationCountryUsingGETWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/location/geolocation/country"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a list of a country's states
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func statesUsingGET(countryCodeIso3: String, completion: @escaping ((_ data: [StateResource]?,_ error: Error?) -> Void)) {
        statesUsingGETWithRequestBuilder(countryCodeIso3: countryCodeIso3).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of a country's states
     - GET /location/countries/{country_code_iso3}/states
     - examples: [{contentType=application/json, example=[ {
  "country_code_iso3" : "aeiou",
  "code" : "aeiou",
  "name" : "aeiou",
  "id" : 123
} ]}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 

     - returns: RequestBuilder<[StateResource]> 
     */
    open class func statesUsingGETWithRequestBuilder(countryCodeIso3: String) -> RequestBuilder<[StateResource]> {
        var path = "/location/countries/{country_code_iso3}/states"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[StateResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
