data Bebida = Bebida String String Double

data StatusPedido = Aberto | Entregue | Cancelado
    deriving (Eq)

data Pedido = Pedido [Bebida] StatusPedido

precoBebida :: Bebida -> Double
precoBebida (Bebida _ _ preco) = preco

nomeBebida :: Bebida -> String
nomeBebida (Bebida nome _ _) = nome

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido bebidas status)
    | status == Cancelado = 0.0
    | otherwise = sum (map precoBebida bebidas)

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Pedido sem bebidas"
primeiraBebida (Pedido (x:_) _) = nomeBebida x
main :: IO ()
main = do
    let pedido1 = Pedido [Bebida "Cafe" "Quente" 8.0, Bebida "Cha" "Quente" 6.0] Entregue
    let pedido2 = Pedido [Bebida "Suco" "Gelado" 10.0] Cancelado

    print (valorTotalPedido pedido1)
    print (valorTotalPedido pedido2)
    putStrLn (primeiraBebida pedido1)