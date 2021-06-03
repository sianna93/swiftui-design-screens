//
//  MovieContentView.swift
//  DesignScreensSwiftUI
//
//  Created by Sianna on 5/30/21.
//

import SwiftUI

struct MovieContentView: View {
    var body: some View {
        VStack{
            ZStack{
                HeaderView()
                Button(action: {
                    print("Return")
                }, label: {
                    Image(systemName: "chevron.backward")
                        .font(.title2)
                        .foregroundColor(.black)
                })
                .frame(maxWidth: .infinity, maxHeight: 160,
                       alignment: Alignment.topLeading)
                .padding(30)
            }
            VStack{
                HStack{
                    VStack{
                        Text("Ford vs Ferrari")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack{
                            Text("2019")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                            
                            Text("PG-13")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                        
                            Text("2h 32min")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    .frame(alignment: .top)
                    
                    Spacer()
                    Button(action: {
                        print("")
                    }, label: {
                        Image(systemName: "plus")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(20)
                            .background(Color.pink.opacity(0.7))
                            .cornerRadius(20)
                            
                    })
                    .frame(alignment: .trailing)
                }
                HStack{
                    TagView(text: "Action")
                    TagView(text: "Biography")
                    TagView(text: "Drama")
                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                VStack{
                    Text("Plot Summary")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    Text("American car designer Carrol Shelby and driver Kn Miles batle coporate interference and the laws of physics to build a revolutionary race car for Ford in order")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                }
                Spacer()
                
                VStack{
                    Text("Cast & Crew")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        CharacterView(nameImage: "mangold", name: "James\nMangold", type: "Director")
                        
                        CharacterView(nameImage: "damon", name: "Matt\nDamon", type: "Carroli")
                        
                        CharacterView(nameImage: "bale", name: "Christian\nBale", type: "Ken Miles")
                        
                        CharacterView(nameImage: "balfe", name: "Caitriona\nBalfe", type: "Mollie")
                    }
                       
                }
                
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(EdgeInsets(top: 70, leading: 20, bottom: 20, trailing: 20))
        }
    }
}

struct MovieContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieContentView()
            .ignoresSafeArea()
    }
}
