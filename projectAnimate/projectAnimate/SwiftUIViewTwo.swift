//
//  SwiftUIViewTwo.swift
//  projectAnimate
//
//  Created by user on 17.09.2021.
//

import SwiftUI

struct SwiftUIViewTwo: View {
    @State var x:CGFloat = -100
    @State var y:CGFloat = -100
    @State var x1:CGFloat = 0
    @State var y1:CGFloat = 400
    @State var x2:CGFloat = 400
    @State var y2:CGFloat = 0
    @State var anim = false
    var body: some View {
        ZStack(){
            VStack(){
                //Spacer()
                Image("logo")
                    .offset(x: -150, y: 0)
                    .offset(x: self.x, y: self.y)
                  //  .rotationEffect(360)
                    .rotationEffect(.degrees(anim ? 360 : 0))
                    
                   /* .rotation3DEffect(
                        .degrees(80),
                        axis: (x: 1.0, y: 0.0, z: 0.0)
                            
                    )  */
                    .animation(Animation.linear(duration: 1) )
                Image("Drink")
                    .offset(x: self.x2, y: self.y2)
                    .animation(Animation.linear(duration: 1).delay(0.5))               //
                Spacer()
            }
            
            Image("GroupTwo")
                .offset(x: 0, y: UIScreen.main.bounds.height/4)
                .offset(x: self.x1, y: self.y1)
                .animation(Animation.linear(duration: 1).delay(1) )
        }
        .onAppear{
                x = 0
            y = 0
            x1 = 0
            y1 = 0
            x2=0
            y2=0
            anim = true
            
        }
    }
}

struct SwiftUIViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewTwo()
    }
}
