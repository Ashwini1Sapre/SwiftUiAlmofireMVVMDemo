
//

import SwiftUI

struct BookDetailsView: View {
    @Binding var bookItem: BookItem
    @State var isLoading = false
    @State var isWebViewPresented = false
    var body: some View {
        VStack(spacing: 15.0) {
            
         URLImageView(withURL: bookItem.imageURL, width: 300.0, height: 500.0, cornerRadius: 5.0)
           Text("\(bookItem.description)")
            .font(.body)
          .multilineTextAlignment(.leading)
            
           
        }
        .padding()
        .navigationBarTitle(Text("\(bookItem.title)"), displayMode: .inline)
            
        .onAppear(){
            self.isLoading = false
            self.isWebViewPresented = false
        }
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView(bookItem: .constant(BookItem()))
    }
}



/*
 
 Image("book1")
 .resizable()
 .frame(maxWidth: 300, maxHeight: 500)
 .aspectRatio(contentMode: .fit)
 */

