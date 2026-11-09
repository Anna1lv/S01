data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - R$ " ++ show preco

nomeDe :: Cafe -> String
nomeDe (Cafe nome _ _) = nome

precoDe :: Cafe -> Double
precoDe (Cafe _ preco _) = preco

intensidadeDe :: Cafe -> Int
intensidadeDe (Cafe _ _ intensidade) = intensidade

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
    | intensidade >= 8 = "Forte"
    | intensidade >= 5 && intensidade <= 7 = "Equilibrado"
    | otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
    if comLeite
        then preco + 2.0
        else preco

main :: IO ()
main = do
    let cafeForte = Cafe "Forte" 21.99 10
    let cafeTres = Cafe "Três Corações" 20.99 6
    let cafePilao = Cafe "Pilão" 18.99 2
    let cafes = [cafeForte, cafeTres, cafePilao]

    putStrLn "--- Cafes do Dia ---"
    mapM_ putStrLn (map descrever cafes)

    putStrLn "\n--- Forca dos Cafes ---"
    mapM_ putStrLn (map (\c -> nomeDe c ++ ": " ++ forca c) cafes)

    putStrLn "\n--- Calculo de Preco com Leite ---"
    putStrLn "Pilão com leite:"
    print (precoDoPedido True cafePilao)

    putStrLn "Pilão sem leite:"
    print (precoDoPedido False cafePilao)
