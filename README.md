# Tweet translator robot

Translates the latest tweet for the given user name to given language.

![alt text](https://github.com/janipalsamaki/tweet-translator-robot/raw/master/images/example-execution.png "Example execution in terminal")

![alt text](https://github.com/janipalsamaki/tweet-translator-robot/raw/master/images/example-tweet-screenshot.png "Example tweet screenshot")

## Workflow explanation

Using a browser:

* navigates to Twitter page for the given user name
* stores a screenshot of the latest tweet
* stores the text of the latest tweet
* navigates to Google Translate
* translates the tweet to given language
* logs the original tweet and the translated tweet

## Pre-requisites

* Python 3 (https://www.python.org/)
* Robot Framework (https://robotframework.org/)
* SeleniumLibrary (https://robotframework.org/SeleniumLibrary/)
* Firefox (https://www.mozilla.org/en-US/firefox/new/)
* geckodriver (https://github.com/mozilla/geckodriver/releases)

## Usage

Clone this repository.

In your terminal, navigate to repository root.

Defaults to Donald Trump's (`realDonaldTrump`) latest tweet in Finnish:

```
robot tweet-translator.robot
```

### Overriding the language

```
robot --variable LANGUAGE:Swedish tweet-translator.robot
```

### Overriding the user name

```
robot --variable "USER NAME":Madonna tweet-translator.robot
```

### Viewing the results

View the generated `log.html` file in your browser.

On OS X:

```
open log.html
```
