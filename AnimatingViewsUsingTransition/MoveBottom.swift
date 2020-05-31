//
//  MoveBottom.swift
//  AnimatingViewsUsingTransition
//
//  Created by Ramill Ibragimov on 31.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct MoveBottom: View {
    @Binding var dismissFlag: Bool
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Move Bottom Transition")
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

struct MoveBottom_Previews: PreviewProvider {
    static var previews: some View {
        MoveBottom(dismissFlag: .constant(true))
    }
}
