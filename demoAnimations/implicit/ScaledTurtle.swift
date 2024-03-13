//
//  ScaledTurtle.swift
//  demoAnimations
//
//  Created by Andy Huang on 3/11/24.
//

import SwiftUI

struct ScaledTurtle: View {
    @State var toggled: Bool = false
    
    var body: some View {
        Image(systemName: "tortoise")
            .font(.system(size: 100))
            .scaleEffect(toggled ? 2 : 1)
            .animation(.default, value: toggled)
            .onTapGesture {
                toggled.toggle()
            }
    }
}

#Preview {
    ScaledTurtle()
}
