//
//  URLImageView.swift
//  SwiftUiAlmofireMVVM
//
//  Created by Knoxpo MacBook Pro on 15/12/20.
//

import SwiftUI

struct URLImageView: View {
    @ObservedObject var imageLoader:ImagesViewModel
    
  
    @State var image: UIImage = UIImage()
    
    
   
    
    let placeHolderImage = UIImage(systemName: "photo")
  
    var imageMaxHeight : CGFloat  = 110.0
  
    var imageMaxWidth : CGFloat = 95.0
  //  var imageMaxWidth : CGFloat  = 95.0
    var imageCornerRadius : CGFloat = 17.0
    
   // var imageCornerRadius : CGFloat = 17.0
    
    init(withURL url: String, placeholder: Image = Image(systemName: "photo"), width: CGFloat = 95.0, height: CGFloat = 110.0, cornerRadius : CGFloat = 17.0) {
        imageLoader = ImagesViewModel(urlString: url)
        imageMaxWidth = width
        imageMaxHeight = height
        imageCornerRadius = cornerRadius
    }
    
    
    
   
    
    
    func imageFromData(imageData: Data) -> UIImage {
        UIImage(data: imageData) ?? UIImage()
    }
    
    
    func imageFromData1(imageData: Data) -> UIImage {
        UIImage(data: imageData) ?? UIImage()
    }
    
    
    
    var body: some View {
        
        
        VStack{
            Image(uiImage: imageLoader.dataIsValid ? imageFromData(imageData: imageLoader.data!):UIImage())
                .resizable()
                .frame(minWidth: 60, idealWidth: 60, maxWidth: 60, minHeight: 60, idealHeight: 60, maxHeight: 60, alignment: .center)
                .scaledToFit()
                .cornerRadius(imageCornerRadius)
            
                .shadow(color: Color.black.opacity(5.0), radius: 5, x: 5, y: 5)
            
            
        }
        
        
        
        
    }
}

struct URLImageView_Previews: PreviewProvider {
    static var previews: some View {
       // URLImageView(withURL: "")
        
        
        URLImageView(withURL: "")
    }
}
 

