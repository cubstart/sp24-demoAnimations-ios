//
//  ScaledAndRotatedTurtle.swift
//  demoAnimations
//
//  Created by Andy Huang on 3/11/24.
//

import SwiftUI

struct ScaledAndRotatedTurtle: View {
    @State var toggled: Bool = false
    
    var body: some View {
        Image(systemName: "tortoise")
            .font(.system(size: 100))
            .rotationEffect(toggled ? Angle(degrees: 360) : .zero)
            .scaleEffect(toggled ? 2 : 1)
            .animation(.default, value: toggled)
            .onTapGesture {
                toggled.toggle()
            }
    }
}

#Preview {
    ScaledAndRotatedTurtle()
}
