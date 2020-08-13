-- | W3.2 Stack Language Parser
module W0302
    ( Parser
    , program
    , parseProgramIO
    , runProgramIO
    , fact5'
    ) where

import Data.Void       (Void)
import Text.Megaparsec hiding (token)

import W0301

type Parser a = Parsec Void String a

-- | A parser for Stack programs.
--
-- >>> import Data.Either (isRight)
-- >>> run <$> parse program "" "{push +17; dup; halt}"
-- Right (Just [17,17])
-- >>> isRight $ parse program "" fact5'
-- True
--
program :: Parser Instructions
program = error "TODO: implement program"

-- | Parses a Stack program from a file.
--
-- >>> import Data.Maybe (isJust)
-- >>> isJust <$> parseProgramIO "fact5.stack"
-- True
--
parseProgramIO :: FilePath -> IO (Maybe Instructions)
parseProgramIO = error "TODO: implement parseProgramIO"

-- | Parses and runs a Stack program from a file.
--
-- >>> runProgramIO "fact5.stack"
-- [120]
--
runProgramIO :: FilePath -> IO ()
runProgramIO = error "TODO: implement runProgramIO"

fact5' :: String
fact5' = "{push 5; push 1; swap; loop {dup; ifzero {pop; halt} {swap; over; mul; swap; push 1; neg; add; ret}}}"
