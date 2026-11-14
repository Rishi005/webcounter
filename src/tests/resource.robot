*** Settings ***
Library  Browser

*** Variables ***
${DELAY}     500ms
${HOME_URL}  http://localhost:5001
${BROWSER}   chromium
${HEADLESS}  False

*** Keywords ***
Open And Configure Browser
    New Browser  browser=${BROWSER}  headless=${HEADLESS}  slowMo=${DELAY}
    New Context
    New Page  about:blank
