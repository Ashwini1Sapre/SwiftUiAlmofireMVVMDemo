//
//  BookItemView.swift
//  SwiftUiAlmofireMVVM
//
//  Created by Knoxpo MacBook Pro on 15/12/20.
//

import Foundation
import SwiftUI
struct BookItemView: View {
    @Binding var bookItem : BookItem
    var body: some View {
        VStack {
            NavigationLink(destination:BookDetailsView(bookItem: $bookItem) , label:
                            {
                HStack(alignment: .center, spacing: 15.0){
                    URLImageView(withURL: bookItem.imageURL)
                    VStack (alignment: .leading, spacing: 15.0){
                        Text("\(bookItem.title)")
                            .font(.headline)
                        Text("\(bookItem.author)")
                            .font(.subheadline)
                    }
                    Spacer()
                }
            })
            
            
            
            
            
            
                Spacer()
            }
        }
}

struct BookItemView_Previews: PreviewProvider {
    static var previews: some View {
        BookItemView(bookItem: .constant(BookItem()))
    }
}
