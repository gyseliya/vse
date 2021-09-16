//
//  ContentView.swift
//  calc
//
//  Created by user on 15.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(){
            Color("Background")
            
            VStack(spacing:1){
                Spacer()
                Text("0").foregroundColor(.white)
                    .font(.system(size: 90))
                    .fontWeight(.ultraLight) //po shir ecrana
                    .padding(.horizontal,10) //otstup c prava
                    
                    .frame(width: UIScreen.main.bounds.width, alignment:.trailing) //viravnivanie po pravomu               // Spacer() //dlya zapolneniya pustotoi mozno ispolzovat
                    
                HStack(spacing:1){
                    Button(action: {
                        
                    }, label: {
                        Text("AC")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Temniy"))
                            
                    })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus.slash.minus")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: /*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/))                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Temniy"))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("%")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Temniy"))
                    })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "divide")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: /*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/))
                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Yellow"))
                    })
                    
                }
                
                HStack(spacing:1){
                    Button(action: {
                        
                    }, label: {
                        Text("7")
                            .foregroundColor(.white)
                            //.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                    
                }, label: {
                    Text("8")
                        .foregroundColor(.white)
                        //.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color("Seriy"))
                })
                    Button(action: {
                        
                    }, label: {
                        Text("9")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "multiply")
                            .foregroundColor(.white)
                           // .font(.system(size: 20))
                            .font(.system(size: 20, weight: .bold))
                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Yellow"))
                    })
                    
                }
                
                HStack(spacing:1){
                    Button(action: {
                        
                    }, label: {
                        Text("4")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                    
                }, label: {
                    Text("5")
                        .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color("Seriy"))
                })
                    Button(action: {
                        
                    }, label: {
                        Text("6")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("-")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Yellow"))
                    })
                    
                }
                
                HStack(spacing:1){
                    Button(action: {
                        
                    }, label: {
                        Text("1")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                    
                }, label: {
                    Text("2")
                        .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color("Seriy"))
                })
                    Button(action: {
                        
                    }, label: {
                        Text("3")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("+")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Yellow"))
                    })
                    
                }
               
                HStack(spacing:1){
                    Button(action: {
                        
                    }, label: {
                        Text("0")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/2-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text(",")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("=")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Yellow"))
                    })
                    
                }
            }.frame(width: UIScreen.main.bounds.width, alignment:.trailing) //viravnivanie po pravomu
            
        }.ignoresSafeArea() //zakrasit vse
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
          
           
        }
    }
}
