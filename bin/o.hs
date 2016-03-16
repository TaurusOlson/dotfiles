-- A tool for opening files 
-- Credits: Brent Yorgey


import Data.List
import Data.Char (toLower)

import Control.Applicative

import System.Environment
import System.FilePath
import System.Process

lower = map toLower

x ==> ys = (x, ys)

exts =

  [ "em" ==>
    [ "el"
    , "clj"
    , "org"
    , "lisp"
    , "cl"
    , "scm"
    , "rkt"
    ]

  , "e" ==>
    [ "hs"
    , "txt"
    , "tex"
    , "py"
    , "vim"
    , "wiki"
    ]

  , "open" ==>
    [ "png"
    , "jpg"
    , "jpeg"
    , "bmp"
    , "html"
    , "tiff"
    , "gif"
    , "pdf"
    , "ps"
    ]

  , "tar -xvzf" ==>
    [ "tgz"
    , "tar.gz"
    ]

  , "gunzip" ==>
    [ "gz"
    ]

  , "tar -xvjf" ==>
    [ "tar.bz2"
    ]

  , "tar -xvf" ==>
    [ "tar"
    ]

  , "unzip" ==>
    [ "zip"
    ]
  ]

main = do
  getArgs >>= mapM_ open

open f =
  case findProg f of
    Nothing -> putStrLn $ "Don't know what to do with " ++ f
    Just p  -> const () <$> system (p ++ " '" ++ f ++ "' &")

findProg :: String -> Maybe String
findProg s = fst <$> find (any (`isSuffixOf` lower s) . snd) exts
