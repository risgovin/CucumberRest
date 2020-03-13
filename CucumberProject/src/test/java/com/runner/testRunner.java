package com.runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(features="src/test/java/com/features/jsonserver.feature",glue="com/stepdefn",plugin={"pretty", "html:target/cucumber-reports"})
public class testRunner extends AbstractTestNGCucumberTests{

}
