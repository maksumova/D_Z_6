
import Foundation

print("Hello, World!")

//№1. Через readLine вводится любое количество слов
//После чего эти слова сортируются по количеству символов
//Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное
//
//№2. Составить список из 20 (словарь) контактов (Имя - номер телефона)
//Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено
//
//ДОП. Составить мини-игру “Викторина” используя массивы для записи вопросов и ответов
//В игре должно быть 5 раундов по 3 вопроса
//Так же должны быть несгораемые суммы
//Так же в конце если человек проиграл - показать какой ответ был верным и отобразить выигрыш и сколько раундов было выиграно



var Nikas = readLine ()!
var array: [String] = []
var pix = ""
for i in Nikas {
    if i != "," && i != " " && i != "." {
        pix += String (i)
    } else {
        array.append(pix)
        pix = ""

    }
    }
var arraySorted = array.sorted()
print(arraySorted)







var contactList = [[String]]()
var sortedContactList = [[String]]()
func contactSorting(nameNum:String){
    let firstLetter = nameNum.first!
    var a = false
    for (index,item) in contactList.enumerated(){
    for (index2,item2) in item.enumerated(){
    if index2 == 0 && item2 == String(firstLetter) && a == false{
    contactList[index].append(nameNum)
    a = true
    }else{
    continue
            }}}
    if a == false{
        var contacts = [String]()
        contacts.append(String(firstLetter))
        contacts.append(nameNum)
        contactList.append(contacts)
    }
}
contactSorting(nameNum: "Nuka - 0999878685")
contactSorting(nameNum: "Nika - 0888977563")
contactSorting(nameNum: "Lima - 0556636261")
contactSorting(nameNum: "Tima - 0999767551")
contactSorting(nameNum: "papa - 0505879800")
contactSorting(nameNum: "lola - 0504758694 ")
contactSorting(nameNum: "sofa - 0778646362")
contactSorting(nameNum: "Kolina - 0709725252")
contactSorting(nameNum: "Saltanat - 0705886994")
contactSorting(nameNum: "Amina - 09997673524")
contactSorting(nameNum: "Linata - 07773132323")
contactSorting(nameNum: "Renat - 0776525151")
contactSorting(nameNum: "Piter -0707989898")
contactSorting(nameNum: "Miter - 0776545352")
contactSorting(nameNum: "Chiter - 0997656443")
let alfavit = ["A","B","C","D","E","F","J","H","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",]
var b = 0

for (index2,item2) in sortedContactList.enumerated(){
        print("\(item2[0])-\(sortedContactList[index2].count - 1) контактов")
}
print(sortedContactList)
print(contactList)
