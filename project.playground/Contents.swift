import UIKit

var str = "Hello, playground"
print(str)
func sum(a:Int, b:Int){
    print(a+b)
}
sum(a:12,b:13)
func sumoptional(a:Int?=nil){
    if let aNotOptional=a {
        print(aNotOptional)
    }
   //a!=nil ? true : false
    }
sumoptional(a:345)

struct User{
    var name, address:String
    var age:Int
}
var arrayUsers = [User]()
arrayUsers.append(User(name:"Sergey", address:"Moscow", age:20))
arrayUsers.append(User(name:"Vasya", address:"Tver", age:15))
print(arrayUsers.count)
for user in arrayUsers{
    print(user.name)
}


class UserClass {
    public var arrayUsers = [User]()
    init() {
        setUsers()
    }
    private func setUsers(){
        self.arrayUsers.append(User(name:"Sergey", address:"Moscow", age:20))
        self.arrayUsers.append(User(name:"Vasya", address:"Tver", age:15))
    }
    func getAddress(){
        for user in self.arrayUsers {
            print(user.address)
        }
    }
}
let users = UserClass()
users.getAddress()
    
