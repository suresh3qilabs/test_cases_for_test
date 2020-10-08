package com.ffcrm.tests;

import com.ffcrm.pages.LoginPage;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.DataProvider;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

public class BaseClass {
    public WebDriver driver;
    Properties prop = new Properties();
    // present working directory
    String pwd = System.getProperty("user.dir");

    public BaseClass() {
        try {
            InputStream input = new FileInputStream(pwd + "/src/main/resources/app_data.properties");
            prop.load(input);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @BeforeClass(alwaysRun = true)
    public void setup() {
//        System.setProperty("webdriver.chrome.driver", "/Users/sureshbabu/Desktop/Dev_Ruby/shamisen/bin/chromedriver");
  //      this.driver = new ChromeDriver();
      	String webDri = System.getProperty("webDri");
        System.out.println(webDri);
        if(webDri.contains("geckodriver")) {
        	System.setProperty("webdriver.gecko.driver", webDri);
        	this.driver = new FirefoxDriver();
        }else {
        	System.setProperty("webdriver.chrome.driver", webDri);
        	this.driver = new ChromeDriver();
        }
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.get(prop.getProperty("app.url"));
//        driver.get("https://glacial-savannah-53106.herokuapp.com/accounts");

        login();
    }

    public void login() {
        LoginPage objLoginpage = new LoginPage(driver);
        objLoginpage.userName.sendKeys(prop.getProperty("user_name"));
        objLoginpage.password.sendKeys(prop.getProperty("password"));
        objLoginpage.loginButton.click();
        driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }

    @AfterClass(alwaysRun = true)
    public void cleanup() {
        driver.quit();
    }

    @DataProvider(name = "excelData")
    public Object [] readExcelData(Method testcaseName){
        HashMap<String, HashMap<String, String>> excelData = new HashMap<String,HashMap<String, String>>();
        try {
            // Todo: parameterize the excel name
            File src = new File(pwd + "/src/main/resources/test_data.xlsx");
            FileInputStream fis = new FileInputStream(src);
            XSSFWorkbook file = new XSSFWorkbook(fis);
            int numOfSheets = file.getNumberOfSheets();
            for(int sheetNum = 0; sheetNum < numOfSheets; sheetNum++){
                XSSFSheet sheet = file.getSheetAt(sheetNum);
                int totalRows = sheet.getPhysicalNumberOfRows();
                int totalColumns = sheet.getRow(0).getPhysicalNumberOfCells();
             /*
             Creating a hash
             {testcase_id => {"column_header" => "cell_value"}}
             */
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
        return new Object [] {excelData.get(testcaseName.getName())};
    }
}