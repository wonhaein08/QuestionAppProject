//
//  Question2.swift
//  QuestionAppProject
//
//  Created by Katie Won on 6/27/24.
//

import SwiftUI

struct Question2: View {
    @State private var posPresentAlert = false
    @State private var negPresentAlert = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.336, green: 0.205, blue:0.106)
                    .ignoresSafeArea()
                VStack (spacing:40) {
                    Text("Q2: Which animal's heart is in its head?")
                        .font(.headline)
                    
                        .fontWeight(.heavy)
                        .foregroundColor(.brown)
                        .padding()
                    Image("jellyfish")
                        .resizable()
                        .cornerRadius(15)
                        .shadow(radius:15)
                        .frame(width:200, height:200)
                        .padding()
                    
                    Button ("A. Shrimp"){
                        posPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    
                    Button("B. Snail") {
                        negPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    
                    Button("C. Lobster") {
                        negPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    
                    Button("D. Crab") {
                        negPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    NavigationLink(destination: Question3()){
                        Text("Next Question ➡️")
                    }
                }
                .padding()
                .alert("Correct", isPresented: $posPresentAlert, actions: {})
                .alert("Incorrect!", isPresented: $negPresentAlert, actions:{})
            }
        }
    }
}
#Preview {
    Question2()
}
