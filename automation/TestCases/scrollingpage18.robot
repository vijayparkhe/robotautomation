*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
ScrollingTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    Maximize Browser Window
    #Execute Javascript    window.scrollTo(0,1500)      # it will go at defined pixel
    Scroll Element Into View    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img  # it will go at specified element
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)     # it will go bottom of the page
    Sleep    2
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    # it will go back top of the page
    Sleep    3
    Close Browser
*** Keywords ***

