CREATE (accountHolder1:AccountHolder {FirstName: "John",LastName: "Doe",UniqueId: "JohnDoe" })

CREATE (accountHolder2:AccountHolder {FirstName: "Jane",LastName: "Appleseed",UniqueId: "JaneAppleseed" })

CREATE (accountHolder3:AccountHolder {FirstName: "Matt",LastName: "Smith",UniqueId: "MattSmith" })

CREATE (address1:Address {Street: "123 NW 1st Street",City: "San Francisco",State: "California",ZipCode: "94101" })

CREATE (accountHolder1)-[:HAS_ADDRESS]->(address1),(accountHolder2)-[:HAS_ADDRESS]->(address1),(accountHolder3)-[:HAS_ADDRESS]->(address1)

CREATE (phoneNumber1:PhoneNumber { PhoneNumber: "555-555-5555" })

CREATE (accountHolder1)-[:HAS_PHONENUMBER]->(phoneNumber1),(accountHolder2)-[:HAS_PHONENUMBER]->(phoneNumber1)

CREATE (ssn1:SSN { SSN: "241-23-1234" })

CREATE (accountHolder2)-[:HAS_SSN]->(ssn1),(accountHolder3)-[:HAS_SSN]->(ssn1)

CREATE (ssn2:SSN { SSN: "241-23-4567" })<-[:HAS_SSN]-(accountHolder1)

CREATE (creditCard1:CreditCard {AccountNumber: "1234567890123456",Limit: 5000, Balance: 1442.23,ExpirationDate: "01-20",SecurityCode: "123" })<-[:HAS_CREDITCARD]-(accountHolder1)

CREATE (bankAccount1:BankAccount {AccountNumber: "2345678901234567",Balance: 7054.43 })<-[:HAS_BANKACCOUNT]-(accountHolder1)

CREATE (creditCard2:CreditCard {AccountNumber: "1234567890123456",Limit: 4000, Balance: 2345.56,ExpirationDate: "02-20",SecurityCode: "456" })<-[:HAS_CREDITCARD]-(accountHolder2)

CREATE (bankAccount2:BankAccount {AccountNumber: "3456789012345678",Balance: 4231.12 })<-[:HAS_BANKACCOUNT]-(accountHolder2)

CREATE (unsecuredLoan2:UnsecuredLoan {AccountNumber: "4567890123456789-0",Balance: 9045.53,APR: .0541,LoanAmount: 12000.00 })<-[:HAS_UNSECUREDLOAN]-(accountHolder2)

CREATE (bankAccount3:BankAccount {AccountNumber: "4567890123456789",Balance: 12345.45 })<-[:HAS_BANKACCOUNT]-(accountHolder3)

CREATE (unsecuredLoan3:UnsecuredLoan {AccountNumber: "5678901234567890-0",Balance: 16341.95, APR: .0341,LoanAmount: 22000.00 })<-[:HAS_UNSECUREDLOAN]-(accountHolder3)

CREATE (phoneNumber2:PhoneNumber {PhoneNumber: "555-555-1234" })<-[:HAS_PHONENUMBER]-(accountHolder3)

CREATE (accountHolder4:AccountHolder {FirstName: "Bob",LastName: "Johnson",UniqueId: "BobJohnson" })

CREATE (address4:Address {Street: "123 NE 1st Street",City: "Houston",State: "Texas",ZipCode: "77386" })

CREATE (accountHolder4)-[:HAS_ADDRESS]->(address4)

CREATE (phoneNumber4:PhoneNumber { PhoneNumber: "832-322-9087" })

CREATE (accountHolder4)-[:HAS_PHONENUMBER]->(phoneNumber4)

CREATE (ssn4:SSN { SSN: "241-99-4567" })<-[:HAS_SSN]-(accountHolder4)

CREATE (creditCard4:CreditCard {AccountNumber: "1234567999123456",Limit: 500000000000000000, Balance: 789789789789.23,ExpirationDate: "01-29",SecurityCode: "321" })<-[:HAS_CREDITCARD]-(accountHolder4)

CREATE (bankAccount4:BankAccount {AccountNumber: "9995678901234567",Balance: 789789789789.23 })<-[:HAS_BANKACCOUNT]-(accountHolder4)