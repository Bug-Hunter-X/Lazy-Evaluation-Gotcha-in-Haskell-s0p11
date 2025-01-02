```haskell
import Data.List (sort)

main :: IO ()
main = do
  let numbers = [1, 5, 2, 8, 3]
  let sortedNumbers = sort numbers
  print sortedNumbers -- This will work fine

-- Example of potential issues with lazy evaluation

-- infiniteList = [1..] -- This creates an infinite list!

--safeFunction :: [Int] -> Int
safeFunction list = if length list > 100 then 0 else sum list
--safeFunction infiniteList --This will cause a stack overflow because of the infinite list
```