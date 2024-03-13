//
//  BasicTurtle.swift
//  demoAnimations
//
//  Created by Andy Huang on 3/11/24.
//

import SwiftUI

struct BasicTurtle: View {
    @State var toggled: Bool = false
    
    var body: some View {
        Image(systemName: "tortoise")
            .font(.system(size: 100))
            .scaleEffect(toggled ? 2 : 1)
            .onTapGesture {
                toggled.toggle()
            }
    }
}

#Preview {
    BasicTurtle()
}
