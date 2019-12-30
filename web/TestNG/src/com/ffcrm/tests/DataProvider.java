/*
package com.ffcrm.tests;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;

public class DataProvider {
    @org.testng.annotations.DataProvider(name = "excelData")
    public Object [][] readExcelData(Method testcaseName){
        String pwd = System.getProperty("user.dir");
        HashMap<String, HashMap<String, String>> excelData = new HashMap<String,HashMap<String, String>>();
        try {
            File src = new File(pwd + "\\src\\main\\resources\\test_data.xlsx");
            FileInputStream fis = new FileInputStream(src);
            XSSFWorkbook file = new XSSFWorkbook(fis);
            int numOfSheets = file.getNumberOfSheets();
            for(int sheetNum = 0; sheetNum < numOfSheets; sheetNum++){
                XSSFSheet sheet = file.getSheetAt(sheetNum);
                int totalRows = sheet.getPhysicalNumberOfRows();
                int totalColumns = sheet.getRow(0).getPhysicalNumberOfCells();
             */
/*
             Creating a hash
             {testcase_id => {"column_header" => "cell_value"}}
             *//*

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
        return new Object [][] {{excelData.get(testcaseName.getName())}};
    }
}
*/
