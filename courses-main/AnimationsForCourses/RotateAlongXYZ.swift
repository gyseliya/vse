//
//  RotateAlongXYZ.swift
//  AnimationsForCourses
//
//  Created by WSR on 14.09.2021.
//

import SwiftUI
struct RotateAlongXYZ: View {
    
    @State var xAxisRotation = false
    @State var zAxisRotation = false
    @State var yAxisRotation = false
    
    var body: some View {
        HStack{
            Image(systemName: "repeat.circle.fill")
                .font(.largeTitle)
//              эффект вращения
                .rotationEffect(.degrees(xAxisRotation ? 360 : 0))
//              эффект 3D вращения
                .rotation3DEffect(
                    .degrees(80),
//                    Повернуть элемент по y
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                        
                )
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear{
                    xAxisRotation.toggle()
                }
            Image(systemName: "repeat.circle.fill")
                .font(.largeTitle)
                .rotationEffect(.degrees(yAxisRotation ? 360 : 0))
//                    Повернуть элемент по x
                .rotation3DEffect(
                    .degrees(80),
                    axis: (x: 1.0, y: 0.0, z: 0.0)
                        
                )
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear{
                    yAxisRotation.toggle()
                }
            Image(systemName: "repeat.circle.fill")
                .font(.largeTitle)
                .rotationEffect(.degrees(zAxisRotation ? 360 : 0))
                .rotation3DEffect(
                    .degrees(180),
 //                    Повернуть элемент по z
                    axis: (x: 0.0, y: 0.0, z: 1.0)
                        
                )
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear{
                    zAxisRotation.toggle()
                }
        }
    }
}

struct RotateAlongXYZ_Previews: PreviewProvider {
    static var previews: some View {
        RotateAlongXYZ()
    }
}
