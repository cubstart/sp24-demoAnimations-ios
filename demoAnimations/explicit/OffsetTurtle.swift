//
//  OffsetTurtle.swift
//  demoAnimations
//
//  Created by Andy Huang on 3/11/24.
//

import SwiftUI

struct OffsetTurtle: View {
    @State var toggled: Bool = false
    
    var body: some View {
        Image(systemName: "tortoise")
            .font(.system(size: 100))
            .offset(x: toggled ? 100 : -100)
            .onTapGesture {
                withAnimation {
                    toggled.toggle()
                }
            }
    }
}

#Preview {
    OffsetTurtle()
}
