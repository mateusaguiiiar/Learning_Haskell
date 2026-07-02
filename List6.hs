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

-- ex5: Crie o operador (>|) :: Int -> ListaInt -> ListaInt que é capaz de inserir um elemento ao fim de uma ListaInt.
(>|) :: Int -> ListaInt -> ListaInt
(>|) x Vazia = No x Vazia
(>|) x (No y resto) = No y (x >| resto)

-- ex6: Crie o operador (|<) :: Int -> ListaInt -> ListaInt que é capaz de inserir um elemento no início de uma ListaInt.
(|<) :: Int -> ListaInt -> ListaInt
(|<) x list = No x list

-- ex7: Crie um tipo de dado CorSemaforo com três construtores sem argumentos: Verde, Amarelo e Vermelho. Escreva uma função proximaCor :: CorSemaforo -> CorSemaforo que simule a transição automática de um semáforo de trânsito tradicional (onde Verde avança para Amarelo, Amarelo avança para Vermelho, e Vermelho retorna para Verde).
data CorSemaforo = Verde | Vermelho | Amarelo deriving Show

proximaCor :: CorSemaforo -> CorSemaforo
proximaCor Verde = Amarelo
proximaCor Amarelo = Vermelho
proximaCor Vermelho = Verde

--ex8: Crie um tipo de dado parametrizado Opcional a que possua dois construtores: Nenhum e Dado a. Escreva uma função filtrarValores :: [Opcional a] -> [a] que receba uma lista nativa do Haskell composta por elementos do tipo Opcional a e retorne uma lista contendo apenas os valores desempacotados que estavam dentro do construtor Dado, descartando todas as ocorrências de Nenhum.
data Opcional a = Nenhum | Dado a deriving Show

filtrarValores :: [Opcional a] -> [a]
filtrarValores [] = []
filtrarValores (Nenhum : xs) = filtrarValores xs
filtrarValores (Dado x : xs) = x : filtrarValores xs
