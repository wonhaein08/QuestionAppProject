//
//  Question1.swift
//  QuestionAppProject
//
//  Created by Katie Won on 6/27/24.
//

import SwiftUI

struct Question1: View {
    @State private var posPresentAlert = false
    @State private var negPresentAlert = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.336, green: 0.205, blue:0.106)
                    .ignoresSafeArea()
                
                
                VStack (spacing:20) {
                    VStack{
                    Text("Q1: Which animal is known to change colors to blend into its surroundings?")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(.brown)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                    Image("camouflage")
                        .resizable()
                        .cornerRadius(15)
                        .shadow(radius:15)
                        .frame(width:200, height:200)
                        .padding()
                    
                    Button("A. Chameleon") {
                        negPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    
                    Button("B. Octopus") {
                        negPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    
                    Button("C. Cuttlefish") {
                        negPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    
                    Button("D. All of the above") {
                        posPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    NavigationLink(destination: Question2()) {
                        Text("Next Question ➡️")
                    }
                }
                .padding()
                .alert("Correct!", isPresented: $posPresentAlert, actions: {})
                .alert("Incorrect!", isPresented: $negPresentAlert, actions: {})
            }
        }
    }
}
#Preview {
    Question1()
}
