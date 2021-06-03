//
//  TagIconView.swift
//  DesignScreensSwiftUI
//
//  Created by Sianna on 5/31/21.
//

import SwiftUI

struct TagIconView: View{
    var text:String
    var icon:String
    
    var body: some View{
        HStack{
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.white)
            Text(text)
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(Color.purple)
        .clipShape(Capsule())
    }
}
