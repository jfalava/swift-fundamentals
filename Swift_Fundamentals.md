# Swift Fundamentals
Jorge se quiere ir de sistemas  

# Contenidos
### 1. Arrays
### 2. Sets
### 3. Dictionary
### 4. Functions
### 5. If .. Else
### 6. For Loops
### 7. Enum
### 8. Enum & Raw Value
### 9. Switch
### 10. Basic Operators
### 11. Optionals  
# Fundamentos
## 1. Arrays
### Un array es una estructura de datos que puede almacenar colecciones de elementos del mismo tipo.  
- Defino el array con nombre ```ages``` que tiene enteros:  
    ```
    var ages: [Int] = [13, 24, 27, 45, 54]
    ```
- Cuento cuantos elementos hay en el array:  
    ```
    ages.count
    ```  
- Compruebo cual es el primer valor del array:   
    ```
    ages.first
    ```  
- Compruebo cual es el ultimo valor del array:   
    ```
    ages.last
    ```  
- Compruebo cual es el tercer valor (0 es el primero) del array:  
    ```
    ages[2]
    ```  
- Añado un nuevo valor (en este caso ```0```) al array:   
    ```
    ages.append(90)
    ```   
- Añado un nuevo valor (en este caso ```65```) en la posición ```0``` en el array:  
    ```
    ages.insert(65, at: 0)
    ```  
- Organizo el array de menor a mayor:  
    ```
    ages.sort()
    ```  
- Organizo el array de mayor a menor:  
    ```
    ages.reverse
    ```   
- Cambio el orden del array:  
    ```
    ages.shuffle()
    ```   
- Reflejo el valor actual del array:  
    ```
    print(ages)
    ```  

## 2. Sets
### Sets son como los arrays: una estructura de datos que almacena colecciones de datos, pero no puede tener elementos repetidos y no tiene orden.  

- Declaro el set asi:  
    ```
    var agesSet: Set<Int> = []
    ```
- Defino el valor del set como una variable:  
    ```
    var ages = [22, 22, 44, 66, 66, 77]
    ```  
- Importo un array a un set así:  
    ```
    var agesSet = Set(ages)
    ```  
- Inserto un item en el set así:  
    ```
    agesSet.insert(444)
    ```  
- Compruebo si un valor existe en el set:  
    ```
    agesSet.contains(444)
    ```
 - Reflejo el valor actual del set:  
    ```
    print(agesSet)
    ```  

## 3. Dictionary
### Una base de datos, kinda
- Defino que tipo de constante es y que contiene la constante:  
    ```
    let devices: [String: String]
    ```  
    > Declaro que la constante ```devices``` tiene como tipo de ```key``` (nombre de la fila) un ```string``` (una palabra) y cuyo valor es de tipo ```string```.  
- Añado valores al diccionario:  
    ```
    let devices: [String: String] = [
        "telefono": "iPhone 13 Pro",
        "portatil": "2020 MacBook Pro",
        "tablet": "iPad Air 5",
        "sobremesa": "Ryzen 5800x w/ nVIDIA RTX 3070 & 32GB RAM",
    ]
    ```
- Podemos indicar un valor vacío para el diccionario:  
    ```
    let devices: [String: String] = [:]
    ```  
- Consulto el valor de una de las tablas del diccionario:  
    ```
    devices["telefono"]
    ```


## 4. Functions

- Como las funciones hacen algo, tienen que empezar con un verbo.  
- Siempre tienen un parentesis al final porque ahi van los parametros, si los tuviera.
- El ```scope``` es todo lo que haya entre los corchetes de la función.  
- Esta función printeará lo que hay dentro del operando ```print```: 
    ```
    func printInstructorsName() {
        print("jfalava")
    }
    ```

- Y llamo las funciones por su nombre y ```()```:  
    ```
    printInstructorsName()
    ```
    >Pero este ejemplo está hardcodeado. La verdadera chicha está en hacer algo multiusos que pueda llamarse de varias maneras.

