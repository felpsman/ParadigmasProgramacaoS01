data Item = Item String String Double
data StatusCompra = Pendente | Concluida | Cancelada
    deriving (Eq)
data Compra = Compra [Item] StatusCompra
precoItem :: Item -> Double
precoItem (Item _ _ preco) = preco
totalItens :: [Item] -> Double
totalItens itens = sum (map precoItem itens)
valorFinal :: Compra -> Double
valorFinal (Compra itens status)
    | status == Cancelada = 0.0
    | total > 200 = total * 0.9
    | otherwise = total
    where
        total = totalItens itens
main :: IO ()
main = do
    let compra1 = Compra [Item "Espada" "Arma" 150.0, Item "Escudo" "Defesa" 80.0, Item "Pocao" "Cura" 30.0] Concluida
    print (valorFinal compra1)