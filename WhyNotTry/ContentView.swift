//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Courtlyn on 9/3/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    @State private var selected = "Baseball"

    @State private var id = 1
    
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .pink)
                    .padding()
                    .transition(.slide)
                    .id(id)
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                
                Text("\(selected)!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            Button("Try again") {
                withAnimation {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
    
}
