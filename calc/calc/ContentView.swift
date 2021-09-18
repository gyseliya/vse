//
//  ContentView.swift
//  calc
//
//  Created by user on 15.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var number = "0"
    @State var numberTwo = "0"
    @State var function = ""
    @State var alert=false
    
    
    var body: some View {
        
        ZStack(){
            Color("Background")
            
            VStack(spacing:1){
                Spacer()
                Text(function == "" ? number : numberTwo).foregroundColor(.white)
                    .font(.system(size: 90))
                    .fontWeight(.ultraLight) //po shir ecrana
                    .padding(.horizontal,10) //otstup c prava
                    .lineLimit(1)
                    
                    .frame(width: UIScreen.main.bounds.width, alignment:.trailing) //viravnivanie po pravomu               // Spacer() //dlya zapolneniya pustotoi mozno ispolzovat
                    
                HStack(spacing:1){
                    Button(action: {
                        
                            number = "0"
                        numberTwo="0"
                        function=""
                    }, label: {
                        Text("AC")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Temniy"))
                            
                    })
                    Button(action: { var resulttwo = 0.0
                        resulttwo = Double(number)! * -1
                        if resulttwo-Double(Int(resulttwo)) == 0.0{
                            number=String(Int(resulttwo))
                        } else {
                            number=String(resulttwo)
                            
                        }
                    }, label: {
                        Image(systemName: "plus.slash.minus")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: /*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/))                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Temniy"))
                    })
                    Button(action: {
                       /* if function == "" {  */
                            number = String(Double(number)! / 100)
                      /*  }
                        
                        else {
                            number = String((Double(number)! * Double(numberTwo)!)/100)
                                 function=""
                        }  */
                        
                        
                    }, label: {
                        Text("%")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Temniy"))
                    })
                    Button(action: { var result=0.0
                        
                        if function=="" {
                            function = "/"
                            
                        } else {
                            
                            switch function {
                            case "/":
                                
                                result=Double(number)! / Double(numberTwo)!
                            case "*":
                                result=Double(number)! * Double(numberTwo)!
                            case "+":
                                result=Double(number)! + Double(numberTwo)!
                            case "-":
                                result=Double(number)! - Double(numberTwo)!
                            default:
                                break
                            }
                            
                            function=""
                            numberTwo="0"
                            
                            if result-Double(Int(result)) == 0.0{
                                number=String(Int(result))
                            } else {
                                number=String(result)
                                
                            }                        }
                        
                        
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
                        if function == "" {
                            if number == "0" {
                                number = "7"
                            } else {
                                number.append("7")
                            }
                            
                        } else {
                            if numberTwo == "0" {
                                numberTwo = "7"
                            } else {
                                numberTwo.append("7")
                            }
                            
                        }
                    }, label: {
                        Text("7")
                            .foregroundColor(.white)
                            //.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                            if function == "" {
                                if number == "0" {
                                    number = "8"
                                } else {
                                    number.append("8")
                                }
                                
                            } else {
                                if numberTwo == "0" {
                                    numberTwo = "8"
                                } else {
                                    numberTwo.append("8")
                                }
                                
                            }                }, label: {
                    Text("8")
                        .foregroundColor(.white)
                        //.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color("Seriy"))
                })
                    Button(action: {
                            if function == "" {
                                if number == "0" {
                                    number = "9"
                                } else {
                                    number.append("9")
                                }
                                
                            } else {
                                if numberTwo == "0" {
                                    numberTwo = "9"
                                } else {
                                    numberTwo.append("9")
                                }
                                
                            }                    }, label: {
                        Text("9")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                        function = "*"
                        
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
                            if function == "" {
                                if number == "0" {
                                    number = "4"
                                } else {
                                    number.append("4")
                                }
                                
                            } else {
                                if numberTwo == "0" {
                                    numberTwo = "4"
                                } else {
                                    numberTwo.append("4")
                                }
                                
                            }                    }, label: {
                        Text("4")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                            if function == "" {
                                if number == "0" {
                                    number = "5"
                                } else {
                                    number.append("5")
                                }
                                
                            } else {
                                if numberTwo == "0" {
                                    numberTwo = "5"
                                } else {
                                    numberTwo.append("5")
                                }
                                
                            }                }, label: {
                    Text("5")
                        .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color("Seriy"))
                })
                    Button(action: {
                            if function == "" {
                                if number == "0" {
                                    number = "6"
                                } else {
                                    number.append("6")
                                }
                                
                            } else {
                                if numberTwo == "0" {
                                    numberTwo = "6"
                                } else {
                                    numberTwo.append("6")
                                }
                                
                            }                    }, label: {
                        Text("6")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                       function = "-"
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
                            if function == "" {
                                if number == "0" {
                                    number = "1"
                                } else {
                                    number.append("1")
                                }
                                
                            } else {
                                if numberTwo == "0" {
                                    numberTwo = "1"
                                } else {
                                    numberTwo.append("1")
                                }
                                
                            }                    }, label: {
                        Text("1")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                            if function == "" {
                                if number == "0" {
                                    number = "2"
                                } else {
                                    number.append("2")
                                }
                                
                            } else {
                                if numberTwo == "0" {
                                    numberTwo = "2"
                                } else {
                                    numberTwo.append("2")
                                }
                                
                            }                }, label: {
                    Text("2")
                        .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color("Seriy"))
                })
                    Button(action: {
                            if function == "" {
                                if number == "0" {
                                    number = "3"
                                } else {
                                    number.append("3")
                                }
                                
                            } else {
                                if numberTwo == "0" {
                                    numberTwo = "3"
                                } else {
                                    numberTwo.append("3")
                                }
                                
                            }                    }, label: {
                        Text("3")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                        function="+"
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
                            if function == "" {
                                if number == "0" {
                                    number = "0"
                                } else {
                                    number.append("0")
                                }
                                
                            } else {
                                if numberTwo == "0" {
                                    numberTwo = "0"
                                } else {
                                    numberTwo.append("0")
                                }
                                
                            }                    }, label: {
                        Text("0")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/2-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: {
                        if function == "" {
                            if number == "0" {
                                number = "0."
                            } else {
                                number.append(".")
                            }
                            
                        } else {
                            if numberTwo == "0" {
                                numberTwo = "0."
                            } else {
                                numberTwo.append(".")
                            }
                            
                        }
                        
                    }, label: {
                        Text(",")
                            .foregroundColor(.white)                  .frame(width: UIScreen.main.bounds.width/4-1, height: UIScreen.main.bounds.width/4-1,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("Seriy"))
                    })
                    Button(action: { var result=0.0                    /*   //switch function {
                       // case "/":
                   // number=String(Double(number)/Double(numberTwo))
                      //  result = number.tofloat()
 */
                        switch function {
                        case "/":
                            
                            result=Double(number)! / Double(numberTwo)!
                        case "*":
                            result=Double(number)! * Double(numberTwo)!
                        case "+":
                            result=Double(number)! + Double(numberTwo)!
                        case "-":
                            result=Double(number)! - Double(numberTwo)!
                        default:
                            break
                        }
                        function=""
                        numberTwo="0"
                        
                        if result-Double(Int(result)) == 0.0{
                            number=String(Int(result))
                        } else {
                            number=String(result)
                            
                        }
                        
                        
    
                        
                        
                        
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
            .alert(isPresented: $alert, content: {
                Alert(title: Text("Error"), message: Text("number count  limit 8"), dismissButton: .cancel())
            })
            .onChange(of: number, perform: { _ in
                if number.count>6 {
                    alert.toggle()
                    number.removeLast()
                    }
                
            })
            .onChange(of: numberTwo, perform: { _ in
                if numberTwo.count>6 {
                    alert.toggle()
                    numberTwo.removeLast()
                    }
                
            })        }.ignoresSafeArea() //zakrasit vse
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
          
           
        }
    }
}
