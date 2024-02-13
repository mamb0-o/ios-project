//
//  mezzeController.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-25.
//

import Foundation
import UIKit
import Firebase
import SwiftUI

struct mezzeUi: View{
    @State private var pictures: [menuPicture]=[
        .init(image: "meze1"),
        .init(image: "meze2"),
        .init(image: "meze3"),
        .init(image: "meze4"),
        .init(image: "meze5"),
    ]
    
    
    @ObservedObject var model = menuView()
    
    var body: some View{
        VStack{
            List(model.list){
                item in Text(item.name)
                    .font(.custom("Audiowide-Regular", size: 16))
                    .foregroundColor(.teal)
            }
            ScrollView(.horizontal){
                HStack(spacing: 0) {
                    ForEach(pictures) {
                        picture in
                        pictureView(picture)
                    }
                }
            }
            .scrollIndicators(.hidden)
            .padding(.horizontal,15)
            .padding(.top,30)
        }
    }
    
    init() {
        model.getMezeData()
    }
    
    @ViewBuilder
    func pictureView(_ picture: menuPicture) -> some  View{
        GeometryReader{
            proxy in
            let size = proxy.size
        
            
            Image(picture.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: size.height)
                .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        .frame(width: 100, height: 200)
    }
}

struct mezzeUi_Previews: PreviewProvider{
    static var previews: some View{
        mezzeUi()
    }
}

