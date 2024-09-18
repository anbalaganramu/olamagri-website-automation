Feature: US Cocoa Sanity Set3

@BulkPricing
Scenario Outline: Verify bulk pricing calculations
Given Customer launches the website
When Customer enters email as "<Email>" and password as "<Password>"
Then Accept Cookies and Clicks login button
Given Navigate to "<Category>" Category page
And Switch to List View
Then Clicks on product "<Item>"
And Click on Bulk Pricing
And Enter quantity for "<PackageOne>" quantity as "<QuantityOne>"
And Verify Total Price with bulk price for quantity "<PackageOne>" "<QuantityOne>"
And Enter quantity for "<PackageOne>" quantity as "<QuantityTwo>"
And Verify Total Price with bulk price for quantity "<PackageOne>" "<QuantityTwo>"
And Clear the quantity for "<PackageOne>"
And Enter quantity for "<PackageTwo>" quantity as "<QuantityOne>"
And Verify Total Price with bulk price for quantity "<PackageTwo>" "<QuantityOne>"
And Enter quantity for "<PackageTwo>" quantity as "<QuantityTwo>"
And Verify Total Price with bulk price for quantity "<PackageTwo>" "<QuantityTwo>"

Examples: 
| Email                				| Password 	|Category       |Item   | PackageOne | PackageTwo |QuantityOne |QuantityTwo |
| josephkennedy.e@olamnet.com | Olam1234$ | Cocoa Powders|D11G	 |Pallet 			|Bag   				|5					|		10				|

@PDP
Scenario Outline: Verify Product detail page
Given Customer launches the website
When Customer enters email as "<Email>" and password as "<Password>"
Then Accept Cookies and Clicks login button
Given Navigate to "<Category>" Category page
And Switch to List View
Then Clicks on product "<Item>"
And Verify product code "<Item>"
And Verify Product Name Fat and PH content "<ProductName>" "<FatContent>" "<PHLevel>"
And Verify packaging "<PackageOne>" "<PackageTwo>"
And Verify Total Price for Quantity "<Quantity>" "<PackageOne>" "<PackageTwo>"
And Verify Product Image "<Image>"
And Verify links below product Image
And Verify Add to Cart Request A Sample buttons
And Verify flavor profile image
And Verify Sensory profile image

Examples: 
| Email                				| Password 	|Category       |Item  | ProductName				|FatContent|PHLevel|PackageOne|PackageTwo|Quantity |Image|
| josephkennedy.e@olamnet.com | Olam1234$ | Cocoa Powders|D11Srap	 |Lecithinated Cocoa Powder|10-12%  |7.7-8.3	| Bag|Pallet  |3 			|dezaan_powder_d11s_dry_2_1.png|

@CompareProducts
Scenario Outline: Verify Comparing Products in different categories
Given Customer launches the website
When Customer enters email as "<Email>" and password as "<Password>"
Then Accept Cookies and Clicks login button
Given Navigate to "<Category>" Category page
And Switch to List View
Then Clicks on product "<ItemOne>"
And Click Add to Compare link
And Verify the add to compare success message
Given Navigate to "<Category>" Category page
And Switch to List View
Then Clicks on product "<ItemTwo>"
And Click Add to Compare link
And Verify the add to compare success message
And Navigate to comparison list page
Then Verify compared content
And Remove one product from comparison list
And Navigate to My Account page
And Clear All Compared Products
And Verify the success message after clearing the products

Examples: 
| Email                				| Password 	|Category       |ItemOne  | ItemTwo |
| josephkennedy.e@olamnet.com | Olam1234$ |Cocoa Powders|D11Arap	|Master O1|

@ReOrder
Scenario Outline: Verify customer is able to Reorder
Given Customer launches the website
When Customer enters email as "<Email>" and password as "<Password>"
Then Accept Cookies and Clicks login button
And Navigate to My Account
Then Click on Order Id from My Orders page
And Capture Order number and materials
And Click on Reorder button
And From mini cart click Checkout now
And Select shipping method
Then Navigate to Payment page
And Select Payment option
And Place order
Then Verify the order number is different from previous order
And Verify the material and Quantity in the order

Examples: 
| Email                				| Password 	|
| josephkennedy.e@olamnet.com | Olam1234$ |

@AddNewShippingAddress
 Scenario Outline: To verify user is able to palce an order
 Given Customer navigates to Home page
 When Navigate to "<Category>" Category page
 And Switch to List View
 Then Clicks on product "<Item>"
 And Enter quantity for "<Package>" quantity as "<Quantity>" 
 Then Add the product to Cart
 And From mini cart click Checkout now
 Then Add another shipping address
 |Fields     |Values   |
 |Company    |OTBS		 |
 |PhoneNumber|random	 |
 |StreetAddress|14289 Ruby Glen Ct|
 |City | Chino Hills |
|State | California |
|Zip Code | 91709 |
|Country | United States |

 And Select shipping method
 Then Navigate to Payment page
 And Select Payment option
 And Place order
Then Verify the order in My Orders section
Then Navigate to My Account page
And Verify the new Address in Address Book "<City>" and "<State>"

 Examples:
 |Category     |Item   |Package | Quantity |City   		 |State    |
 |Cocoa Powders|D11G	 |Bag     | 1        |Chino Hills |California  |
 






