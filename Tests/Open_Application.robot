*** Settings ***
Library   AppiumLibrary



*** Test Cases ***


Register New User
    [Tags]    register
    Open the Application
    Register Application

#Login With Existing User
  #  [Tags]    login

   # Login the Application



*** Keywords ***
Open the Application
    [Documentation]   This test case opens the application using AppiumLibrary.
    Open Application    http://localhost:4723    platformName=Android    automationName=UiAutomator2    deviceName=emulator-5554    appPackage=chat.rocket.android    appActivity=chat.rocket.reactnative.MainActivity    noReset=true    forceAppLaunch=true
    Input Text    accessibility_id=Workspace URL. Required.    open.rocket.chat
    Click Element    accessibility_id=Connect

Register Application
    [Documentation]   This test case registers the application using AppiumLibrary.
    Wait Until Element Is Visible    accessibility_id=Create an account    timeout=15s
    Click Element    accessibility_id=Create an account
    Input Text    accessibility_id=Full name. Required.    user1
    Input Text    accessibility_id=Username. Required.    yusier97
    Input Text    accessibility_id=Email. Required.    yusufmavi6868@gmail.com
    Input Text    accessibility_id=Password. Required.    User.password123!
    Input Text    accessibility_id=Required.    User.password123!
    Hide Keyboard
    Swipe    start_x=540    start_y=2000    end_x=540    end_y=1000    duration=1s
    Wait Until Element Is Visible    accessibility_id=Register    timeout=15s
    Click Element    accessibility_id=Register
    Sleep    40s
Login the Application
    [Documentation]   This test case logs in to the application using AppiumLibrary.
    Wait Until Element Is Visible    accessibility_id=Username. Required.    timeout=15s
    Input Text    accessibility_id=Username. Required.    yusier97
    Input Text    accessibility_id=Password. Required.    User.password123!
    Click Element    accessibility_id=Login

