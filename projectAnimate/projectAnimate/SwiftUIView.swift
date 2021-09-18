//
//  SwiftUIView.swift
//  projectAnimate
//
//  Created by user on 17.09.2021.
//

import SwiftUI

struct SwiftUIView: View {
    @State var x:CGFloat = 200
    @State var y:CGFloat = 300
    @State var x1:CGFloat = 400
    @State var y1:CGFloat = 0
    @State var animation = false
    var body: some View {
        
        ZStack(){
            Color("gs")
            
            VStack(){
                Image("Hand")
                    .offset(x: -25, y: 35)
                    .offset(x: self.x, y: self.y)
                    .animation(Animation.linear(duration: 1) )
                    
                Image("Drink")
                    .offset(x: self.x1, y: self.y1)
                    .animation(Animation.linear(duration: 2).delay(0.5) )
                Spacer()
                
            }
            Image("Group")
                // .frame(alignment: .)
                .offset(x: 0, y: 80)
                .opacity(animation ? 1:0)
                .animation(Animation.linear(duration: 3).delay(0.5), value: animation)
          
        }.ignoresSafeArea()
        .onAppear{
                x = 0
            y = 0
            x1 = 0
            y1 = 0
            animation=true
            
        }    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
