# What is Tableau?
Powerful data visualization and business intelligence tool that allows users to connect, visualize, and share data in a way that provides insights and facilitates decision-making

- **BUSINESS INTELLIGENCE (BI)**: Refers to technical infrastructure that collects, stores, and analyzes the data produced by a company’s activities to help making better data-driven decisions

- **DATA VISULIZATIONS** The process of converting raw data into visuals and graphs, such as charts, plots, or maps, to tell a meaningful story using the data

## Why Use Tableau?
- Easy to use - no coding involved
- Integrates seamlessly with any data source
- Fast and can handle large datasets

## Importance of Tableau in Data Analysis
- **Data Visualization**: Transforms complex data into accessible visual representations.
- **Interactive Dashboards**: Allows creation of dynamic dashboards for in-depth analysis.
- **Data Integration**: Connects with multiple data sources including spreadsheets, databases, and cloud services.
- **Analytics Capability**: Offers robust analytical features for in-depth data exploration.
- **Collaboration**: Facilitates data sharing and collaborative analysis.

## Tableau Versions
There are two main versions of Tableau:  
- **Tableau Public**: A free version of Tableau that lets you connect to limited data sources, create visualizations and dashboards, and publish dashboards online  
- **Tableau Desktop**: A paid version of tableau which lets you connect to all types of data sources, allows you to save work locally, and has unlimited data sizes

## Getting started with Tableau
When working with Tableau, you will work with Workbooks. Workbooks contain sheets, dashboards, and stories. Similar to Microsoft Excel, a Workbook can contain multiple sheets. A sheet can be any of the following and can be accessed on the bottom left of a workbook.   

- **Workbook**: A workbook is the entire Tableau file containing your sheets and dashboards.  
- **Worksheet**: A worksheet is a single view in a workbook. You can add shelves, cards, legends, visualizations, and more to a worksheet  
- **Dashboard**: A dashboard is a canvas for displaying multiple sheets at a time and allowing them to interact with each other.  
- **Story**:  A story is a viewing portal that contains a sequence of worksheets or dashboards that work together to convey information.  
- **Container**: A container is a layout frame on a dashboard that can house sheets, images, filters/parameters, and text boxes. Containers can be horizontal or vertical. Double-click any sheet on a dashboard by the center “grip” marks to select the container that the sheet sits in.  
- **Packaged Workbook**: A single zip file with a .twbx extension that contains a workbook along with any supporting local file data sources and background images. Use this format to package your work for sharing with others who don’t have access to the data.

## Tableau Data Model
Every data source that you create in Tableau has a data model. You can think of a data model as a diagram that tells Tableau how it should query data in the connected database tables

- **PHYSICAL LAYER**: Layer under the logical layer. Tables can be combined here using JOINs and UNIONs
- **LOGICAL LAYER**: Default view in data source. Tables can be combined here only using relationships

### Combine Methods
#### **JOINS**: 
Combines the columns of two tables into a single table in the physical layer level. Tables must exist within the same data source
- **INNER JOIN** - Show all matching records in both tables
- **LEFT JOIN** - Show all records from left table, and only matching records from right table
- **RIGHT JOIN** - Show all records from right table, and only matching records from left table
- **FULL JOIN** - Show all records from both tables
#### UNION: 
Combines the rows of two tables into a single table in the physical layer level. Tables must exist within the same data source
#### RELATIONSHIPS: 
Describes how two tables relate to each other based on common fields but does not merge them at the logical layer level. Tables must exist within the same data source
#### DATA BLENDING:
Combine tables from two multiple data sources on the worksheet level

## The sidebar
In the sidebar, you’ll find useful panes for working with data  
- **Data**: The default left pane that lists your open data sources and the dimensions and measures contained in the selected data sources. Sets and Parameters are also listed here.  
- **Analytics**: Clicking the Analytics tab on the left pane will display available analyses for the data displayed on your sheet. Inapplicable analyses will be grayed out. Analyses include adding constant lines, box plots, trend lines, forecasts, and reference bands.
 
## Tableau Metadata
When working with data in Tableau, there are multiple definitions to be mindful of:  
- **Fields**: Fields are all of the different columns or values in a data source or that are calculated in the workbook. They show up in the data pane and can either be dimension or measure fields  
- **Dimensions**: A dimension is a type of field that contains qualitative values (e.g. locations, names, and departments). Dimensions dictate the amount of granularity in visualizations and help reveal nuanced details in the data  
- **Measures**: A measure is a type of field that contains quantitative values (e.g. revenue, costs, and market sizes). When dragged into a view, this data is aggregated, which is determined by the dimensions in the view  
- **Data types**: Every field has a data type which is determined by the type of information it contains. The available data types in Tableau include text, date values, date & time values, numerical values, boolean values, geographical values, and cluster groups  
- **Discrete**: Blue-colored fields are used to display disconnected and discrete values, creating headers in the view. Continuous fields form a distinct list of values
- **Continuous**: Green-colored fields are used to display unbroken and connected values, creating an axis in the view. Continuous fields form a range of values
- **Pill**: The visual representation of a data item brought into your sheet. Pills can sit on the rows and columns shelves, the marks card, and the filters card.  

