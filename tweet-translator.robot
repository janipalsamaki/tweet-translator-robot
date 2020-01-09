*** Settings ***
Documentation   Given a user name, translates their latest tweet to given language.
Variables       variables.py
Resource        keywords.robot

*** Tasks ***
Translate the latest tweet for given user name to given language
    ${tweet} =          Get latest tweet
    ${translation} =    Translate ${tweet} to ${LANGUAGE}
    Log                 \n\n${tweet}    console=yes
    Log                 \n\n${LANGUAGE}     console=yes
    Log                 \n\n${translation}\n  console=yes
    [Teardown]          Close Browser
    