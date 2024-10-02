Feature: Facebook

#background works similar to before class 
Background:
Given the user launches Facebook application "https://www.facebook.com/"
When User clicks on create new account button



Scenario: Creating new Facebook Account
When User enters first name and surname
And User chooses Date of birth 
And User selects Gender
And User enters mobile number or email address
And User enters New PassWord
And user clicks signup 
Then taking Screenshot of the execution one

Scenario: Creating new Facebook Account with one dimensional list 
When User fills the sign up form with one dimensional list
|Neymar|junior|99556677e8|brazil@123|
And user clicks signup 
Then taking Screenshot of the execution two

Scenario: Creating new Facebook Account with key 
When User fills the sign up form with map
|firstName |leonel		|
| surName   |Messi     |
| mobNo     |554787548 |
| password | 5267@xsc  |
And user clicks signup 
Then taking Screenshot of the execution three

Scenario Outline: Creating new Facebook Account with key 
Scenario: Creating new Facebook Account
When User enters first name"<firstName>" 
And User enters surname "<surName>"
And User chooses Date of birth 
And User selects Gender
And User enters mobile number or email address "<mobNo>"
And User enters New PassWord "<password>"
And user clicks signup 
Then taking Screenshot of the execution four

Examples:
|firstName | surName  | mobNo     | password |
|leonel		| Messi     | 554787548 | 5267@xsc  |
|ingi		| martinez    | 554787548 | cx7wrdcz  |
|cris		| henry     | 554787548 | dv@xsc    |
