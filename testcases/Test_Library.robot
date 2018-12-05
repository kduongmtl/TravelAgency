*** Settings ***
| Library | ../resources/MyLibrary.py

*** Test Cases ***
| Example that calls a Python keyword
| | ${result}= | calculate two numbers | 1 | 2
| | Should be equal | ${result} | 3
