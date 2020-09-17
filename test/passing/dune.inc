; -------- Test: `test.ml` -----------------------------------------------------

; The executable under test
(executable
 (name test)
 (modules test)
 (preprocess (pps ppx_alcotest))
 (libraries alcotest
 ))

; Run the PPX on the `.ml` file
(rule
 (targets test.actual)
 (deps
  (:input test.ml))
 (action
  (run %{exe:../pp.exe} --impl %{input} -o %{targets})))

; Compare the post-processed output to the .expected file
(rule
 (alias runtest)
 (action
  (diff test.expected test.actual)))

; Ensure that the post-processed executable runs correctly
(rule
 (alias runtest)
 (action
  (run ./test.exe)))


