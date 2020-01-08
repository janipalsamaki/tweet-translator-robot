# Tweet translator robot

Translates the latest tweet for the given user name to given language.

## Pre-requisites

Python 3
Robot Framework
SeleniumLibrary

## Usage

Defaults to Donald Trump's latest tweet in Finnish:

```zsh
robot tweet-translator.robot
```

### Overriding the language

```zsh
robot --variable LANGUAGE:Swedish tweet-translator.robot
```

### Overriding the user name

```zsh
robot --variable "USER NAME":Madonna tweet-translator.robot
```