//
// TodoV2API.swift
//

import Foundation



open class TodoV2API {
    /**
     issues
     
     - parameter limit: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func todoV2IssuesGet(limit: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Issues]?,_ error: Error?) -> Void)) {
        todoV2IssuesGetWithRequestBuilder(limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     issues
     - GET /todo/v2/issues
     - parameter limit: (query)  
     - returns: RequestBuilder<[Issues]> 
     */
    open class func todoV2IssuesGetWithRequestBuilder(limit: String) -> RequestBuilder<[Issues]> {
        let path = "/todo/v2/issues"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[Issues]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     news
     
     - parameter limit: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func todoV2NewsGet(limit: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [News]?,_ error: Error?) -> Void)) {
        todoV2NewsGetWithRequestBuilder(limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     news
     - GET /todo/v2/news
     - parameter limit: (query)  
     - returns: RequestBuilder<[News]> 
     */
    open class func todoV2NewsGetWithRequestBuilder(limit: String) -> RequestBuilder<[News]> {
        let path = "/todo/v2/news"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[News]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     todolist
     
     - parameter limit: (query) 总条数限制
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func todoV2TodolistGet(limit: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [TodoItem]?,_ error: Error?) -> Void)) {
        todoV2TodolistGetWithRequestBuilder(limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }
    /**
     todolist
     - GET /todo/v2/todolist
     - parameter limit: (query) 总条数限制
     - returns: RequestBuilder<[TodoItem]> 
     */
    open class func todoV2TodolistGetWithRequestBuilder(limit: String) -> RequestBuilder<[TodoItem]> {
        let path = "/todo/v2/todolist"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[TodoItem]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     versions
     
     - parameter limit: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func todoV2VersionsGet(limit: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Versions]?,_ error: Error?) -> Void)) {
        todoV2VersionsGetWithRequestBuilder(limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     versions
     - GET /todo/v2/versions
     - parameter limit: (query)  
     - returns: RequestBuilder<[Versions]> 
     */
    open class func todoV2VersionsGetWithRequestBuilder(limit: String) -> RequestBuilder<[Versions]> {
        let path = "/todo/v2/versions"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[Versions]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
