//
//  Test.swift
//  AnimationsForCourses
//
//  Created by WSR on 16.09.2021.
//

import SwiftUI

struct Test: View {
    var body: some View {
        Text("Hello, World!")
            .font(.system(size: 20, weight: .medium, design: .default))
            .scaleEffect(3)
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
