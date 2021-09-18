//
//  ContentView.swift
//  pogoda
//
//  Created by user on 17.09.2021.
//

import SwiftUI
import Alamofire
import SwiftyJSON


struct ContentView: View {
    @State var city = ""
    @State var temp = ""
    var body: some View {
        VStack(){
            Text(temp)
                .font(.largeTitle)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            TextField("London", text: $city)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 300)
            Button(action: {
                    AF.request("http://api.weatherapi.com/v1/current.json?key=ee170084c26b442da7882229211709&q=\(city)&aqi=no", method: .get).validate().responseJSON { response in
                        switch response.result {
                        case .success(let value):
                            let json = JSON(value)
                            print("JSON: \(json)")
                            temp = json["current"]["temp_c"].stringValue
                            
                            
                        case .failure(let error):
                            print(error)
                        }
                    }            }, label: {
                Text("Запросить")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
