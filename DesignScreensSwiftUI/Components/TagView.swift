//
//  TagView.swift
//  DesignScreensSwiftUI
//
//  Created by Sianna on 5/30/21.
//

import SwiftUI

struct TagView: View {
    var text:String
    var body: some View{
        Text(text)
            .font(.system(size: 12))
            .foregroundColor(Color.black.opacity(0.8))
            .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
            .overlay(
               Capsule()
                .stroke(Color.gray, lineWidth: 1)
            )
    }
}
