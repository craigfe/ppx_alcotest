(lang dune 2.7.1)
(name ppx_alcotest)

(generate_opam_files true)
(source (github CraigFe/ppx_alcotest))
(maintainers "Craig Ferguson <me@craigfe.io>")
(authors "Craig Ferguson <me@craigfe.io>")

(package
 (name ppx_alcotest)
 (synopsis "PPX tools for ALcotest")
 (documentation https://CraigFe.github.io/ppx_alcotest/)
 (depends (alcotest :with-test)))
