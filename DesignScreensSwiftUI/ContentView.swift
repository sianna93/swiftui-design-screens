//
//  ContentView.swift
//  DesignScreensSwiftUI
//
//  Created by Sianna on 5/30/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
            Text("Tarea 3")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("Sianna Puente")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.purple)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



