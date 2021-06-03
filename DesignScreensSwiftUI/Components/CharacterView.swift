//
//  CharacterView.swift
//  DesignScreensSwiftUI
//
//  Created by Sianna on 5/30/21.
//

import SwiftUI

struct CharacterView: View{
    var nameImage:String
    var name:String
    var type:String
    
    var body: some View{
        VStack{
            Image(nameImage)
             .resizable()
             .scaledToFill()
             .mask(
                 Circle()
             )
             .frame(width: 60, height: 60)
             
             Text(name)
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                
                 //.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
             
             Text(type)
                 .font(.system(size: 14))
                 .foregroundColor(.gray)
        }.frame(maxWidth: .infinity, alignment: .center)
     }
}
