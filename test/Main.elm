module Main exposing (..)

import Legacy.ElmTest exposing (..)


tests : Test
tests =
    suite "All"
        []


main : Program Never () msg
main =
    runSuite tests
