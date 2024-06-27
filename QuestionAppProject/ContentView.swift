//
//  ContentView.swift
//  QuestionAppProject
//
//  Created by Katie Won on 6/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.336, green: 0.205, blue:0.106)
                    .ignoresSafeArea()
        
                VStack {
                    Text ("Unbelievable Animal Facts!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.brown)
                        .padding()
                    Image ("capybara")
                        .resizable()
                        .cornerRadius(15)
                        .shadow(radius:15)
                        .frame(width:200, height:200)
                        .padding()
                    Text("These questions are designed to be both educational and entertaining, making for a fun and engaing quiz!")
                        .foregroundColor(.white)
                    
                        .padding()
                        NavigationLink(destination: Question1()) {
                            Text("Click here")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(.brown))
                                .padding()
                }
                
                        
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
