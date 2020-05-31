//
//  CustomTransition.swift
//  AnimatingViewsUsingTransition
//
//  Created by Ramill Ibragimov on 31.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct CustomTransition: View {
    @Binding var dismissFlag: Bool
    
    var body: some View {
        ZStack {
            Color.pink.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Custom Transition")
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

struct CustomTransition_Previews: PreviewProvider {
    static var previews: some View {
        CustomTransition(dismissFlag: .constant(true))
    }
}
