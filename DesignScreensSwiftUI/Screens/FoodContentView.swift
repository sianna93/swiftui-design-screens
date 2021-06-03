//
//  FoodContentView.swift
//  DesignScreensSwiftUI
//
//  Created by Sianna on 5/31/21.
//

import SwiftUI

struct FoodContentView: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.purple)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Image(systemName: "heart")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                    }.frame(maxWidth: .infinity, alignment: Alignment.topTrailing)
                }.frame(maxHeight: .infinity, alignment: Alignment.topTrailing)
                .padding(.horizontal, 20)
                    
            }
            .frame(height: 200)
            
            Image("camarones")
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                
                .shadow(color: Color.white, radius: 7)
                .offset(y: -120)
                .padding(.bottom, -130)
            
            VStack{
                HStack{
                    Text("Musseles")
                        .font(.system(size: 30))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        Text("$")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            
                        Text("16,00")
                            .font(.system(size: 34))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .offset(x: -7)
                    }.foregroundColor(.yellow)
                }
                HStack{
                    TagIconView(text: "30m", icon: "clock.arrow.circlepath")
                    TagIconView(text: "4,5", icon: "star")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 15)
                
                
                VStack{
                    Text("About")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("In addition to the freshest seafood, there are com, cilantro and tomatoes: ther first become mayonnaise, the second - cream, the third - spicy tomato water")
                        .foregroundColor(.gray)
                        .padding(.vertical, 10)
                }.padding(.vertical, 15)
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Add to cart")
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color.purple)
                        .clipShape(Capsule())
                        
                })
                
            }
            .padding(20)
            .ignoresSafeArea()
            
        }
    }
}

struct FoodContentView_Previews: PreviewProvider {
    static var previews: some View {
        FoodContentView()
    }
}
