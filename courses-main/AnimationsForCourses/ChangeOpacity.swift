//
//  ChangeOpacity.swift
//  AnimationsForCourses
//
//  Created by WSR on 15.09.2021.
//

import SwiftUI

struct ChangeOpacity: View {
    @State var opacity = 1.0
    var body: some View {
        Button(action: {
            
            if opacity == 0.1 {
                opacity = 1
            } else {
                opacity = 0.1
            }
        }, label: {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.green)
                
        })
//        непрозрачность
        .opacity(self.opacity)
        .animation(.linear, value: self.opacity)
    }
}

struct ChangeOpacity_Previews: PreviewProvider {
    static var previews: some View {
        ChangeOpacity()
    }
}
