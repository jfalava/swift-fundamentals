# Swift Fundamentals
The basics.
# Contenidos
<a href="#arrays"><h3>1. Arrays</h3></a>
<a href="#sets"><h3>2. Sets</h3></a>
<a href="#dictionary"><h3>3. Dictionary</h3></a>
<a href="#functions"><h3>4. Functions</h3></a>
<a href="#ifelse"><h3>5. If .. Else</h3></a>
<a href="#forloops"><h3>6. For Loops</h3></a>
<a href="#enum"><h3>7. Enums</h3></a>
<a href="#switch"><h3>8. Switch</h3></a>
<a href="#basicoperators"><h3>9. Basic Operators</h3></a>
<a href="#optionals"><h3>10. Optionals</h3></a>  
# Fundamentos
## 1. Arrays<a name="arrays"></a>
### Un ```array``` es una estructura de datos que puede almacenar colecciones de elementos del mismo tipo.  
- Para definir un ```array``` con nombre ```ages``` que tiene enteros:  
    ```swift
    var ages: [Int] = [13, 24, 27, 45, 54]
    ```
    > ```Int``` es el tipo de valor que hay dentro del ```array``` del ejemplo, pero puede ser cualquier tipo de información: (```float```, ```Double```, ```String```, otras variables y constantes que pueden ser insertadas usando ```.append```...).  

    > Puedo dejar el ```array``` vacío no poniendo nada entre los segundos ```[]```.
- Para contar elementos hay en el ```array```:  
    ```swift
    ages.count
    ```  
- Para comprobar cual es el primer valor del ```array```:   
    ```swift
    ages.first
    ```  
- Para comprobar cual es el ultimo valor del ```array```:   
    ```swift
    ages.last
    ```  
- Para comprobar cual es el tercer valor (0 es el primero) del ```array```:  
    ```swift
    ages[2]
    ```  
- Para añadir un nuevo valor (en este caso ```0```) al ```array```:   
    ```swift
    ages.append(90)
    ```   
- Para añadir un nuevo valor (en este caso ```65```) en la posición ```0``` en el ```array```:  
    ```swift
    ages.insert(65, at: 0)
    ```  
- Para organizar el ```array``` de menor a mayor:  
    ```swift
    ages.sort()
    ```  
- Para organizar el ```array``` de mayor a menor:  
    ```swift
    ages.reverse
    ```   
- Para cambiar el orden del ```array```:  
    ```swift
    ages.shuffle()
    ```   
- Para reflejar el valor actual del ```array``` usando ```print```:  
    ```swift
    print(ages)
    ```  

## 2. Sets<a name="sets"></a>
### ```Set``` es como ```array```: una estructura de datos que almacena colecciones de datos, pero cuya diferencia es que no puede tener elementos repetidos y no tiene orden.  

- Declaro el ```set``` asi:  
    ```swift
    var agesSet: Set<Int> = []
    ```
    > De nuevo, este ```set``` contiene ```Int```, que es lo que se indica dentro del ```<>```.
- Defino el valor del set como una variable:  
    ```swift
    var ages = [22, 32, 44, 56, 66, 77]
    ```  
- Importo un array a un ```set``` así:  
    ```swift
    var agesSet = Set(ages)
    ```  
- Inserto un item en el ```set``` así:  
    ```swift
    agesSet.insert(444)
    ```  
- Compruebo si un valor existe en el ```set```:  
    ```swift
    agesSet.contains(444)
    ```
 - Reflejo el valor actual del ```set```:  
    ```swift
    print(agesSet)
    ```  

## 3. Dictionary<a name="dictionary"></a>
### Una base de datos, kinda
- Ejemplo: defino que tipo de constante es y que contiene la constante:  
    ```swift
    let devices: [String: String]
    ```  
    > Declaro que la constante ```devices``` (no importa que nombre tenga) tiene como tipo de ```key``` (nombre de la fila) un ```string``` (una palabra) y cuyo valor es de tipo ```string```.  
- Añado valores al diccionario:  
    ```swift
    let devices: [String: String] = [
        "telefono": "iPhone 13 Pro",
        "portatil": "2020 MacBook Pro",
        "tablet": "iPad Air 5",
        "sobremesa": "Ryzen 5800x w/ nVIDIA RTX 3070 & 32GB RAM",
    ]
    ```
