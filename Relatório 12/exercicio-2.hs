pesoMaximo :: Double
pesoMaximo = 40.0

--pesoMaximo = 50.0
--não compila pois já foi definido uma vez - é imutável

data Encomenda = Encomenda
    { destinatario :: String
    , peso         :: Double
    , frete        :: Double
    }

descrever :: Encomenda -> String
descrever enc = destinatario enc ++ " - Peso: " ++ show (peso enc) ++ "kg - Frete: R$ " ++ show (frete enc)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\enc -> peso enc <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

main :: IO ()
main = do
    let encomenda1 = Encomenda { destinatario = "Caveira de Decoração", peso = 20.0, frete = 12.0 }
    let encomenda2 = Encomenda { destinatario = "Travesseiro super confortável", peso = 2.0, frete = 6.0 }
    let encomenda3 = Encomenda { destinatario = "Celular Pear Pro Max", peso = 3.0, frete = 15.0 }
    let encomenda4 = Encomenda { destinatario = "Sofázão do Pikachu", peso = 50.0, frete = 17.0 }
    let encomenda5 = Encomenda { destinatario = "Girafa", peso = 459.0, frete = 30.0 }

    let encomendas = [encomenda1, encomenda2, encomenda3, encomenda4, encomenda5]
    let entregaveis = cabemNaVassoura encomendas

    putStrLn "--- Todas as Encomendas do Dia ---"
    mapM_ putStrLn (map descrever encomendas)

    putStrLn "\n--- Encomendas que Cabem na Vassoura ---"
    mapM_ putStrLn (map descrever entregaveis)

    putStrLn "\n--- Total de Fretes (Encomendas que Cabem) ---"
    putStrLn ("Total: R$ " ++ show (totalDeFretes entregaveis))
