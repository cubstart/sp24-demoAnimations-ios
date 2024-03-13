//
//  OskiBirthday.swift
//  demoAnimations
//
//  Created by Andy Huang on 3/11/24.
//

import SwiftUI

struct OskiBirthday: View {
    @State var showingFullPhoto: Bool = false
    @Namespace var imTransform
    
    var body: some View {
        if showingFullPhoto {
            VStack {
                Image("oski_cupcakes")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .matchedGeometryEffect(id: "oski", in: imTransform)
                    .frame(width: 300, height: 300)
                    .onTapGesture { withAnimation{showingFullPhoto.toggle()} }
                
                oskiTitleAndCaption
                Spacer()
            }
        } else {
            Image("oski_cupcakes")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .matchedGeometryEffect(id: "oski", in:
                                        imTransform)
                .frame(width: 150, height: 150)
                .onTapGesture { withAnimation{showingFullPhoto.toggle()} }
        }
    }
    
    private var oskiTitleAndCaption: some View {
        VStack {
            Text("Oski's Birthday")
                .font(.title)
                .bold()
            
            Text("Oski the Bear has been the official mascot of the University of California, Berkeley, since his inception in 1941, embodying the spirit and enthusiasm of the Cal community. His creation was a collaborative effort to replace live bear mascots, which proved to be too difficult to manage at athletic events and other gatherings. The name \"Oski\" originates from the Oski Yell, a cheer that dates back to the early 20th century and remains a vital part of Cal's traditions.")
                .padding()
        }
    }
}

#Preview {
    OskiBirthday()
}
