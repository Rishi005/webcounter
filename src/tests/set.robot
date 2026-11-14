*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Counter can be set to a desired value
    Go To  ${HOME_URL}
    Fill Text  input[name=value]  42
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 42 kertaa
    Fill Text  input[name=value]  0
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 0 kertaa
