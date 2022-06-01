package com.automation.runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)

@CucumberOptions(

		features = { "src/test/resources/Features" }, plugin = { "html:target/cucumber-html-report",
				"json:target/cucumber.json" }, glue = { "com.buggycar.steps" }, strict = true, dryRun = false, 
				tags= {"not @ignore"},
		monochrome = true)

public class CucumberRunnerTest {

}
