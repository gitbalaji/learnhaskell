import qualified Data.Map as Map

timeMap = [("2015-01-01T04:00:00", "Open"), ("2015-01-01T01:00:00", "Failed"), ("2015-01-01T02:00:00", "Completed")]

main = do
 print $ Map.findMax (Map.fromList timeMap)
