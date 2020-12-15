//
//  Constant.swift
//  SwiftUiAlmofireMVVM
//
//  Created by Knoxpo MacBook Pro on 15/12/20.
//

import Foundation
struct Constant{
    
    static let kPING_URL = "https://developer.nytimes.com/"
    static let kBOOK_BASE_URL = "https://api.nytimes.com/svc/books/v3"
    static let kBOOK_LIST_DATE = "/lists/current"
    static let kBOOK_LIST_TYPE = "/combined-print-and-e-book-fiction.json?api-key="
    static let kAPI_KEY = "3GiIylwhoiL0USYYl7IIMDwjqe5FNtqR"
    
    static let kCOMPLETE_URL = "\(Constant.kBOOK_BASE_URL)"+"\(Constant.kBOOK_LIST_DATE)"+"\(Constant.kBOOK_LIST_TYPE)"+"\(Constant.kAPI_KEY)"
    
    static let kSERVER_RESPONSE_SUCCESS = "OK"
    static let kSERVER_RESPONSE_ERROR = "ERROR"
    static let kNETWORK_ERROR = "Internet connection error, please check your network connection settings and try again."
    static let  KGENERIC_ERROR = "An error has occured."
    static let  KMALFORMED_DATA_RECEIVED = "Malformed data received from fetchAllAlarms service"
    
    
    
    
    
}
