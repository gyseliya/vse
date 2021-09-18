//
//  ContentView.swift
//  projectAnimate
//
//  Created by user on 16.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State var animation = false
    var body: some View {
        ZStack(){
            Color("Blue")
                .opacity(animation ? 1:0)
                .animation(Animation.linear(duration: 5), value: animation)
            
            Image("Birds")
                // self.animation.toggle()
                .scaleEffect(animation ? 3:1,anchor: .center)
                .animation(Animation.linear(duration: 5), value: animation)
            
        }.ignoresSafeArea()
        
        .onAppear{
            animation = true
        }
        
    }
    
}

    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