- En este caso llamo a un ```string```:  
    ```
    func printInstructorsName(name: String) {
        print(name)
    }
    ```
- Y llamo a la funcion indicándole que quiero printear el valor ```jfalava```:
    ```
    printInstructorsName(name: "jalava")
    ```

    >A mas generica la función, mejor, porque así puedo ser más flexible a la hora de llamarla para otros objetivos.

### Segundo ejemplo
- Quiero crear una función llamada ```add``` que va a realizar una operación matematica:
    ```
    func add(firstNumber: Int, to secondNumber: Int) -> Int {
        let sum = firstNumber + secondNumber
        return sum
    }
    ```
  - El operando ``->`` significa que al ejecutarse, devuelve tipo de dato, en este caso un ```int```.  
  - Esta función coge un numero entero, coge un segundo numero entero y devuelve otro numero entero, siempre definidos por el tipo de datos: ```Int```.
  - ```firstNumber``` y ```secondNumber``` son las etiquetas de parámetros, las usaré para indicar que valores tomaran para la ejecucion de la función.  
  - El operando ```to``` es una etiqueta de argumento, que ayuda al codigo a ser más legible y que sera usada en el ```call site``` (la llamada de la función), cuando ejecute mi función. No requerida, si apreciada.  
- Este es el ```call site```:
    ```
    add(firstNumber: 12, to: 38)
    ```
   > Llamo a la función y le doy los datos usando la etiqueta de parámetro.  
- ¿Por que aparece ```firstNumber``` como etiqueta de argumento pero no ```secondNumber```?  
  - Porque ```secondNumber``` no es una etiqueta de argumento, sino un nombre de parámetro.  
## 5. If .. Else
### "If" y "Else" se usan para crear lógica en una operación.
- Defino ```statement```s con el operando ```=```:  
    ```
    var isDarkModeOn = false
    ```
  > Cuando nombremos ```bool```s, intentaremos que sea lo más descriptivo posible para que sea más legible.

- El operando ```=``` usado dos veces seguidas se usa si para comprobar la validez de un ```statment```:  
    ```
    if isDarkModeOn == false {
        print("nay")
    }
    ```

- Los ```if``` asumen que lo que haya dentro del ```scope``` es siempre ```true```:  
    ```
    if isDarkModeOn {
        print("yep")
    } else {
        print("lmao")
    }
    ```
### Ejemplo
- Primero defino una serie de variables:
    ```
    var myHighScore = 55
    var yourHighScore = 447
    var highScore = 1
    ```
- Creo una regla lógica con ```ìf``` y ```else``` que hará una u otra cosa dependiendo del valor:
    ```
    if myHighScore > yourHighScore {
        print("me")
    } else {
        print("you")
    }
    ```
- Puedo anidar ```if```s que cogerán el valor y los compararán con varios supuestos:
    ```
    if highScore > 500 {
        print("nice")
    } else if highScore > 250 {
        print("meh")
    } else if highScore > 110 {
        print("kekw")
    } else {
        print("XDD")
    }
    ```
## 6. For loops
### Un loop hecho con el operando "for" me permitirá trabajar con unos datos determinados un número de veces determinado.

- Defino un array:
    ```
    let allStars = ["kekw", "lul", "xdd", "Concern", "xffing"]
    ```
    > Swift no necesita en este caso que le indique que es un array de ```string```s; al ver que todo son palabras.  

    > No necesitas indicar que clase de cosas printeas, pero lo haces más legible si pones nombres que indican.

- El siguiente loop leerá todo el array desde el principio, item por item:
    ```
    for emote in allStars {
        print(emote)
    }
    ```
    > Aquí le pido que printee el contenido del array. Como no le doy parada, lo hará hasta que termine de leerlo todo.

- Puedo pedirle que prinéee algo en especifico:
    ```
    for emote in allStars where emote == "xdd" {
        print(emote)
    }
    ```
    > ```emote``` puede ser cualquier palabra, al ser un nombre de parámetro.  

