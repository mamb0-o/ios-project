//
//  redWineUI.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-27.
//

import Foundation
import UIKit
import Firebase
import SwiftUI

struct redWineUI: View{
    
    
    @ObservedObject var model = menuView()
    
    var body: some View{
        VStack{
            List(model.list){
                item in Text(item.name)
                    .font(.custom("Audiowide-Regular", size: 16))
                    .foregroundColor(.teal)
            }
        }
    }
    
    init() {
        model.getredWineData()
    }
    
}

struct redWineUI_Previews: PreviewProvider{
    static var previews: some View{
        redWineUI()
    }
}

