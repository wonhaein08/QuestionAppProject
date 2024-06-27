//
//  Question3.swift
//  QuestionAppProject
//
//  Created by Katie Won on 6/27/24.
//

import SwiftUI

struct Question3: View {
    @State private var posPresentAlert = false
    @State private var negPresentAlert = false
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(red: 0.336, green: 0.205, blue:0.106)
                    .ignoresSafeArea()
                VStack (spacing:40){
                    Text("Q3: What is the fastest land animal?")
                        .font(.headline)
                    
                        .fontWeight(.heavy)
                        .foregroundColor(.brown)
                        .padding()
                    Image("cheetah")
                        .resizable()
                        .cornerRadius(15)
                        .shadow(radius:15)
                        .frame(width:300, height:200)
                        .padding()
                    
                    Button("A. Lion"){
                        negPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    
                    Button("B. Cheetah") {
                        posPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    
                    Button("C. Antelope") {
                        negPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    
                    Button("D. Greyhound") {
                        negPresentAlert = true
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.brown))
                    NavigationLink(destination: End()){
                        Text("Last Page ➡️")
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
    Question3()
}
