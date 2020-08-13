-- | W3.4 Distinguishable Values
module W0304
    ( allBools, allEithers, allPairs, allMaybes, allFuncs
    , discriminators
    ) where

-- | All distinct values of type @'Bool'@.
allBools :: [Bool]
allBools = error "TODO: implement allBools"

-- | All distinct values of type @'Either' 'Bool' 'Bool'@.
allEithers :: [Either Bool Bool]
allEithers = error "TODO: implement allEithers"

-- | All distinct values of type @('Bool', 'Bool')@.
allPairs :: [(Bool, Bool)]
allPairs = error "TODO: implement allPairs"

-- | All distinct values of type @'Maybe' 'Bool'@.
allMaybes :: [Maybe Bool]
allMaybes = error "TODO: implement allMaybes"

-- | All distinct values of type @'Bool' -> 'Bool'@.
allFuncs :: [Bool -> Bool]
allFuncs = error "TODO: implement allFuncs"

-- | A list of functions from @('Bool', 'Bool')@ to @'Int'@ which collectively
-- can distinguish between any two distinct values of type @('Bool', 'Bool')@.
discriminators :: [(Bool, Bool) -> Int]
discriminators = error "TODO: implement discriminators"
