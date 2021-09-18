//
//  Hart.swift
//  AnimationsForCourses
//
//  Created by WSR on 14.09.2021.
//

import SwiftUI

struct Heart: View {
    @State var animation = false
    var body: some View {
        Image(systemName: "suit.heart.fill")
            .scaleEffect(animation ? 10 :8)
            .animation(Animation.spring(response: 0.2, dampingFraction: 0.3)
            .repeatForever(autoreverses: false))
            .onAppear {
            animation.toggle()
        }
    }
}

struct Heart_Previews: PreviewProvider {
    static var previews: some View {
        Heart()
    }
}