## The canvas
The canvas is where you create your data visualizations  
- **Tableau Canvas**: The canvas takes up most of the screen on Tableau and is where you can add visualizations  
- **Rows and columns**: Rows and columns dictate how the data is displayed on the canvas. When dimensions are placed, they create headers for the rows or columns while measures add quantitative values  
- **Marks card**: The Marks card is the tool used to create a sheet that controls most of the visual elements in a sheet. Using the Marks card, you can switch between different chart types (bar, line, symbol, filled map, and so on), change colors and sizes, add labels, change the level of detail, and edit the tool tips. 

## Filters
A filter is used to limit what data is being displayed on the sheet. Visible controls for a filter on a sheet or dashboard are called Quick Filters. Each filter is for an individual data field. Both dimensions and measures can be used as filters.
- **EXTRACT FILTER**: Filters the data between source system and data source. Reducing the data can improve the performance of your views. Extract filter can be used only in data sources with extract connection.
- **DATA SOURCE FILTER**: Filters the data between data source and worksheets. Reducing the data can improve the performance of your views. Data source filter can be used in data sources with extract or live connection.
- **CONTEXT FILTER**: When you create a context filter, Tableau generates a temporary table that includes only the data relevant to the filter Context filter can be created individually for each worksheets
- **DIMENSION FILTER**: A dimension filter is used to filter data based on categorical variables or dimensions
- **MEASURE FILTER**: A measure filter is used to filter data based on quantitative measures
- **TABLE CALC FILTER**: You can use table calculations to filter data dynamically based on the result of a computation

## Data Groupings and Relationship
### Groups: 
Simplifies large numbers of dimension members by combining them into higher level sub-categories. When a field is grouped, a new dimension node is created and replaces the original dimension in the view. Groups can be made by:
- Highlighting multiple header names or data points then right clicking will allow you to form on-the-fly groupings of dimension levels in the view.
- Clicking on the dimension you want to group in the data pane, then selecting Create > Group
- **CLUSTER GROUPS**: Cluster groups are another way of grouping data, and they are used in data clustering, which is a statistical technique to group similar data points together
### Sets:
A subset of your data that meets certain conditions based on existing dimensions. Unlike a group, sets only have two values: IN and OUT. A member is either IN your set, or not (OUT). Like parameters, sets can be used throughout a workbook on multiple sheets. Also like parameters, sets are located separate from Dimensions and Measures on the data pane. Sets can be created by:
- Highlighting multiple header names or data points then right clicking will give you the option to put those dimension fields in a set.
- Clicking on the dimension you want to group in the data pane, then selecting Create > Set
 
### Bins:
Bins are buckets based on a range of values. While groups and sets are used for grouping dimensions, bins are used for grouping measures. The created bin will set in the Dimensions shelf. 
- Bins can be created by right-clicking on a measure, then selecting Create > Bins…
 
### Hierarchies:
Often data sources have related dimensions that have an inherent hierarchy. For example, a data source may have fields for Country, State, and City. These fields could be grouped into a hierarchy called Location. In this example, a user can expand country and breakdown the data into by state and city. Hierarchies can be created by:
- Using the CTRL key, select the dimensions you want to be in your hierarchy, right click and Create Hierarchy. Once the hierarchy is created it’s simple to put into the correct order, just drag and drop the dimensions in the hierarchy into the correct position.
- Clicking a field and dragging it on-top of another field will also create a hierarchy.

## Other Terminology
- **Parameters**: Variables that allow users to replace a fixed constant values. Parameters can be used in calculations, filters, text, bins, reference lines.
- **Action**: Add context and interactivity to your data using actions. Users interact with your visualizations by selecting marks, or hovering, or clicking a menu, and the actions you set up can respond with navigation and changes in the view.
- **Aggregation**: A result of a mathematical operation applied to a measure. Predefined aggregations include summation and average. You can convert dimensions to measures by aggregating them as a count. For relational data sources, all measures must be either aggregated or disaggregated (unless they appear on the Filters shelf). Tableau aggregates measures, usually as a summation, when you place them on a shelf.
- **Aliases**: an alternative name assigned to a dimension member, or to a field name. Aliases can be created by:
  -   Right-clicking on an individual dimension header and selecting Edit alias…
  -   Right-clicking on a dimension in the data pane and selecting Aliases…
  -   Clicking opening Data from the top toolbar, going to your data sources, and selecting Edit Aliases…
- **Calculated Field**: A new field that you create by using a formula to modify the existing fields in your data source.
- **Caption**: A description of the current view on the active worksheet. For example, “Sum of Sales for each Market”. You can automatically generate captions or create your own custom captions. Show and hide the caption by selecting Worksheet > Show Caption.
- **Crosstab**: A text table view. Use text tables to display the numbers associated with dimension members.
- **Dropdown Carrot**: The small triangle to the right of a selected field.
- **Sheet Description**: A thorough summary of the data used in a worksheet including all dimensions and measures used, a written description of the view (marks, rows, columns), the formulas for all calculated fields used on the sheet, and the data source details.
- **Tooltip**: Tooltips are text boxes that appear when hovering over a mark on a sheet in order to give more information

