Feature: US Cocoa Sanity Set2

@FooterLinks
Scenario Outline: verify user is able to navigate to correct footer links
Given Customer launches the website
And Accept Cookies and scroll down
When Click on footer link "<link>"
Then Verify user is redirected to correct page "<Title>"
And Verify for other footer links

Examples:
|link  					|Title    |
|Cocoa Powders  |Bulk Cocoa Powders for Baking, Confections, and Beverages|

@CreateAccount
Scenario Outline: Verify new customer is able to create an account
Given Customer launches the website
And Accept Cookies and scroll down
When User clicks on Create An Account from Profile icon
And Fill Sign Up form and click Create Account button
|First Name | Joseph |
|Last Name | Eliyas |
|Job Title | Engineer |
|Phone Number | 9489113660 |
|Company | MS |
|Business Tax ID | 0987654321 |
|Business Segment | Bakery |
|Street Address | 6172 Lakeview Cir |
|City | San Ramon |
|State | California |
|Zip Code | 94582 |
|Country | United States |
|Email Address | random |
|Password | Olam@1234 |
|Confirm Password | Olam@1234 |
|Where did you hear about us? | Email |

Then Verify the account creatrion success message
And Verify attempting to login with the newly created account will not be allowed and shows error message 