- Podemos indicar un valor vacío para el diccionario:  
    ```swift
    let devices: [String: String] = [:]
    ```  
- Consulto el valor de una de las tablas del diccionario:  
    ```swift
    devices["telefono"]
    ```


## 4. Functions<a name="functions"></a>

- Las funciones hacen una operación con datos: necesitan nombrarse con un verbo y un texto descriptivo (para que el código sea legible).  
- Siempre tienen un paréntesis al final porque ahí van los parametros, si los tuviera.
- El ```scope``` es todo lo que haya entre los corchetes de la función.  
- Esta función de ejemplo printeará lo que hay dentro del operando ```print```: 
    ```swift
    func printInstructorsName() {
        print("nombre")
    }
    ```
    * Si quiero poner un valor dentro una variable uso el operando ```\("valor")```:
        ```swift
        var name: String = "nombre"
        func printInstructorsName() {
            print("nombre es \(name)")
        }
        get printInstructorsName()
        ```
  
- Y llamo las funciones por su nombre y ```()```:  
    ```swift
    printInstructorsName()
    ```
    Pero este ejemplo está *hardcoded*. El verdadero potencial está en hacer algo multiusos que pueda llamarse de varias maneras con diferentes objetivos.

- En este caso creo una función que llame a un ```string```:  
    ```swift
    func printInstructorsName(name: String) {
        print(name)
    }
    ```
- Y llamo a la funcion indicándole que quiero printear el valor ```nombre```:
    ```swift
    printInstructorsName(name: "nombre")
    ```
    > Puedo pedirle a la función que printee cualquier cosa, como variables o constantes declaradas previamente.  

    > A mas generica la función, mejor, porque así puedo ser más flexible a la hora de llamarla para otros objetivos.

### Segundo ejemplo
- Quiero crear una función llamada ```add``` que va a realizar una operación matematica:
    ```swift
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
    ```swift
    add(firstNumber: 12, to: 38)
    ```
   > Llamo a la función y le doy los datos usando la etiqueta de parámetro.  
- ¿Por que aparece ```firstNumber``` como etiqueta de argumento pero no ```secondNumber```?  
  - Porque ```secondNumber``` no es una etiqueta de argumento, sino un nombre de parámetro.  
## 5. If .. Else<a name="ifelse"></a>
### ```If``` y ```Else``` se usan para crear lógica en una operación.
- Ejemplo: defino un ```statement``` con el operando ```=```:  
    ```swift
    var isDarkModeOn = false
    ```
  > Cuando nombremos ```bool```, intentaremos que sea lo más descriptivo posible para que sea más legible.

- El operando ```=``` usado dos veces seguidas se usa si para comprobar la validez de un ```statment```:  
    ```swift
    if isDarkModeOn == false {
        print("nay")
    }
    ```

- ```if``` asume primero que lo que haya dentro del ```scope``` es siempre ```true```:  
    ```swift
    if isDarkModeOn {
        print("yep")
    } else {
        print("lmao")
    }
    ```
### Ejemplo
- Primero defino una serie de variables:
    ```swift
    var myHighScore = 55
    var yourHighScore = 447
    var highScore = 1
    ```
- Creo una regla lógica con ```if``` y ```else``` que hará una u otra cosa dependiendo del valor:
    ```swift
    if myHighScore > yourHighScore {
        print("me")
    } else {
        print("you")
    }
    ```
### Segundo ejemplo
- Puedo anidar ```if``` que cogerán el valor y los compararán con varios supuestos:
    ```swift
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
## 6. For loops<a name="forloops"></a>
### Un loop hecho con el operando ```for``` me permitirá trabajar con unos datos determinados un número de veces determinado.

- Ejemplo: defino un ```array```:
    ```swift
    let allStars = ["kekw", "lul", "xdd", "Concern", "xffing"]
    ```
    > Swift no necesita en este caso que le indique que es un array de ```string``` al ver que todo son palabras.  

    > No necesitas indicar que clase de cosas printeas, pero lo haces más legible si pones nombres que indican lo que hace de manera descriptiva.

- El siguiente loop leerá todo el array desde el principio, item por item:
    ```swift
    for emote in allStars {
        print(emote)
    }
    ```
    > Aquí le pido que printee el contenido del array. Como no le doy parada, lo hará hasta que termine de leerlo todo.

