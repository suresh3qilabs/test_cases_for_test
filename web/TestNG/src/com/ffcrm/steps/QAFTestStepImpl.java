package com.ffcrm.steps;

import java.util.List;
import java.util.Map;

import com.qmetry.qaf.automation.step.QAFTestStep;

/**
 * @author chiragj.ayswal
 */
public class QAFTestStepImpl {
    @QAFTestStep(description = "I am on Google Search Page")
    public void step1() {
        System.out.println("I am on Google Search Page");

    }

    @QAFTestStep(description = "I search for {0}")
    public void iSearchFor(String s) {
        System.out.println("I search for " + s);

    }

    @QAFTestStep(description="it should have following search results:{0}")
    public void itShouldHaveAllSearchResults(List<String> s) {
        System.out.printf("List: %s\n", s);

    }

    @QAFTestStep(description="it should have {0} in search results")
    public void itShouldHave_inSearchResults(String s) {
        System.out.printf("it should have %s in search results\n", s);

    }

    @QAFTestStep(description="I get at least {num} results")
    public void iGet_inSearchResults(int n) {
        System.out.printf("I get at least %d results\n", n);

    }

    @QAFTestStep(description="I have {fruit} and {anotherFruit}")
    public void parameter2(String param1, String optParam) {

        System.out.println("text:" + param1 + " forText:" + optParam);
    }

    @QAFTestStep(description="I have {fruit}")
    public void parameter1(String param1) {

        System.out.println("text:" + param1);
    }

    @QAFTestStep(description="I see following colors:{colors}")
    public void listOfColors(List<String> colors) {
        System.out.println("colors:" + colors);
    }


    @QAFTestStep(description="system with following users:{users}")
    public void listOfUser(List<Map<String, Object>> users) {
        System.out.println("users:" + users);
    }

    @QAFTestStep(description="system may have following user:{users}")
    public void oneOrMoreUser(Map<String, Object>... users) {
        System.out.println("users:" + users);
    }
    @QAFTestStep(description="I may see following color:{colors}")
    public void oneOrMoreColors(String... colors) {
        System.out.println("colors:" + colors);
    }
    @QAFTestStep(description="user is:{user}")
    public void aUser(Map<String, Object> user) {
        System.out.println("users:" + user);
    }
}