## How to Create a Data Vizualization
 - **Upload a dataset**
    1. Launch Tableau  
    2. In the Connect section, under To a File, press on the file format of your choice  
    3. For selecting an Excel file, select .xlsx or .xlsx  

- **Creating your first visualization**
    1. Once your file is uploaded, open a Worksheet and click on the Data pane on the left-hand side  
    2. Drag and drop at least one field into the Columns section, and one field into the Rows section at the top of the canvas  
    3. To add more detail, drag and drop a dimension into the Marks card (e.g. drag a dimension over the color square in the marks card to color visualization components by that dimension)  
    4. To a summary insight like a trendline, click on the Analytics pane and drag the trend line into your visualization  
    5. You can change the type of visualization for your data by clicking on the Show Me button on the top right  

## Data Visualization Types in Tableau  
Tableau provides a wide range of data visualizations. Here is a list of the most useful visualizations you have in Tableau:  
- **Bar Charts**: Horizontal bars used for comparing specific values across categories (e.g. sales by region)  
- **Stacked Bar Charts**: Used to show categorical data within a bar chart (e.g., sales by region and department)  
- **Side by side chart**: Used to compare values across categories in a bar chart format (e.g., sales by region comparing product types)  
- **Line Chart**: Used for looking at a numeric value over time (e.g., revenue over time)  
- **Scatter Plot**: Used to identify patterns between two continuous variables (e.g., profit vs. sales volume)  
- **Histogram**: Used to show a distribution of data (e.g., Distribution of monthly revenue)  
- **Box-and-Whisper Plot**: Used to compare distributions between categorical variables (e.g., distribution of revenue by region)  
- **Heat map**: Used to visualize data in rows and columns as colors (e.g., revenue by marketing channel)  
- **Highlight table**: Used to show data values with conditional color formatting (e.g., site traffic by marketing channel and year)  
- **Symbol Map**: Used to show geographical data (e.g., Market size opportunity by state)  
- **Treemap**: Used to show hierarchical data (e.g., Show how much revenue subdivisions generate relative to the whole department within an organization)  
- **Dual Combination**: Used to show two visualizations within the same visualization (e.g., profit for a store each month as a bar chart with inventory over time as a line chart)  

## How to Customize Visualizations in Tableau  
Tableau provides a deep ability to filter, format, aggregate, customize, and highlight specific parts of your data visualizations
- **Filtering data with highlights**  
    - Once you’ve created a visual, click and drag your mouse over the specific portion you want to highlight  
    - Once you let go, you will have the option to Keep Only or Exclude the data  
    - Open the Data pane on the sidebar. Then, you can drag-and-drop a field into the filters card just to the left of the pane  
- **Filtering data with filters**  
    - Open the Data pane on the left-hand side  
    - Drag-and-drop a field you want to filter on and add it to the Filters card  
    - Fill out in the modal how you would like your visuals to be filtered on the data  
- **Aggregating data**  
    - Right-click on a measure field in the Data pane  
    - Go down to Default properties, Aggregation, and select the aggregation you would like to use  
- **Changing colors**  
    - Create a visualization by dragging fields into the Rows and Columns section at the top of the screen  
    - Drag dimensions into the Marks field, specifically into the Color square  
    - To change from the default colors, go to the upper-right corner of the color legend and select Edit Colors. This will bring up a dialog that allows you to select a different palette  
- **Changing fonts**  
    - In the Format menu on the top ribbon, press on Select Workbook. This will replace the Data pane and allow you to make formatting decisions for the Workbook  
    - From here, select the font, font size, and color  

## How to Create Dashboards in Tableau
1. Launch Tableau  
2. In the Connect section under To A File, press on your desired file type  
3. Select your file  
4. Click the New Sheet at the bottom to create a new sheet  
5. Create a visualization in the sheet by following the steps in the previous sections of this cheat sheet  
6. Repeat steps 4 and 5 until you have created all the visualizations you want to include in your dashboard  
7. Click the New Dashboard at the bottom of the screen  
8. On the left-hand side, you will see all your created sheets. Drag sheets into the dashboard  
9. Adjust the layout of your sheets by dragging and dropping your visualizations  

## How to Create Stories in Tableau  
1. Click the New Story at the bottom of the screen  
2. Change the size of the story to the desired size in the bottom left-hand corner of the screen under Size  
3. Edit the title of the story by renaming the story. To do this, right-click on the story sheet at the bottom and press Rename  
4. A story is made of story points, which lets you cycle through different visualizations and dashboards  
5. To begin adding to the story, add a story point from the left-hand side. You can add a blank story point  
6. To add a summary text to the story, click Add a caption and summarize the story point  
7. Add as many story points as you would like to finalize your data story  