- Puedo pedirle que printée algo en específico:
    ```swift
    for emote in allStars where emote == "xdd" {
        print(emote)
    }
    ```
    > ```emote``` puede ser cualquier palabra, al ser un nombre de parámetro.  

- Si quiero leer un array un numero determinado de veces, usare un rango (siendo n el valor posicional del array):
    ```swift
    0...n
    ```  
    Que leerá desde el primer valor hasta el valor n  
    ```swift
    0..>n
    ```
    Que leerá desde el valor 0 hasta el valor posterior a n
    ```swift
    0..<n
    ```
    Que leerá desde el valor 0 hasta el valor anterior a n  

- El siguiente codigo printeará todos los valores del array ```i``` hasta llegar a la posición 24:
    ```swift
    for i in 0..<25 {
        print(i)
    }
    ```
    > Usar ```i``` es estándar para nombrar arrays.  

- Puedo hacer mas cosas con este ```array```, por ejemplo:
  - Crear un ```array``` vacio y crear un loop donde, con una función de numeros aleatorios, generar un número aleatorio y añadirlo al array una cantidad determinada de veces:
    ```swift
    var randomInts: [Int] = []
    for _ in 0..<25 {
        let randomNumber = Int.random(in: 0...100) 
        randomInts.append(randomNumber)
    }
    print(randomInts)
    ```
    1. Defino la variable ```randomInts```, indicándole que contiene ```Int```s y dejándolo vacío.
    Defino el loop. Uso ```_``` para definir el loop por no importar realmente el nombre que tenga, por que no aparecerá en el código y porque es estándar su uso para este caso.
    2. Creo una variable llamada ```randomNumber``` y le asigno un valor aleatorio entre 0 y 100 dentro del ```scope```del loop, para que solo se ejecute entonces.
    3. Añado con ```append``` al array lo generado por la variable ```randomNumber```.

## 7. Enum<a name="enum"></a>
### Con ```enum``` puedo crear una tabla de datos cuyo contenido es fijo.
- Ejemplo: defino la lista de ```enum```:  
    ```swift
    enum Emotes {
        case kekw
        case Concern
        case xdding
        case xffing
        case xddTree
    }
    ```
