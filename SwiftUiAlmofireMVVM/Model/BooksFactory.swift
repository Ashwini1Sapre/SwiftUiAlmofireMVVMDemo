//
//  BooksFactory.swift
//  SwiftUiAlmofireMVVM
//
//  Created by Knoxpo MacBook Pro on 15/12/20.
//

import Foundation

public class BooksFactory
{
    static let defaultFACTORY = BooksFactory()
    
    func makeBooksModel(form resultObject: [String: Any]) -> BookModel?
    {
        var bookListData : BookModel?
        if let bookModel = BookModel(dictionary: resultObject)
        {
            
            bookListData = bookModel
            
        }
        else{
            
            
            bookListData = nil
        }
        
        return bookListData
        
        
    }
    
    
}
   