- Si quiero leer un array un numero determinado de veces, usare un rango (siendo n el valor posicional del array):
    ```
    0...n
    ```  
    Que leerá desde el primer valor hasta el valor n  
    ```
    0..>n
    ```
    Que leerá desde el valor 0 hasta el valor posterior a n
    ```
    0..<n
    ```
    Que leerá desde el valor 0 hasta el valor anterior a n  

- El siguiente codigo printeará todos los valores del array ```i``` hasta llegar a la posición 24:
    ```
    for i in 0..<25 {
        print(i)
    }
    ```
    > Usar ```i``` es estándar para nombrar arrays.  

- Puedo hacer mas cosas con este array, por ejemplo:
  - Crear un array vacio y crear un loop donde, con una función de numeros aleatorios, generar un número aleatorio y añadirlo al array una cantidad determinada de veces:
    ```
    var randomInts: [Int] = []
    for _ in 0..<25 {
        let randomNumber = Int.random(in: 0...100) 
        randomInts.append(randomNumber)
    }
    print(randomInts)
    ```
    1. Defino la variable ```randomInts```, indicándole que contiene ```Int```s y dejándolo vacío.
    Defino el loop. Uso ```_``` para definir el loop por no importar realmente el nombre que tenga, por que no aparecerá en el código y porque es estándar su uso para este caso.
    1. Creo una variable llamada ```randomNumber``` y le asigno un valor aleatorio entre 0 y 100 dentro del ```scope```del loop, para que solo se ejecute entonces.
    1. Añado con ```append``` al array lo generado por la variable ```randomNumber```.

## 7. Enum
### Con "enum" puedo crear una tabla de datos cuyo contenido es fijo.
- Defino la lista de ```enum```:  
    ```
    enum Emotes {
        case kekw
        case Concern
        case xdding
        case xffing
        case xddTree
    }
    ```
- Puedo hacerlo tambien separando los valores de ```case``` por comas:
    ```
    enum Emotes { case kekw, Concern... } 
    ```

 - ```enum``` puede considerarse un nuevo tipo de dato, como ```Int``` o ```String``` a la hora de definirlo en otra parte del codigo.
 - Puedo llamarlo en una funcion:
    ```
    func getOpinion(on emote: Emotes) {
        if emote == .kekw {
            print("bien")
        } else if emote == .Concern {
            print("dalamud?")
        } else if emote == .xdding {
            print("xffing")
        } else if emote == .xffing {
            print("xdding")
        } else {
            print("chills brother")
        }
    }
    ```
- Y puedo llamarlo utilizando ```.valordelcase```:
    ```
    getOpinion(on: .xddTree)
    ```
### rawValue
- Defino el ```enum```:
    > Para darle un valor a cada ```case``` uso el operando ```= "contenido"```, incluidas comillas.
    ```
    enum Emotes: String {
        case kekw       = "bien"
        case Concern    = "dalamud?"
        case xdding     = "xffing"
        case xffing     = "xdding"
        case xddTree    = "chills brother"
    } 
    ```
    > - Los ```enum```s pueden tener tipos de valores de todo tipo, por ejemplo, ```string```, ```Int```, ```float```... y necesitan ser definidos.  
    > - Todos los ```enum``` tienen que tener el mismo tipo de valor.
    > - Puedo identar el código para que sea mas legible, no afecta a la ejecución.
- Para llamar al ```enum``` puedo crear una función:  
    ```
    func getOpinion(on emote: Emotes){
        print(emote.rawValue)
    }
    ```
    En este caso, la funcion ```getOpinion``` cogerá del ```enum``` llamado ```Emotes``` el valor del ```case``` que le pida cuando la llame, printeando ```rawValue```.
 
  Y después llamarla:  
    ```
    getOpinion(on: .xddTree)
    ```
    Que me printeará el valor del contenido del ```case```:
    ```
    chills brother
    ```


## 9. Switch
## 10. Basic Operators
## 11. Optionals