//
//  ChangeLocation.swift
//  AnimationsForCourses
//
//  Created by WSR on 15.09.2021.
//

import SwiftUI

struct ChangeLocation: View {
    @State var x:CGFloat = 400
    @State var y:CGFloat = 400
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
           
            .frame(width: 100, height: 100, alignment: .center)
            .foregroundColor(.blue)
//            смещение по x y
            .offset(x: self.x, y: self.y)
            .animation(Animation.linear(duration: 2) )
            .onAppear{
                    x = 0
                    y = 0
            
            }
    }
}

struct ChangeLocation_Previews: PreviewProvider {
    static var previews: some View {
        ChangeLocation()
    }
}
