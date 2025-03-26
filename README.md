(1)Step 1: Enter Data in Excel
Open Microsoft Excel.
Enter the subject names and marks into the sheet like this:
Step 2: Calculate Total Marks
Click on B6 and enter this formula:
SUM(B2:B5)
Press Enter → This will calculate the Total Marks.
Step 3: Calculate Average Marks
=AVERAGE(B2:B5)
Press Enter → This will calculate the Average Marks.
Step 4: Perform What-If Analysis (Data Table)
We will check how different marks in Subject 4 affect the Total Marks.
 Setting Up a What-If Table
In D1, type "Subject 4 Marks".
Below it, enter different possible values for Subject 4:
In E1, type "Total Marks" (for results).
In E2, enter this formula to calculate the new Total Marks:
=B2+B3+B4+D2
Drag the formula down from E2 to E7.
Using What-If Analysis (Data Table)
Select D1:E7 (including headers).
Click on Data → What-If Analysis → Data Table.
In Column Input Cell, select B5 (Subject 4 marks).
Click OK → It will fill the Total Marks for each Subject 4 value.
 Now, you can see how changing Subject 4’s marks affects the total!
Step 5: Use Goal Seek to Find Minimum Marks for Average 80
Now, we will calculate the minimum marks in Subject 4 required to get an average of 80.
➡Steps for Goal Seek
Click on B7 (where the Average Marks is calculated).
Go to Data → What-If Analysis → Goal Seek.
In the Goal Seek window, enter:
Set cell: B7 (the Average Marks).
To value: 80 (we want the average to be 80).
By changing cell: B5 (the Subject 4 marks).
Click OK.
Excel will now calculate the required marks in Subject 4 to achieve an average of 80!

(2)Import Data & Create Pivot Table & Pivot Chart in Excel
•	Import data from an external source.
•	Create a Pivot Table to analyze data.
•	Generate a Pivot Chart to visualize the data.
Step 1: Download the Dataset
Click on this link to download the Excel file:
🔗 Products.xlsx
Open the file in Microsoft Excel.
Step 2: Import Data into Excel
1.	If using a new sheet:
o	Open a blank Excel workbook.
o	Go to Data → Get Data → From File → From Workbook.
o	Select the downloaded Products.xlsx file.
o	Click Import → Load Data into Excel.
We can see data has been properly loaded into our excel sheet.
Insert -> PivotChart
Select Use an External Data Source and Choose Connection and click Ok.
You will be able to see PivotTable and PivotChart boxes as shown
Now, just select the fields from the list present on right side and you will able to see that Chart starts getting build.
Go to the Chart Design tab.• Select Add Chart Element → Chart Title → Above Chart. • Click on the default title and type something descriptive, e.g., "Summary of Data Warehouse Metrics". • Add Chart Element → Axis Titles. Choose Primary Horizontal for the X-axis and Primary Vertical for the Y-axis. [ X-axis: Metrics , Y-axis: Values ] • Select the header in your pivot table, e.g., "Sum of CategoryID". • Click on it and rename it to a more descriptive term, such as "Total Categories". Repeat this for all headers.

(3) Step 1: Enter Data in Excel
Open Excel and enter the data:
Step 2: Calculate Total Marks
Click on B6 and enter this formula: =SUM(B2:B5) Press Enter → This will calculate the Total Marks.
Step 3: Calculate Average Marks
Click on B7 and enter this formula: =AVERAGE(B2:B5)  Press Enter → This will calculate the Average Marks.
Step 4: Perform What-If Analysis (Data Table)
We will check how different marks in Subject 4 affect the Total Marks.
Setting Up a What-If Table
In D1, type "Subject 4 Marks".
Below it, enter different possible values for Subject 4:
In E1, type "Total Marks" (for results).
 In E2, enter this formula to calculate the new Total Marks: =B2+B3+B4+D2
Drag the formula down from E2 to E7.
Using What-If Analysis (Data Table)
Select D1:E7 (including headers).
Click on Data → What-If Analysis → Data Table.
In Column Input Cell, select B5 (Subject 4 marks).
Click OK → It will fill the Total Marks for each Subject 4 value.
 Now, you can see how changing Subject 4’s marks affects the total!
