//
//  End.swift
//  QuestionAppProject
//
//  Created by Katie Won on 6/27/24.
//

import SwiftUI

struct End: View {
    var body: some View {
        ZStack {
            Color(red: 0.336, green: 0.205, blue:0.106)
                .ignoresSafeArea()
            VStack {
                Text ("Thank you for playing Unbelievable Animal Facts! We hope that you learned new facts about these animals!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.brown)
                    .padding()
                Image("capybara2")
                    .resizable()
                    .cornerRadius(15)
                    .shadow(radius:15)
                    .frame(width:300, height:200)
                    .padding()
            }
        }
    }
}
#Preview {
    End()
}
