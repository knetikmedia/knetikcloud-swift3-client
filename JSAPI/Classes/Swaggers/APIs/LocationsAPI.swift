//
// LocationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class LocationsAPI: APIBase {
    /**
     Get a list of countries
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCountries(completion: @escaping ((_ data: [CountryResource]?, _ error: ErrorResponse?) -> Void)) {
        getCountriesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of countries
     - GET /location/countries
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=[ {
  "name" : "name",
  "iso2" : "iso2",
  "iso3" : "iso3"
}, {
  "name" : "name",
  "iso2" : "iso2",
  "iso3" : "iso3"
} ]}]
     - returns: RequestBuilder<[CountryResource]> 
     */
    open class func getCountriesWithRequestBuilder() -> RequestBuilder<[CountryResource]> {
        let path = "/location/countries"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[CountryResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the iso3 code of your country
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCountryByGeoLocation(completion: @escaping ((_ data: String?, _ error: ErrorResponse?) -> Void)) {
        getCountryByGeoLocationWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the iso3 code of your country
     - GET /location/geolocation/country
     - Determined by geo ip location
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=""}]
     - returns: RequestBuilder<String> 
     */
    open class func getCountryByGeoLocationWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/location/geolocation/country"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of a country's states
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCountryStates(countryCodeIso3: String, completion: @escaping ((_ data: [StateResource]?, _ error: ErrorResponse?) -> Void)) {
        getCountryStatesWithRequestBuilder(countryCodeIso3: countryCodeIso3).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of a country's states
     - GET /location/countries/{country_code_iso3}/states
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=[ {
  "country_code_iso3" : "country_code_iso3",
  "code" : "code",
  "name" : "name",
  "id" : 0
}, {
  "country_code_iso3" : "country_code_iso3",
  "code" : "code",
  "name" : "name",
  "id" : 0
} ]}]
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - returns: RequestBuilder<[StateResource]> 
     */
    open class func getCountryStatesWithRequestBuilder(countryCodeIso3: String) -> RequestBuilder<[StateResource]> {
        var path = "/location/countries/{country_code_iso3}/states"
        path = path.replacingOccurrences(of: "{country_code_iso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[StateResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the currency information of your country
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCurrencyByGeoLocation(completion: @escaping ((_ data: CurrencyResource?, _ error: ErrorResponse?) -> Void)) {
        getCurrencyByGeoLocationWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the currency information of your country
     - GET /location/geolocation/currency
     - Determined by geo ip location, currency to country mapping and a fallback setting
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "code" : "code",
  "icon" : "icon",
  "name" : "name",
  "active" : false,
  "created_date" : 0,
  "updated_date" : 1,
  "factor" : 6.02745618307040320615897144307382404804229736328125,
  "type" : "real"
}}]
     - returns: RequestBuilder<CurrencyResource> 
     */
    open class func getCurrencyByGeoLocationWithRequestBuilder() -> RequestBuilder<CurrencyResource> {
        let path = "/location/geolocation/currency"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CurrencyResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
