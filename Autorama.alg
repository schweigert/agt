algoritmo "autorama"
// Fun��o : calcular posi��es
// Autor :  Marlon Henry e Felipe
// Data : 12/11/2014
// Se��o de Declara��es
// FUNCIONAMENTO:
{
 //UTILIZA UM VETOR DE POSIC�ES e UM VETOR DE SENSORES (O INDEX CORRESPONDE AO CARRO)

 //INICIO:
 
 //RECEBE A ENTRADA DE N�MERO DE SENSORES
 //RECEBE A ENTRADA DE N�MERO DE CARROS
 //RECEBE A ENTRADA DE N�MERO DE CAPTURAS
 
 //REALOCA O VETOR DE POSI��ES EM ORDEM CRESCENTE AT� N (NUMERO DE CARROS)
 
 //REPETE A ENTRADA DE REPOSICIONAMENTO DO VETOR CONFORME O N�MERO DE CAPTURAS
 //       FAZ A LEITURA DO CARRO QUE PASSOU e DO SENSOR EM QUE PASSOU
 //           ARMAZENA DADOS DE QUE SENSOR PASSOU NO VETOR DE SENSORES
 //           SE O CORREDOR A FRENTE TIVER UM SENSOR MENOR QUE O SEU, ELE TROCA A POSI��O
 // AO FINAL IMPRIME A ORDEM DO VETOR DE POSI��ES

}





procedimento PosicaoTemporal (Carrinho,Sensor:inteiro)
var
i,PosicaoCarrinhoNoVetor : inteiro
inicio
CarSensor[Carrinho] <- Sensor
// encontrar o carrinho no Ranking
para i de 1 ate 100 faca // Rodar "Todos" os carrinhos
   se (Podio[i] = carrinho) entao  // Encontrar o carrinho desejado
      PosicaoCarrinhoNoVetor <- i   // Descobrir a sua posicao
      interrompa //Pode parar de rodar o vetor
   fimse
fimpara
        // VERIFICA QUEM PASSOU E QUEM N�O PASSOU COM INFORMA��ES DO VETOR DE SENSORES
para i de PosicaoCarrinhoNoVetor-1 ate 1 passo -1 faca
   se (CarSensor[Carrinho] >  CarSensor[Podio[i]]) entao
      PermutarVetor(Carrinho,i)
   senao
      interrompa
   fimse
fimpara

fimprocedimento
               //ESSE PERMUTADOR PODE PERMUTAR MAIS DE UMA POSI��O EM UMA UNICA CHAMADA.
               // POR ESSE FATO, EXISTE V�RIOS COMANDOS N�O NESCESS�RIO, MAS QUE PODE SER �TIL A ALGUM ALGORITMO FUTURO
procedimento PermutarVetor (Ncarrinho,Posicao : inteiro) // Funcao de atualiza��o das posic�es dos carrinhos
var
i,PosicaoCarrinhoNoVetor : inteiro
inicio
// encontrar o carrinho no Ranking
para i de 1 ate 100 faca // Rodar "Todos" os carrinhos
   se (Podio[i] = Ncarrinho) entao  // Encontrar o carrinho desejado
      PosicaoCarrinhoNoVetor <- i   // Descobrir a sua posicao
      interrompa //Pode parar de rodar o vetor
   fimse
fimpara
// Reorganizar o Vetor
se (PosicaoCarrinhoNoVetor > Posicao) entao    //N�o sei se vai precisar permutar posi��es negativas
   para i de PosicaoCarrinhoNoVetor ate posicao+1 passo -1 faca
      Podio[i] <- Podio[i-1]
      // escreval (Podio[i], "em", Podio[i-1]) Debug Para verificar Funcionamento
   fimpara
   Podio[Posicao] <- NCarrinho
fimse
fimprocedimento




procedimento Largada (Ncarrinhos : inteiro)  // Realoca em ordem crescente todo o vetor com a posicao de carrinhos v�lida
var
i : inteiro
inicio
para i de 1 ate Ncarrinhos faca
   Podio[i] <- i
fimpara
fimprocedimento

procedimento ImprimirFinal ()
var
i : inteiro
inicio
escreval(" ")
para i de 1 ate n faca

   escreva (podio[i]:5)

fimpara
escreval (" ")
fimprocedimento



var
// K = Sensores,
// N = Carrinhos,
// M = N�mero de Checagens
k,n,m: inteiro


// Utilizado para auxiliar na leitura
//de dados das posicoes
auxCarrinho,AuxSensor,AuxM : inteiro

// Vetor das posic�es
Podio,CarSensor : Vetor [1..100] de inteiro
inicio

leia (k) // Leitura de Sensores
leia (n) // Leitura de Carrinhos
leia (m) // Numero de Checagens


Largada (n)
para AuxM de 1 ate m faca // Estrutura de repeticao para M entradas
   leia (auxCarrinho)
   leia (auxSensor)
   PosicaoTemporal(auxCarrinho,auxSensor)
   //ImprimirFinal()
fimpara
ImprimirFinal()
fimalgoritmo
