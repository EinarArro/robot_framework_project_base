*** Settings ***
Documentation    A test suite with a single test for try page objects
...
...              against the Wikipedia Site
Resource         ../../resources/common_res.txt
Test Teardown    Close All Browsers


*** Test Cases ***
Case 317459 demo show 1
    [Documentation]    This Test Case uses a higher level wikipedia resource
    ...                for showing Page Resource.
    [Tags]             ID_317459    tag1
    Given open browser to wiki home page
    When search for robot framework on wikipedia
    Then from Robot framework wiki page goto RIDE page

Case 317460 demo show 2
    [Documentation]    This Test Case uses a higher level wikipedia resource
    ...                for showing Page Resource.
    [Tags]             ID_317460    tag2
    Then search a string
