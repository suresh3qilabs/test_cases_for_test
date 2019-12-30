/*
package com.ffcrm.steps;

import com.ffcrm.pages.login.LoginPage;
import com.qmetry.qaf.automation.ui.DefaultPageLocator;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.WebDriverTestCase;
import cucumber.api.CucumberOptions;
import cucumber.api.java.it.Data;
import cucumber.api.testng.AbstractTestNGCucumberTests;
import cucumber.api.testng.CucumberFeatureWrapper;
import cucumber.api.testng.PickleEventWrapper;
import cucumber.api.testng.TestNGCucumberRunner;
import cucumber.runtime.model.CucumberFeature;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Properties;
import java.util.concurrent.TimeUnit;


//@RunWith(Cucumber.class)
@CucumberOptions(features = {"scenarios/AccountsModule.feature"},
        plugin = {"pretty", "html:target/cucumber-html-reports",
                "json:target/cucumber-json-reports"
                    },
        glue = {"com/ffcrm/steps"})
public class RunCukesTest extends WebDriverTestCase {
    public static HashMap<String, HashMap<String, String>> tcData;
    String pwd = System.getProperty("user.dir");
    Properties prop = new Properties();
    private TestNGCucumberRunner testNGCucumberRunner;

    @BeforeMethod(alwaysRun = true, description = "Open Browser and Login to FFCRM")
    public void setup() {
        testNGCucumberRunner = new TestNGCucumberRunner(this.getClass());
        try {
            InputStream input = new FileInputStream("resources\\application.properties");
            prop.load(input);
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.tcData = this.getExcelData();
        login();
    }

    public void login() {
        LoginPage objLoginpage = new LoginPage();
        objLoginpage.launchPage(new DefaultPageLocator());
        objLoginpage.login();
    }

   */
/* public void login() {
        LoginPage objLoginpage = new LoginPage();
        getDriver().get("/");
        objLoginpage.getUserName().sendKeys(prop.getProperty("user_name"));
        objLoginpage.getPassword().sendKeys(prop.getProperty("password"));
        objLoginpage.getLoginButton().click();
        getDriver().manage().window().maximize();
        getDriver().manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }*//*


    @AfterClass
    public void cleanup() {
//        this.driver.close();
//        this.driver.quit();
        RunCukesTest.tcData = null;
        testNGCucumberRunner.finish();
    }

    @Test(dataProvider = "scenarios")
    public void scenario(PickleEventWrapper pickleEvent, CucumberFeatureWrapper cucumberFeature) throws Throwable{
        testNGCucumberRunner.runScenario(pickleEvent.getPickleEvent());
    }

    @DataProvider(name = "scenarios")
    public Object [][] scenarios(){
        testNGCucumberRunner = new TestNGCucumberRunner(this.getClass());
        return this.testNGCucumberRunner.provideScenarios();
    }


    public HashMap<String, HashMap<String, String>> getExcelData(){
        HashMap<String, HashMap<String, String>> excelData = new HashMap<String,HashMap<String, String>>();
        try {
            File src = new File("resources\\data\\test_data.xlsx");
            FileInputStream fis = new FileInputStream(src);
            XSSFWorkbook file = new XSSFWorkbook(fis);
            int numOfSheets = file.getNumberOfSheets();
            for(int sheetNum = 0; sheetNum < numOfSheets; sheetNum++){
                XSSFSheet sheet = file.getSheetAt(sheetNum);
                int totalRows = sheet.getPhysicalNumberOfRows();
                int totalColumns = sheet.getRow(0).getPhysicalNumberOfCells();

                for(int rowNum=1;rowNum<totalRows;rowNum++){
                    HashMap<String, String> rowData = new HashMap<String, String>();
                    for(int columNum=0;columNum<totalColumns;columNum++){
                        sheet.getRow(0).getCell(columNum).setCellType(Cell.CELL_TYPE_STRING);
                        String key = sheet.getRow(0).getCell(columNum).getStringCellValue();
                        sheet.getRow(rowNum).getCell(columNum).setCellType(Cell.CELL_TYPE_STRING);
                        String value = sheet.getRow(rowNum).getCell(columNum).getStringCellValue();
                        rowData.put(key, value);
                    }
                    excelData.put(sheet.getRow(rowNum).getCell(0).getStringCellValue(), rowData);
                }
            }
        }catch(IOException ex){
            System.out.println("Exception in readExcelData: \n");
            ex.printStackTrace();
        }
        return excelData;
    }
}
*/
