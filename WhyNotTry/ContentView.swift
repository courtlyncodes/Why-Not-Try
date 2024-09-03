//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Courtlyn on 9/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())

            VStack {
                Circle()
                    .fill(.pink)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.archery")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
            }
            Text("Archery!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
    
}
