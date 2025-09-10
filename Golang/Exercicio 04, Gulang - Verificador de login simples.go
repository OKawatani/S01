package main         

import "fmt"

func verificar_login(usuario, senha string) bool {
    
  if usuario == "senha" && senha == "admin" {
        
      return true
    
    }else{
        return false
    }
  
}

func main(){
   
  var usuario, senha string
  var resultado bool = false
  
  
  for{
    
    fmt.Println("Digite o nome de usuário:")
    fmt.Scan(&usuario)

    fmt.Println("Digite a senha:")
    fmt.Scan(&senha)
    
    resultado = verificar_login(usuario, senha)
    
    if resultado == true{
      fmt.Println("Login bem-sucedido!")
     break 
    }
    
    fmt.Println("Usuário ou senha incorretos")
  
  }
  
}
