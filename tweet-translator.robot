*** Settings ***
Documentation   Given a user name, translates their latest tweet to given language.
Library         SeleniumLibrary

*** Variables ***
${BROWSER}                  Firefox
${GOOGLE TRANSLATE URL}     https://translate.google.com/
${LANGUAGE}                 Finnish
${TWITTER URL}              https://twitter.com/
${USER NAME}                realDonaldTrump

*** Tasks ***
Translate the latest tweet for given user name to given language
    ${tweet} =          Get latest tweet
    ${translation} =    Translate ${tweet} to ${LANGUAGE}
    Log                 ${tweet}    console=yes
    Log                 ${LANGUAGE}     console=yes
    Log                 ${translation}  console=yes
    [Teardown]          Close Browser

*** Keywords ***
Get latest tweet
    Open Browser        ${TWITTER URL}${USER NAME}     ${BROWSER}
    Store tweet screenshot
    ${tweet} =          Get Text    css:div[data-screen-name="${USER NAME}"].tweet .tweet-text
    [Return]            ${tweet}

Store tweet screenshot
    Capture Element Screenshot  css:div[data-screen-name="${USER NAME}"].tweet

Translate ${text} to ${language}
    Go To               ${GOOGLE TRANSLATE URL}
    Input Text          source  ${text}
    Click Element       css:.tlid-open-target-language-list
    Input Text          tl_list-search-box  ${language}
    Press Keys          tl_list-search-box  RETURN
    sleep               1s
    ${translation} =    Get Text    css:.translation
    [Return]            ${translation}
    