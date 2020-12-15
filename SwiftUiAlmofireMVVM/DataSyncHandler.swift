//
//  DataSyncHandler.swift
//  SwiftUiAlmofireMVVM
//
//  Created by Knoxpo MacBook Pro on 15/12/20.
//

//


import Foundation
import Alamofire

class DataSyncHandler: ObservableObject {
    static let defaultHandler = DataSyncHandler()
    
   // static let defaultHandler = DataSyncHandler()
    
    func fetchAllRecentAlarmsFromServer(urlString:String,completion:@escaping (_ responseObject: BookModel?, _ success:Bool, _ errorMsg:String)-> Void)  {
        if Reachaility.checkReachable.isConnectedToNetwork() {

            guard let url = URL(string: urlString) else {
                return
            }
            
            
            print(url)
            Alamofire.request(
                url,
                method: .get)
                .validate()
                .responseJSON { response in

                    
                    guard response.result.isSuccess else {
                        print("Error while fetching Books: \(String(describing: response.result.error))") // Failure Case
                        return
                    }
                    guard let value = response.result.value as? [String: Any],
                        let status = value["status"] as? String,
                        let bookResultsDict = value["results"] as? [String: Any]
                        else {
                            print(Constant.KMALFORMED_DATA_RECEIVED)
                            return
                    }
                    if status  == Constant.kSERVER_RESPONSE_SUCCESS { // "OK"
                        
                        let bookModel = BooksFactory.defaultFACTORY.makeBooksModel(form: bookResultsDict)
                        completion(bookModel, true, "")
                        
                    } else if status  == Constant.kSERVER_RESPONSE_ERROR { // "ERROR"
                        let errorsList = value["errors"] as? [String]
                        let errorMessage = errorsList?.first ?? Constant.KGENERIC_ERROR
                        print(errorMessage)
                        completion(nil,false,errorMessage)
                    }
            }
        }else {
            let jsonString = (Constant.kNETWORK_ERROR)
            completion(nil,false,jsonString)
        }
    }
}



