# ![image](https://user-images.githubusercontent.com/62215188/162474525-7641d77b-7a97-4b7e-8014-c6eb41490b36.png) NeoFramework

Simple Java framework for interfacing with Neo4j

## Prerequisites
Have [IntelliJ](https://www.jetbrains.com/idea/) and [Neo4J desktop](https://neo4j.com/download/) installed.
## Server Startup
1. Open Neo4j, hit **New** then **Create Blank Project**
2. In the top right of the project, click **Add -> Local DBMS**
3. Name it whatever you'd like, set the password to *password* for now.
4. Keep the version as 4.4.3 and click **Create**
5. Hover over the server, click the three dots, then **Settings**
6. Scroll down to *Network connector configuration* and make sure the following line is uncommented:
![image](https://user-images.githubusercontent.com/62215188/162043764-ca450247-b409-4e25-9400-08ba7ae683c7.png)

7. Apply changes and close.
8. Feel free to start the server and open it to ensure everything is running correctly.
## Java Setup - From repo
1. Create new project from version control.
2. Select Git, paste url of repo.
## Java Setup - Scratch Project
1. Open IntelliJ and create a new project.
2. Select **Maven**, and set the *Project SDK* to Oracle JDK 11. If it is not there, then select **Download JDK** and grab version 11.

![image](https://user-images.githubusercontent.com/62215188/162045100-2774c5cf-682d-47b8-860b-60677c2a49a9.png)

4. Head to the next page, name the project whatever you'd like. You can change the *GroupId* if you'd like although this is not necessary.
5. Open the pom.xml file, click somewhare in the code and press **Alt + insert**. Select **Dependency**.
6. Search we want to install *neo4j* and *neo4j.driver* from artifacts. 

![image](https://user-images.githubusercontent.com/62215188/162045976-e6104982-4726-417f-a9dd-1742cade71d1.png)
![image](https://user-images.githubusercontent.com/62215188/162046063-2325a301-d89d-4c91-9bfa-00cc62eef28e.png)

7. Afterr adding these, there should be a little button to update the dependencies.

![image](https://user-images.githubusercontent.com/62215188/162046547-f0fd53e9-b71e-4128-9f52-c5bb0181b6b2.png)

8. Pom.xml should look like this:

![image](https://user-images.githubusercontent.com/62215188/162046208-0cc6d7a4-c8c8-4c65-a3af-70416746fa89.png)

9. Under **src/main/java/** make a new Java class with the same name as the project.
10. Add the Java code found in this repo.
11. Swap *NeoFramework* with the name of your project.
12. Add own Cypher code in the resources folder.
## Running the code
1. Make sure the server is running on the neo4j desktop.
2. Run the code. It should print a the query ID along with the Cypher command.
3. On the server there should now be visable nodes corresponding to the Cypher code.
