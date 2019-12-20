package com.ffcrm.tests.runner;

import com.ffcrm.pages.LoginPage;
import com.ffcrm.tests.stepdefinitions.Steps;
import cucumber.api.CucumberOptions;
import cucumber.api.java.it.Data;
import cucumber.api.testng.AbstractTestNGCucumberTests;
import cucumber.api.testng.CucumberFeatureWrapper;
import cucumber.api.testng.PickleEventWrapper;
import cucumber.api.testng.TestNGCucumberRunner;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Properties;
import java.util.concurrent.TimeUnit;


//@RunWith(Cucumber.class)
@CucumberOptions(features = {"features/"},
        plugin = {"pretty", "html:target/cucumber-html-reports",
                "json:target/cucumber-json-reports"
                    },
        glue = {"com/ffcrm/tests"})
public class RunCukesTest {
    public static WebDriver driver;
    public static HashMap<String, HashMap<String, String>> tcData;
    String pwd = System.getProperty("user.dir");
    Properties prop = new Properties();
    private TestNGCucumberRunner testNGCucumberRunner;

    @BeforeClass(alwaysRun = true, description = "Open Browser and Login to FFCRM")
    public void setup() {
        testNGCucumberRunner = new TestNGCucumberRunner(this.getClass());
        try {
            InputStream input = new FileInputStream(pwd + "/src/main/resources/app_data.properties");
            prop.load(input);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String webDri = System.getProperty("webDri");  
          System.out.println(webDri); 
        if(webDri.contains("geckodriver")){  
          System.setProperty("webdriver.gecko.driver", webDri);
          this.driver = new FirefoxDriver();
        }else{
          System.setProperty("webdriver.chrome.driver", webDri);
          this.driver = new ChromeDriver();
        }
        
        this.tcData = this.getExcelData();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.get(prop.getProperty("app.url"));

        login();
    }

    public void login() {
        LoginPage objLoginpage = new LoginPage(driver);
        objLoginpage.userName.sendKeys(prop.getProperty("user_name"));
        objLoginpage.password.sendKeys(prop.getProperty("password"));
        objLoginpage.loginButton.click();
        driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }

    @Test(dataProvider = "scenarios")
    public void scenario(PickleEventWrapper pickleEvent, CucumberFeatureWrapper cucumberFeature) throws Throwable{
        testNGCucumberRunner.runScenario(pickleEvent.getPickleEvent());
    }

    @AfterClass(alwaysRun = true)
    public void cleanup() {
        this.driver.close();
        this.driver.quit();
        RunCukesTest.driver = null;
        RunCukesTest.tcData = null;
        testNGCucumberRunner.finish();
    }

    @DataProvider
    public Object [][] scenarios(){
        return testNGCucumberRunner.provideScenarios();
    }

    public HashMap<String, HashMap<String, String>> getExcelData(){
        HashMap<String, HashMap<String, String>> excelData = new HashMap<String,HashMap<String, String>>();
        try {
            File src = new File(pwd + "/src/main/resources/test_data.xlsx");
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




/*
    @BeforeClass(alwaysRun = true, description = "Open Browser and Login to FFCRM")
    public void setup() {
        try {
            InputStream input = new FileInputStream(pwd + "\\src\\main\\resources\\app_data.properties");
            prop.load(input);
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.driver = new ChromeDriver();
        this.tcData = this.getExcelData();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.get(prop.getProperty("app.url"));

        login();
    }

    @AfterClass
    public void cleanup() {
        this.driver.close();
        this.driver.quit();
        RunCukesTest.driver = null;
        RunCukesTest.tcData = null;
    }*/
