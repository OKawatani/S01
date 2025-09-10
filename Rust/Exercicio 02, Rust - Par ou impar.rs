use std::io;

fn eh_par(numero: i32) -> bool
  {
    
    if numero % 2 == 0
    {
      return true
    }

    return false
  
  }

fn main()
  {
    let mut par = false;
    
    println!("Escolha par ou impar");

    let mut escolha = String::new();
        io::stdin()
          .read_line(&mut escolha)
          .expect("Falha ao ler a entrada");

    let escolha = escolha.trim();

    println!("Digite o número do Jogador 1:");

    let mut j1 = String::new();
      io::stdin()
        .read_line(&mut j1)
        .expect("Falha ao ler a entrada");

    let j1: i32 = j1.trim().parse()
      .expect("Por favor, digite um número!");

    println!("Digite o número do Jogador 2:");
        
    let mut j2 = String::new();
      io::stdin()
        .read_line(&mut j2)
        .expect("Falha ao ler a entrada");
    
    let j2: i32 = j2.trim().parse()
      .expect("Por favor, digite um número!");

      let soma = j1 + j2;
      par = eh_par(soma);

      if escolha == "par" && par 
      {
        println!("Jogador 1 ganhou!");
      } 
      else if escolha == "impar" && !par 
      {
        println!("Jogador 1 ganhou!");
      } 
      else 
      {
        println!("Jogador 2 ganhou!");
      }
        
 }
