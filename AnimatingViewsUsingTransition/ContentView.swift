//
//  ContentView.swift
//  AnimatingViewsUsingTransition
//
//  Created by Ramill Ibragimov on 31.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showSlideTransition: Bool = false
    @State private var showMoveBottom: Bool = false
    @State private var showOpacityTransition: Bool = false
    @State private var showCustomTransition: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    self.showSlideTransition.toggle()
                }) {
                    Text("Slide transition")
                }.padding()
                
                Button(action: {
                    self.showMoveBottom.toggle()
                }) {
                    Text("Move bottom transition")
                }.padding()
                
                Button(action: {
                    self.showOpacityTransition.toggle()
                }) {
                    Text("Opacity transition")
                }.padding()
                
                Button(action: {
                    self.showCustomTransition.toggle()
                }) {
                    Text("Custom transition")
                }.padding()
            }.foregroundColor(.black)
            
            if showSlideTransition {
                SlideTransition(dismissFlag: self.$showSlideTransition)
                    .transition(.slide)
                    .animation(.easeIn)
            }
            
            if showMoveBottom {
                MoveBottom(dismissFlag: self.$showMoveBottom)
                    .transition(.move(edge: .bottom))
                    .animation(.easeIn)
            }
            
            if showOpacityTransition {
                OpasityTransition(dismissFlag: self.$showOpacityTransition)
                    .transition(.opacity)
                    .animation(.easeIn)
            }
            
            if showCustomTransition {
                CustomTransition(dismissFlag: self.$showCustomTransition)
                    .transition(.customTransition)
                    .animation(.easeIn)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
