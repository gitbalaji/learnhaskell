import Network.HTTP ( simpleHTTP, getRequest, getResponseBody)
import Data.List.Split
import Data.List
import System.IO.Unsafe

import qualified Data.Map as Map

listOfStickers = ["AMZN","DISH","AAPL","GOOGL","ORCL"]
urlDest = "http://ichart.finance.yahoo.com/table.csv?s="


getStockPrice  stockSymbol = do
 let url = urlDest ++ stockSymbol
 respBody <- simpleHTTP (getRequest url)
 resp <- getResponseBody respBody
 let lst = lines resp
 let data1 = last (take 2 lst)
 let stockQuote = splitOn "," data1
 let firstElem = stockQuote !! 2
 let price = read firstElem :: Double
 return price

getPriceMap stockTicker = 
   let priceTemp = getStockPrice stockTicker in (unsafeDupablePerformIO(priceTemp) , stockTicker)

main = do
  let priceMap = map (\x -> getPriceMap x) listOfStickers

  let maxPrice = Map.findMax (Map.fromList priceMap)

  print  maxPrice
