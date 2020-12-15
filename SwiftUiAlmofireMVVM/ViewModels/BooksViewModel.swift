//
//  BooksViewModel.swift
//  SwiftUiAlmofireMVVM
//
//  Created by Knoxpo MacBook Pro on 15/12/20.
//

import Foundation
import SwiftUI
import Combine

class BooksViewModel : ObservableObject {
    
    @Published var booksData = BookModel()
    
    var selection: FilterType = .title {
        didSet {
            print("Selection changed to \(selection)")
            sortCollectedOn()
        }
    }
    
    init()
    {
        
        self.fetchCurrentBooks1()
    }
    
    
    func sortCollectedOn(){
        switch selection {
        case .title:
            booksData.books.sort {$0.title < $1.title}
        case .rank:
            booksData.books.sort{$0.rank < $1.rank}
        case .weeks:
            booksData.books.sort {$0.weeksOnList < $1.weeksOnList}
        }
    }
    
    
    
    func  fetchCurrentBooks1()
    {
        DataSyncHandler.defaultHandler.fetchAllRecentAlarmsFromServer(urlString: Constant.kCOMPLETE_URL){ (bookModel, success, errorMsg) in
            print(errorMsg)
            if bookModel != nil{
                
                self.booksData = bookModel!
                
            }
            
            
        }
        
        
    }
    
    
    
    
    
    
}
