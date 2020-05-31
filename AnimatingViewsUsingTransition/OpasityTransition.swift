//
//  OpasityTransition.swift
//  AnimatingViewsUsingTransition
//
//  Created by Ramill Ibragimov on 31.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct OpasityTransition: View {
    @Binding var dismissFlag: Bool
    
    var body: some View {
        ZStack {
            Color.purple.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Opacity Transition")
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

struct OpasityTransition_Previews: PreviewProvider {
    static var previews: some View {
        OpasityTransition(dismissFlag: .constant(true))
    }
}
