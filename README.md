# Tweet translator robot

Translates the latest tweet for the given user name to given language.

## Pre-requisites

* Python 3 (https://www.python.org/)
* Robot Framework (https://robotframework.org/)
* SeleniumLibrary (https://robotframework.org/SeleniumLibrary/)
* Firefox (https://www.mozilla.org/en-US/firefox/new/)
* geckodriver (https://github.com/mozilla/geckodriver/releases)

## Usage

Defaults to Donald Trump's (`realDonaldTrump`) latest tweet in Finnish:

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
