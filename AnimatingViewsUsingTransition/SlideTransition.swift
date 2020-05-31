//
//  SlideTransition.swift
//  AnimatingViewsUsingTransition
//
//  Created by Ramill Ibragimov on 31.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct SlideTransition: View {
    @Binding var dismissFlag: Bool
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Slide Transition")
                    .foregroundColor(.white)
                Button(action: {
                    self.dismissFlag = false
                }) {
                    Image(systemName: "xmark.circle")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }.padding()
            }
        }
    }
}

struct SlideTransition_Previews: PreviewProvider {
    static var previews: some View {
        SlideTransition(dismissFlag: .constant(true))
    }
}