- Puedo hacerlo tambien separando los valores de ```case``` por comas:
    ```swift
    enum Emotes { case kekw, Concern, xdding, xffing, xddTree } 
    ```

 - ```enum``` puede considerarse un nuevo tipo de dato, como ```Int``` o ```String``` a la hora de definirlo en otra parte del código.
 - Puedo llamarlo en una funcion:
    ```swift
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
    ```swift
    getOpinion(on: .xddTree)
    ```
### ```rawValue```: una propiedad de ```enum``` que me permite acceder a un valor incluido en un ```case```
- Ejemplo: defino el ```enum```:
    > Para darle un valor a cada ```case``` uso el operando ```= "contenido"```, incluidas comillas.
    ```swift
    enum Emotes: String {
        case kekw       = "bien"
        case Concern    = "dalamud?"
        case xdding     = "xffing"
        case xffing     = "xdding"
        case xddTree    = "chills brother"
    } 
    ```
    - Para usar ```rawValue``` los ```enum```s pueden tener tipos de valores de todo tipo, por ejemplo, ```string```, ```Int```, ```float```... y necesitan ser definidos.  
    - Todos los ```enum``` tienen que tener el mismo tipo de valor.
    - Puedo identar el código para que sea mas legible, no afecta a la ejecución.  
  
- Para llamar al ```enum``` puedo crear una función:  
    ```swift
    func getOpinion(on emote: Emotes){
        print(emote.rawValue)
    }
    ```
    En este caso, la funcion ```getOpinion``` cogerá del ```enum``` llamado ```Emotes``` el valor del ```case``` que le pida cuando la llame, printeando su ```rawValue```, que hemos definido al escribir el ```enum```.
 
  Y después llamarla:  
    ```swift
    getOpinion(on: .xddTree)
    ```
    Que me printeará el valor del contenido del ```case```:
    ```swift
    chills brother
    ```

## 8. Switch<a name="switch"></a>
### ```Switch``` me permitirá controlar el flujo de un programa dependiendo de una serie de condiciones dependiendo del valor de una variable.

- Defino un ```enum``` que luego usaré para definir la función que contenga ```switch```:   
    ```swift
    enum Emotes {
        case kekw
        case Concern
        case xdding
        case xffing
        case xddTree
    }
    ``` 
- Con este ```enum``` creo una función con llamada ```getOpinion``` con el operando ```switch```:
    ```swift
    func getOpinion(on emote: Emotes){
        switch emote {
        case .kekw:
            print("bien")
        case .Concern:
            print("dalamud?")
        case .xdding:
            print("xffing")
        case .xffing:
            print("xdding")
        case .xddTree:
            print("chills brother")
        }
    }
    ```
    Esta función, que será llamada con:
    ```swift
    nombreFuncion(nombreArgumento: .valorDelCase)
    ```
     Devolverá el valor que hay en el ```scope``` de cada ```case```, en este caso una función ```print```.
    > En el ejemplo, ```getOpinion(on: .xddTree)``` devolverá ```print("chills brother")```.
 
- Puedo crear un ```switch``` sin un ```enum```, pero necesito indicar todos los posibles modos:  
    ```swift
    let matchmakingRank = 856
    func determinePlayerLeague(from rank: Int) {
        switch rank {
        case 0:
            print ("Play the game to determine your league")
        case 1..<50:
            print ("You are in BRONZE League")
        case 50..<100:
            print ("You are in SILVER League")
        case 100..<200:
            print ("You are in GOLD League")
        default:
            print ("You are in a league of your own. We don't know where you are")
        }
    }
    ```
    1. Primero creo una variable para almacenar el valor que quiero comprobar.  
    2. Al definir la función, indico que clase de valor estoy manejando en la variable.  
    3. En este caso, uso en los ```case``` un rango de valores (porque esto usando un ```Int```) que quiero comprobar.    
    > En el caso de tener disponible un ```enum``` que comprobar, se cuantos ```case``` tiene que haber.
    
    En el caso del segundo ejemplo, donde no hay un ```enum``` donde mirar, tengo que definir un valor por defecto:
    ```swift
    default
    ```  
    No tener un valor por defecto y la función recibir algún tipo de valor que no se incluya provocará un runtime error.  
    Podemos llamar a la función con:
    ```swift
    nombreFuncion(from: nombreVariableLlamadaEnSwitch)
    ```
    > En el caso del ejemplo, usaremos la función ```determinePlayerLeague(from: matchmakingRank)```
## 9. Basic Operators<a name="basicoperators"></a>
### Operaciones aritméticas 101
- Podemos hacer todo tipo de operaciones aritméticas en Swift. Primero, defino una serie de variables de ejemplo:
    ```swift
    let valueOne = 55
    let valueTwo = 88
    ``` 
- Si sabemos que el resultado no es entero, hay que indicar que son ```floats``` o ```double```, y los dos valores tienen que ser iguales:
    ```swift
    let valueOneone: Double = 55
    let valueTwotwo: Double = 88
    ```
    > La diferencia entre ```float``` y ```double``` es la precisión: 6 decimales a 15.  


- Si hacemos operaciones aritméticas con enteros, si la operación tiene decimales, Swift ignorará todos los decimales y solo mostrará el entero:  
    ```swift
    let sum = valueOneone / valueTwotwo
    let div = valueOne / valueTwo
    ```
    > El nombre de la constante no importa, pero está bien que sea descriptivo para que el código sea más legible.

- ```modulo``` es un operando que saca el resto de una división:
    ```swift
    let modulo = valueOne % valueTwo
    ```
- El operando ```==``` compara dos valores. Los valores tienen que ser del mismo tipo: (```int```, ```double```, ```float```...):  
    ```swift
    valueTwo == valueOne
    ```

- Con el operando ```!``` antes de una constante podemos comprobar si algo es lo contrario.  
- Podemos asignar a una variable un valor ```bool``` y Swift sabrá responder en consecuencia cuando se le pregunte:  
    ```swift
    var isDarkModeOn = false
    if !isDarkModeOn {
        print("pero co animal")
    }
    ```
    > En el ejemplo, la constante ```isDarkModeOn``` tiene el valor ```false```. Compruebo con ```if``` si el valor es ```true``` o no, pero usando el operando ```!``` podré comprobar si es ```false``` o no.  


- Comparaciones usando el operando ```if``` tienen que ser tambien del mismo tipo. Podemos también encadenarlo con ```bool```:  
    ```swift
    if valueTwo > valueOne && !isDarkModeOn {
        print("quelocura")
    }
    ```
    > Si ```valueTwo``` es mayor que ```valueOne``` y además ```isDarkModeOn``` es ```false``` (gracias a que Swift ya lo sabe) printeará el valor indicado.  
- Podemos definir un ```if``` donde sólo una de las condiciones sea verdad con el operando ```||```:
    ```swift
    if valueOne == valueTwo || !isDarkModeOn {
        print("yep")
    }
    ```
    > En este ejemplo, a diferencia del anterior, si los dos ```value``` son iguales **O** ```isDarkModeOn``` es ```false``` printeará el valor indicado.  

- Podemos añadir y quitar con los operandos ```+``` y ```-``` otro tipo de operandos, como ```string```:
    ```swift
    let saludo = "Hi"
    let nombre = "jorge"
    print(saludo + " " + nombre)
    ```
    > Si quiero un espacio, como en el ejemplo anterior, lo añado como si fuera un ```string``` cualquiera, entre comillas. El ejemplo devolverá ```"Hi jorge"```.
    
- También podemos realizar este tipo de operaciones con ```array```:
    ```swift
    let edadViejo = [99, 88, 77]
    let edadJoven = [1, 2, 3]
    let todasEdades = edadJoven + edadViejo
    ```
    > En el ejemplo anterior podemos recuperar el valor ```todasEdades``` con ```print(todasEdades)``` que devolverá ```[1, 2, 3, 99, 88, 77]```.

## 10. Optionals<a name="optionals"></a>
### Métodos de protección para valores ```nil``` a la hora de operar con valores temporales.
> Swift te da la opción de hacer cosas con valores vacios y retornos sin datos.  

> **Ojo**: no podemos **no** hacer algo con valores vacios: esto provocará crasheos o runtime errors.
- Defino una variable para el ejemplo y lo organizo de manera ascendente (de esta manera conozco la posición exacta de cada valor):
    ```swift
    var ages: [Int] = []
    ages.sort()
    ```
- Creo una constante donde los valores del ```array``` están organizados:
    ```swift
    let oldestAge = ages.last
    ```
     > Como en el ejemplo el ```array``` está vacío devolverá ```nil``` al ejecutarse.  

## Hay diferentes maneras de tratar un valor ```nil```:

### ```If let```
- Primero compruebo si los valores que busco son los correctos para lo que quiero hacer:
    ```swift
    if let oldestAge = ages.last  {
        print("The oldest age is \(oldestAge)")
    } else {
        print("no hay valores en el array")
    }
    ```
    * Este ejemplo nunca mostrará datos porque el ```array``` está vacío.   
    * Si el ```array``` tuviera valores, habría printeado ```"The oldest age is [valor del array]"```, pero en este caso printeará ```"no hay valores en el array"```.  

### Dándole un valor a la variable en caso de que este sea ```nil```:
  - De esta manera le damos un valor por defecto nosotros mismos. Esta solución no impide al programa leer el programa en su totalidad: 
    ```swift
    if let oldestAge = ages.last ?? 999
    ```
    
### Con el operando ```guard```:
- ```guard``` permite transferir el control del programa cuando no recibe las condiciones que necesita para funcionar:

    ```swift
    func getOldestAge() {
        guard let oldestAge = ages.last else {
            return print("nope")
        }
        print("\(oldestAge) es el mas viejo")
    }
    ```
    - Llamaremos a la función con ```getOldestAge()```.  
    - En el caso de que sea ```nil```, directamente detiene la ejecución del código y ejecuta lo que haya en el ```scope``` de ```return```.  
    - Y si hay algo diferente a un valor ```nil``` ignorará el contenido del ```scope``` de ```return``` (en este caso, ```print (nope)```) y ejecutará lo que haya en el segundo ```scope```
    
### Usando ```"force unwrap"```:
- El valor del ```array``` será usado siempre, sin importar si está vacío o es utilizable por el programa.
    - Para forzarlo, usaremos el el operando ```!``` al final del valor.
    - Si el valor es ```nil``` o no es soportado/esperado (por ejemplo, la función esperaba un ```Int``` y recibe un ```Double```) y el programa no sabe como tratarlo, provocará un runtime error y el programa crasheará.  
    ```swift
    let oldestAges = ages.last!
    ```
