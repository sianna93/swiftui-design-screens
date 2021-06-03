//
//  Header.swift
//  DesignScreensSwiftUI
//
//  Created by Sianna on 5/30/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Image("ford-ferrari")
            //.resizable()
            .frame(maxWidth: .infinity, maxHeight: 400)
            .scaledToFit()
            .mask(
                Image("round-rectangle")
                    .resizable()
            )
            .overlay(
                RoundedRectangle(cornerRadius: 48)
                    .foregroundColor(.blue)
                    .opacity(0.1)
                    .overlay(
                        
                        HStack {
                            Spacer()
                            StarRate(isStar: true, colorStar: Color.yellow, isRate: true)
                            Spacer()
                            StarRate()
                            Spacer()
                            MetaScore(value: "86")
                            Spacer()
                        }
                        .frame(minWidth: 360)
                        .padding(EdgeInsets(
                        top: 12, leading: 15, bottom: 12, trailing: 45))
                        .background(Color.white)
                        
                        .mask(
                            Capsule()
                        )
                        .offset(x: 42, y: 130)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        //
                    
                    )
                    
           )
        
            

    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}


struct StarRate: View {
    var isStar:Bool = false
    var colorStar:Color = Color.gray
    var isRate:Bool = false
    
    var body: some View{
        VStack{
            Image(systemName: isStar ? "star.fill" : "star")
                .font(.title)
                .foregroundColor(colorStar)
                
            if isRate {
                HStack{
                    Text("8.2")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Text("/10")
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                        .offset(x: -6)
                }
                .padding(1)
                Text("150.212")
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
            } else {
                Text("Rate This")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                    .padding(1)
                Text("")
                    .font(.system(size: 13))
                    
                    
            }
            
            
        }
    }
}

struct MetaScore: View {
    var value:String
   
    
    var body: some View{
        VStack{
            Text(value)
                .font(.system(size: 16))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 2))
            Text("Metascore")
                .padding(1)
            Text("62 critic reviews")
                .font(.system(size: 13))
                .foregroundColor(.gray)
        }
        
    }
}
