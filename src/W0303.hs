{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE InstanceSigs  #-}

-- | W3.3 Testing Binary Trees
module W0303
    ( -- * Tree
      Tree (..)
      -- * Subtask W3.3.1
    , genTree
      -- * Subtask W3.3.2
      -- * Subtask W3.3.3
    , propFunctor
      -- * Subtask W3.3.4
    , fmap'
    ) where

import Test.QuickCheck

data Tree a = Leaf a | Node (Tree a) (Tree a)
    deriving (Show, Eq, Functor, Foldable)

-- Subtask W3.3.1

-- |
-- >>> length <$> generate (genTree 23 :: Gen (Tree Int))
-- 23
--
genTree :: Arbitrary a => Int -> Gen (Tree a)
genTree = error "TODO: implement genTree"

-- Subtask W3.3.2

instance Arbitrary a => Arbitrary (Tree a) where

    arbitrary :: Gen (Tree a)
    arbitrary = error "TODO: implement arbitrary"

    shrink :: Tree a -> [Tree a]
    shrink = error "TODO: implement shrink"

-- Subtask W3.3.3

-- |
-- >>> quickCheck $ propFunctor fmap
-- +++ OK, passed 100 tests.
--
propFunctor :: ((Int -> Int) -> Tree Int -> Tree Int)
            -> Tree Int
            -> Property
propFunctor = error "TODO: implement propFunctor"

-- Subtask W3.3.4

-- |
-- >>> quickCheck $ propFunctor fmap'
-- *** Failed! Falsified ...
-- ...
--
fmap' :: (a -> b) -> Tree a -> Tree b
fmap' = error "TODO: implement fmap'"
