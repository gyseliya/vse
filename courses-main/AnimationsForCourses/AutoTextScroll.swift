//
//  AutoTextScroll.swift
//  AnimationsForCourses
//
//  Created by WSR on 14.09.2021.
//

import SwiftUI

struct AutoTextScroll: View {
    @State var scrollText = false
    var body: some View {
        Text("Hello, World! This is my life!!!")
            .frame(width: 600)
            .offset(x: scrollText ? -350 : 300)
            .animation(Animation.linear(duration: 5)
            .repeatForever(autoreverses: false))
            .onAppear{
                scrollText.toggle()
            }
    }
}

struct AutoTextScroll_Previews: PreviewProvider {
    static var previews: some View {
        AutoTextScroll()
    }
}
