-- | W3.1 Stack Language
module W0301
    ( Instructions (..)
    , run
    , fact5
    ) where

data Instructions =
      Push Int Instructions
    | Add Instructions
    | Mul Instructions
    | Dup Instructions
    | Swap Instructions
    | Neg Instructions
    | Pop Instructions
    | Over Instructions
    | IfZero Instructions Instructions
    | Loop (Instructions -> Instructions)
    | Halt

-- |
-- >>> run fact5
-- Just [120]
--
run :: Instructions -> Maybe [Int]
run = error "TODO: implement run"

fact5 :: Instructions
fact5 =
    Push 5 $
    Push 1 $
    Swap $
    Loop $ \loop ->
    Dup $
    IfZero (Pop $ Halt) $
    Swap $
    Over $
    Mul $
    Swap $
    Push 1 $
    Neg $
    Add $
    loop
