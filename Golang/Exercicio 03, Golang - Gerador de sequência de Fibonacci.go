package main         

import "fmt"

func fibonacci(numero int) {
    var x, y int = 0, 1 
    var z int 

    fmt.Println("Sequência de Fibonacci:")

    for i := 0; i < numero; i++ {
        fmt.Println(x)
        z = x + y
        x = y
        y = z
    }
}

func main(){
   
  var numero int

  fmt.Println("Digite a quantidade de numeros que deseja ver da sequencia de fibonacci:")
  fmt.Scan(&numero)
  
  fibonacci(numero)
  
}
