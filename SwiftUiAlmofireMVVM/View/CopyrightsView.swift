//
//  CopyrightsView.swift
//  SwiftUiAlmofireMVVM
//
//  Created by Knoxpo MacBook Pro on 15/12/20.
//

import Foundation
import SwiftUI

struct CopyrightsView: View {
    var totalResults : String
    var publishedDate: String
    var copyRightsBy: String = "Copyright (c) 2020 The New York Times Company.  All Rights Reserved."
    
    var body: some View {
         VStack(alignment: .center, spacing: 10.0) {
           HStack(alignment: .firstTextBaseline, spacing: 10.0){
               Text("Total Books:")
                    .font(.subheadline)
                    .foregroundColor(.white)
                Text(totalResults)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
               Spacer()
               Text ("Published On:")
                    .font(.subheadline)
                    .foregroundColor(.white)
                Text(publishedDate)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
           }
           Text(copyRightsBy)
                .font(.footnote)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .padding(.all, 7.0 )
        .background(Color(#colorLiteral(red: 0.2472930849, green: 0.3507098258, blue: 0.1600615978, alpha: 1)).opacity(0.5))
    }
}

struct CopyrightsView_Previews: PreviewProvider {
    static var previews: some View {
        CopyrightsView(totalResults: "-1", publishedDate: "Date here", copyRightsBy: "Publisher Name")
    }
}
