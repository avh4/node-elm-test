module Main where

import Basics exposing (..)
import Signal exposing (..)

import ElmTest.Assertion as A exposing (assertEqual, assert)
import ElmTest.Run as R
import ElmTest.Runner.Console exposing (runDisplay)
import ElmTest.Test exposing (..)
import Console exposing (..)
import Task
import String

tests : Test
tests = suite "A Test Suite"
        [ test "Addition" (assertEqual (3 + 7) 10)
        , test "String.left" (assertEqual "a" (String.left 1 "abcdefg"))
        ]

console : IO ()
console = runDisplay tests

port runner : Signal (Task.Task x ())
port runner = Console.run console