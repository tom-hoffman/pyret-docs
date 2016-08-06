#lang racket/base
(require "../scribble-api.rkt")
(provide A N No B S EQ RA Ar RA-of A-of L L-of O-of S-of E-of P-of)

(define A (a-id "Any" (xref "<global>" "Any")))
(define N (a-id "Number" (xref "<global>" "Number")))
(define No (a-id "Nothing" (xref "<global>" "Nothing")))
(define B (a-id "Boolean" (xref "<global>" "Boolean")))
(define S (a-id "String" (xref "<global>" "String")))
(define RA (a-id "RawArray" (xref "<global>" "RawArray")))
(define Ar (a-id "Array" (xref "arrays" "Array")))
(define EQ (a-id "EqualityResult" (xref "equality" "EqualityResult")))
(define L (a-id "List" (xref "lists" "List")))
(define (RA-of typ) (a-app (a-id "RawArray" (xref "<global>" "RawArray")) typ))
(define (A-of typ) (a-app (a-id "Array" (xref "arrays" "Array")) typ))
(define (L-of typ) (a-app (a-id "List" (xref "lists" "List")) typ))
(define (S-of typ) (a-app (a-id "Set" (xref "sets" "Set")) typ))
(define (O-of typ) (a-app (a-id "Option" (xref "option" "Option")) typ))
(define (P-of typ1 typ2) (a-app (a-id "Pick" (xref "pick" "Pick")) typ1 typ2))
(define (E-of typ1 typ2) (a-app (a-id "Either" (xref "either" "Either")) typ1 typ2))
