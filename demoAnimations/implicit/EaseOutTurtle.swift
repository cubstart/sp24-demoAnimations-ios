//
//  EaseOutTurtle.swift
//  demoAnimations
//
//  Created by Andy Huang on 3/11/24.
//

import SwiftUI

struct EaseOutTurtle: View {
    @State var toggled: Bool = false
    
    var body: some View {
        Image(systemName: "tortoise")
            .font(.system(size: 100))
            .offset(y: toggled ? 200 : -250)
            .animation(.easeOut, value: toggled)
            .onTapGesture {
                toggled.toggle()
            }
    }
}

#Preview {
    EaseOutTurtle()
}