Step 5: Use Goal Seek to Find Minimum Marks for Average 80
Now, we will calculate the minimum marks in Subject 4 required to get an average of 80.
Steps for Goal Seek
1.	Click on B7 (where the Average Marks is calculated).
2.	Go to Data → What-If Analysis → Goal Seek.
3.	In the Goal Seek window, enter:
Set cell: B7 (the Average Marks).
To value: 80 (we want the average to be 80).
By changing cell: B5 (the Subject 4 marks).
Click OK.
Excel will now calculate the required marks in Subject 4 to achieve an average of 80!
 Final Answer
What-If Analysis shows how different Subject 4 marks affect total.
Goal Seek finds the minimum Subject 4 marks required for an 80 average.

(4) Step 1: Enter Data in Excel
1.	Open Microsoft Excel.
2.	Enter the student marks dataset in columns A, B, and C, like this:
Step 2: Insert a Pivot Table
1.	Select the entire dataset (A1:C13).
2.	Click on Insert → PivotTable.
3.	In the PivotTable window, select:
o	Choose the data range: It should auto-select A1:C13.
o	Choose where to place the Pivot Table: Select New Worksheet.
4.	Click OK → A blank Pivot Table is created.
Step 3: Set Up the Pivot Table
1.	In the PivotTable Fields Panel, drag:
o	"Subject" to Rows.
o	"Marks" to Values (it should display Average Marks).
o	"Student" to Filters (to filter by individual students).
✅ Now your Pivot Table shows the average marks per subject!
Step 4: Apply Filters to Check Individual Student Performance
1.	Click on the Student Filter (Drop-down Menu) in the Pivot Table.
2.	Select a specific student (e.g., Aarav) to see only their marks.
3.	Click OK → The table will now show only Aarav’s marks.
Step 5: Create a Pivot Chart
1.	Click inside the Pivot Table.
2.	Go to Insert → Charts → Column Chart / Bar Chart.
3.	Choose a Clustered Column Chart or Bar Chart.
4.	Click OK → Your Pivot Chart is now ready!
Step 6: Customize the Pivot Chart (Optional)
•	Click on the Chart Title and rename it (e.g., "Average Marks Per Subject").
•	Right-click on the chart to change styles, colors, and labels.
Final Answer
•	Pivot Table: Displays average marks per subject.
•	Pivot Chart: Visually compares marks across subjects.
•	Filters: Allow checking individual student performance.
(5)
c(799,1174.8,865.1,1134.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
rainfall <- c(799,1174.8,865.1,1134.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
rainfall.timeseries <-ts(rainfall, start = c(2012,1),frequency=12)
print(rainfall.timeseries)
png(file="rainfall.png")
plot(rainfall.timeseries) , dev.off()
(6)Logistic regression
view(mtcars)
ls()
data(“mtcars”)
model <- glm(formula =vs ~ wt + disp, data = mtcars,family = "binomial")
model
summary(model)
newdata <- data.frame(wt=2.1, disp = 180)
predict(model,newdata, type = "response")
head(mtcars)

(7)Linear regression
x <- c(151,1774,138,186,128,136,179,163,152,131)
y <- c(63,81,56,91,47,57,76,72,62,48)
 relation <- lm(y~x)
 print(relation)
print(summary(relation))
a <- data.frame(x=170)
result <- predict(relation,a)
print(result)
png(file = "linearregression.png")
plot(x, y,col = "blue",main = "Height & width Regression",
abline(lm(x~y)), cex=1.3,pch=16, xlab="weight in kg",ylab="Height in cm")
dev.off()

(8) dataclustering(k-means)
head(iris)
kc <- kmeans(iris[, 1:4], centers = 3)
table(iris$Species, kc$cluster)
plot(iris[c("Sepal.Length", "Sepal.Width")], col = kc$cluster)
points(kc$centers[, c("Sepal.Length", "Sepal.Width")], col = 1:3, pch = 8,cex = 2)
