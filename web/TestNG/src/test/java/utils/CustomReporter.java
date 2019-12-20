package utils;
//
// import java.util.List;
// import java.util.Map;
//
// import org.testng.IReporter;
// import org.testng.ISuite;
// import org.testng.ISuiteResult;
// import org.testng.ITestContext;
// import org.testng.xml.XmlSuite;

import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.Set;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.testng.IReporter;
import org.testng.ISuite;
import org.testng.ITestContext;
import org.testng.ITestResult;
import org.testng.xml.XmlSuite;

public class CustomReporter implements IReporter{
        @Override
        public void generateReport(List<XmlSuite> xmlSuites, List<ISuite> suites, String outputDirectory) {
            JSONArray results = new JSONArray();
            System.out.println(xmlSuites);
            System.out.println("------------");

            System.out.println(suites.toString());
            System.out.println("------------");

            System.out.println(outputDirectory);
            System.out.println("------------");

            suites.forEach(element->{
                results.add(createSuiteJsonObject(element));
            });
            try (FileWriter file = new FileWriter( "./report.json")) {
                file.write(results.toJSONString());
            } catch (IOException e) {
                //handle
            }

        }


        public JSONObject createSuiteJsonObject(ISuite suite) {
            JSONObject result = new JSONObject();
            JSONArray passedMethods = new JSONArray();
            JSONArray failedMethods = new JSONArray();
            JSONArray skippedMethods = new JSONArray();
            suite.getResults().entrySet().forEach(element -> {
                ITestContext context = element.getValue().getTestContext();
                passedMethods.addAll(createResultJsonArray(context.getPassedTests().getAllResults()));
                failedMethods.addAll(createResultJsonArray(context.getFailedTests().getAllResults()));
                skippedMethods.addAll(createResultJsonArray(context.getSkippedTests().getAllResults()));
            });
            result.put("name", suite.getName());
            result.put("passed", passedMethods);
            result.put("failed", failedMethods);
            result.put("skipped", skippedMethods);
            return result;
        }


        public JSONArray createResultJsonArray(Set<ITestResult> results) {
            JSONArray result = new JSONArray();
            results.forEach(element ->{
                JSONObject currentJsonResult = new JSONObject();
                currentJsonResult.put("name", element.getName());
                result.add(currentJsonResult);
            });
            return result;
        }
//    @Override
//    public void generateReport(List<XmlSuite> xmlSuites, List<ISuite> suites,
//       String outputDirectory) {
//
//       //Iterating over each suite included in the test
//       for (ISuite suite : suites) {
//
//          //Following code gets the suite name
//          String suiteName = suite.getName();
//
//          //Getting the results for the said suite
//          Map<String, ISuiteResult> suiteResults = suite.getResults();
//          for (ISuiteResult sr : suiteResults.values()) {
//             ITestContext tc = sr.getTestContext();
//             System.out.println(tc);
//             System.out.println("Passed tests for suite '" + suiteName +
//                "' is:" + tc.getPassedTests().getAllResults().size());
//             System.out.println("Failed tests for suite '" + suiteName +
//                "' is:" + tc.getFailedTests().getAllResults().size());
//             System.out.println("Skipped tests for suite '" + suiteName +
//                "' is:" + tc.getSkippedTests().getAllResults().size());
//          }
//       }
//    }
}