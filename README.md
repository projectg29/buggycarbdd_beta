# README #

### About the repository ###
* This repository contains POC of BDD (Behaviour Driven Development) automation framework for Buggy Cars Rating.

### Project scope ###
* BDD framework implementation
* BDD dependency injection
* Passing data through Cucumber Feature
* Passing data through Cucumber DataTable
* Properties file configuration
* Logging

### Test Approach, Functionalities and Defects identified in Buggy Cars Rating Web App ###
* Test approach, functinalities idenfied and defects idenfied are document and commit. BuggyCars Test Approch and Defect logs.docx

### Improvement can done ###
* WebDriverManager > Improve JavaDoc with suggestions to use methods
* WebDriverManager > Few methods (Select, Actions, etc.) implementation can be managed under try catch block
* WebDriverManager > Browser initialization methods can be managed in separate classes
* Page Objects Classes > Add title/url verification in constructor. Add logging
* Page Objects Classes > It's good to wait until textToBePresentInElementLocated while working with Select
* TestNgRunner > Integrate TestNG XML
* Add screenshot when test fail
* Prepare project design/architecture diagram
* Refer Selenium Dev recent documentation add modify implementation as per latest trends, if required.
* Update project dependencies to the latest versions
* Reporting can be imporved

### Prerequisite for development ###
* Java (Java 11 or Plus) installed
* Maven installed
* JAVA_HOME environment variable configured
* MAVEN_HOME environment variable configured
* Java IDE installed (IntelliJ IDEA or Eclipse)
* TestNG plugin installed in IDE
* Cucumber plugin installed in IDE
* Google Chrome web browser installed

### Technologies used ###
* Java
* TestNG
* Selenium WebDriver
* Web Driver Manager
* Cucumber

### How do I get set up ###
* Download the repository into system.
* Unzip the repository
* Import from Eclipse or IntelliJ
* Run the maven clean and build

### How to execute tests ###
* Execute from editor (Ecliplse or IntelliJ)
* Can right click POM.XML and run as maven build
* Can run from /BuggyCarsProjectsBDD/src/test/java/com/automation/runner/CucumberRunnerTest.java
* Can execute from feature file - /BuggyCarsProjectsBDD/src/test/resources/Features/BuggyCarRatingSmokeTests.feature
