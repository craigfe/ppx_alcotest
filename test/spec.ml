open Scaffold

let () =
  v ~libraries:[ "alcotest" ] ~this_file:__FILE__ ~ppx:"ppx_alcotest"
    [ ("passing", ppx_tests ()); ("failing", ppx_tests ~expect_failure:() ()) ]
  |> declare
