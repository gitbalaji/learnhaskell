import Network.HTTP ( simpleHTTP, getRequest,  
                      getResponseBody)
import Data.List.Split
import Data.List
import System.IO.Unsafe

import qualified Data.Map as Map

listOfStickers = ["AMZN","DISH","AAPL","GOOGL","ORCL"]
urlDest = "http://ichart.finance.yahoo.com/table.csv?s="


getStockPrice :: String -> IO Double
getStockPrice  stockSymbol =
	do
		let url = urlDest ++ stockSymbol
		resp <- simpleHTTP (getRequest url) >>= getResponseBody
		let lst = lines resp
		let data1 = last (take 2 lst)
		let stockQuote = splitOn "," data1
		let firstElem = stockQuote !! 2
		let price = read firstElem :: Double
		return(price)

getPriceMap :: String -> (Double , String)
getPriceMap stockTicker = let priceTemp = getStockPrice stockTicker in (unsafePerformIO(priceTemp) , stockTicker)


main = do	
let priceMap = map (\x -> getPriceMap x) listOfStickers

print  $ (Map.findMax (Map.fromList priceMap))