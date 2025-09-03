use std::io;

fn verificar(senha: &str) -> bool
  {
    if senha.len() < 8 {
      return false;
    }
    if !senha.chars().any(|c| c.is_uppercase()) {
      return false;
    }
    if !senha.chars().any(|c| c.is_digit(10)) {
      return false;
    }

    true
  }

fn main() {
    
  println!("Digite uma senha com pelo menos 8 caracteres com pelos menos uma letra maiúscula e um número:");
  
  let mut senha_valida = false;
  
    loop{
    
      let mut senha = String::new();
      io::stdin()
        .read_line(&mut senha)
        .expect("Falha ao ler a entrada");

      let senha = senha.trim();

      senha_valida = verificar(senha);
      if senha_valida == true {
        println!("Senha válida!");
        break;
      }
    println!("Senha inválida tente novamente:");
    }
  
 


}
