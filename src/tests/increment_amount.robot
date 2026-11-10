*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter is incremented by value x the counter is x
    Go To  ${HOME_URL}
    Fill Text  input[name="amount"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa