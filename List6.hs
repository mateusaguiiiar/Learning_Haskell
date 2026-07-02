-- ex1: Defina um tipo de dado chamado DiaSemana que represente os sete dias da semana (de Segunda a Domingo). Em seguida, implemente a função ehFimDeSemana :: DiaSemana -> Bool que retorna True se o dia fornecido for Sabado ou Domingo, e False para os demais dias da semana. 
data DiaSemana = Segunda | Terça | Quarta | Quinta | Sexta | Sábado | Domingo 
    deriving Show

ehFimdeSemana :: DiaSemana -> Bool
ehFimdeSemana Sábado = True
ehFimdeSemana Domingo = True
ehFimdeSemana _ = False

-- ex2: Defina um tipo de dado Ponto2D que represente um ponto no plano cartesiano através de duas coordenadas do tipo Double. Escreva uma função chamada distanciaOrigem :: Ponto2D -> Double que calcule a distância euclidiana desse ponto até a origem (0,0).
type Ponto2D = (Double, Double)

distanciaOrigem :: Ponto2D -> Double
distanciaOrigem (x, y) = sqrt((x^2) + (y^2))

-- ex3: Defina um tipo de dado chamado Cliente. Um cliente pode ser uma PessoaFisica (que armazena o nome como String e a idade como Int) ou uma PessoaJuridica (que armazena a razão social como String e o ano de fundação como Int). Escreva uma função obterNome :: Cliente -> String que extraia e retorne apenas o nome/razão social do cliente, independentemente de seu tipo.
data Cliente = PessoaFisica String Int | PessoaJuridica String Int deriving Show

obterNome :: Cliente -> String
obterNome (PessoaFisica nome n) = nome
obterNome (PessoaJuridica rs a) = rs

-- ex4: Crie sua própria estrutura de lista definindo um tipo ListaInt. Ela deve ter dois construtores: Vazia (representando o fim da lista) e No (que guarda um elemento do tipo Int e o restante da estrutura ListaInt). Em seguida, implemente de forma recursiva a função somaLista :: ListaInt -> Int para somar todos os inteiros contidos nessa lista.
data ListaInt = Vazia | No Int ListaInt deriving Show

somaLista :: ListaInt -> Int
somaLista Vazia = 0
somaLista (No x resto) = x + somaLista resto
