use std :: io;

fn imprimir_tabuada(numero: i32, li: i32, ls: i32)
  {
    for i in li..=ls {
        println!("{} x {} = {}", numero, i, numero * i);
    }

  }

fn main()
  {
    println!("Digite o Número que deseja saber a tabuada:");
    
    let mut numero = String::new();
    io::stdin()
      .read_line(&mut numero)
      .expect("Falha ao ler a linha");
    
    let numero: i32 = numero.trim().parse()
      .expect("Por favor digite um número");

    println!("Digite o limite inferior da tabuada:");
    
    let mut li = String::new();
    io::stdin()
      .read_line(&mut li)
      .expect("Falha ao ler a linha");
    
    let li: i32 = li.trim().parse()
      .expect("Por favor digite um número");

     println!("Digite o limite superior da tabuada:");
     
    let mut ls = String::new();
     io::stdin()
       .read_line(&mut ls)
       .expect("Por favor digite um número");
     
    let ls: i32 = ls.trim().parse()
       .expect("Por favor digite um número");

    imprimir_tabuada(numero, li, ls);
  }
