package com.automation.runner;

import static com.buggy.startup.PropertyLoader.returnConfigValue;

import java.util.concurrent.TimeUnit;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;

import com.buggy.driver.DriverFactory;
import com.buggy.startup.BaseTest;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)

@CucumberOptions(

		features = { "src/test/resources/Features" }, plugin = { "html:target/cucumber-html-report",
				"json:target/cucumber.json" }, glue = { "com.buggycar.steps" }, strict = true, dryRun = false, tags = {
						"not @ignore" }, monochrome = true)

public class CucumberRunnerTest {

	static WebDriver driver;

	@BeforeClass
	public static void preCondition() {
		driver = new DriverFactory().createInstance();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		driver.get(returnConfigValue("url.base"));
		BaseTest.setDriver(driver);
		BaseTest.initiatePages();

	}

	@AfterClass
	public static void postCondition() {
		driver.quit();
	}

}
