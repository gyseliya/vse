//
//  ViewController.swift
//  recipeIOS
//
//  Created by user on 19.09.2021.
//

import UIKit
import Alamofire
import SwiftyJSON

//alomofire - http  библиотека http://github.com/alamofire/alamofire.git
//SwiftyJSON - JSON http://github.com/swiftyjson/swiftyjson.git

class SignInViewController: UIViewController {
    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    let userDef = UserDefaults.standard
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("You token is: \(userDef.value(forKey: "token"))")
        
    }
     // будет игнорировать 1ю стр тк токен сохранен
    override func viewDidAppear(_ animated: Bool) {
        if userDef.value(forKey: "token") != nil {
            performSegue(withIdentifier: "auth", sender: nil)
        }
    }
    
    
    @IBAction func auth(_ sender: Any) {
   //     guard !inputPassword.text!.isEmpty &&  !inputPassword.text!.isEmpty   else {
  //          return showAlertDialog(message: "Поля пустые")}
        guard !inputLogin.text!.isEmpty  else {
            return showAlertDialog(message: "Введите логин")}
        guard !inputPassword.text!.isEmpty  else {
            return showAlertDialog(message: "Введите пароль")}
        
        let url = "http://recipe.madwsr.ru/signin?login=\(inputLogin.text!)&pass=\(inputPassword.text!)"
        AF.request(url, method: .post).validate().responseJSON { (response) in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let jsonToken = json["notice"]["token"].stringValue
                self.userDef.setValue(jsonToken, forKey: "token")
            case .failure(let error):
                self.showAlertDialog(message: error.localizedDescription)
                
            }
        }
        performSegue(withIdentifier: "auth", sender: nil)
        
        
        
    }
    
    //функция отображения алерта, принимает сообщение
    func showAlertDialog(message: String) {
      //  UIAlertController
        // отоброжение алерта с заголовком и текстом
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
        // добавляем кнопку ок
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        // отоброжаем алерт
        self.present(alert, animated: true, completion: nil)
        
    }
    


}

