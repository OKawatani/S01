package main         

import "fmt"

func classificar_numero(numero int) string{
  
  if numero == 0{
    return "Zero"
  
  } else if numero > 0{
    return "Positivo"
  
  } else if numero < 0{
    return "Negativo"
  
  } else{
    return "Valor invalido"
  }

}

func main(){
   
  var numero int
  var resultado string
  
  fmt.Println("Digite um numero")
  fmt.Scan(&numero)

  resultado = classificar_numero(numero)
  fmt.Println(resultado)
  
}
