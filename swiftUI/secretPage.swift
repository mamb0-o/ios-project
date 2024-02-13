//
//  ResoPage.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-12.
//Reservation Page

import SwiftUI

struct ImageOverlay: View {
    var page: Page
    
    var body: some View {
        ZStack {
            Text(page.text)
                .font(Font.custom("Audiowide-Regular", size: 15))
                .padding(6)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .center)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(10)
    }
}


struct secretPage: View {
    var page: Page
        
        var body: some View {
            VStack(spacing: 10) {
                if(page.text.isEmpty){
                    Image("\(page.imageUrl)")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                }
                else{
                    Image("\(page.imageUrl)")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .overlay(ImageOverlay(page: page),alignment: .center)
                }
            }
        }
}

struct ResoPage_Previews: PreviewProvider {
    static var previews: some View {
        secretPage(page: Page.sample)
    }
}
