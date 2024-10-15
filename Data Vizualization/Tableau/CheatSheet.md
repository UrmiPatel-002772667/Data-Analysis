Tableau Cheat Sheet
Basic Level
1. Getting Started with Tableau
	• Installation: Download Tableau Desktop from the Tableau website.
	• Interface Overview: Data Pane: Manage and view data sources. Shelves: Place fields to build views (Rows, Columns, Filters, etc.). Canvas: Visual area for creating charts. Marks Card: Customize data appearance.
2. Basic Tools and Features
	• Connecting to Data: 
Data → Connect to a Data Source → Select from Files, Databases, or Servers
	• Creating a Bar Chart:
Drag Dimension to Columns → Drag Measure to Rows → Select Bar Chart from Show Me
	• Using Filters:
Drag a Dimension to Filters Shelf → Configure Filter Criteria
	• Sorting Data:
Click on the Sort Icon in the Axis or Field Header
	• Basic Formatting:
Format → Font, Borders, or Shading to Customize the Visualization Appearance
3. Basic Visualization Types
	• Line Chart:
Drag Date to Columns → Measure to Rows → Select Line Chart from Show Me
	• Pie Chart:
Drag Dimension to Rows → Measure to Size → Select Pie Chart from Show Me
	• Map:
Drag Geographic Dimension (e.g., Country) to Rows → Select Map from Show Me
Basic Level Interview Questions:
	1. Q: What is Tableau, and how does it help data analysts? A: Tableau is a data visualization tool that helps data analysts by transforming complex data sets into visual insights through interactive charts and dashboards.
	2. Q: How do you create a bar chart in Tableau? A: Drag a Dimension field to Columns and a Measure field to Rows, then select the Bar Chart type from the Show Me panel.
	3. Q: What is the difference between a filter and a highlighter in Tableau? A: A filter removes data from the view based on specified criteria, while a highlighter emphasizes specific data without removing any.
Resources:
	• Tableau Public
	• Tableau Learning Resources
Intermediate Level
1. Intermediate Tools and Features
	• Creating Calculated Fields:
Analysis → Create Calculated Field → Define Calculation (e.g., [Sales] * 0.1 for a 10% discount)
	• Using Parameters:
Create → Parameter → Define Parameter → Use Parameter in Calculated Fields or Filters
	• Data Blending:
Drag a Secondary Data Source Field to the Canvas → Tableau Automatically Blends Data Based on Common Fields
2. Intermediate Visualization Types
	• Dual-Axis Charts:
Drag a Measure to Rows → Drag a Second Measure to Rows and Drop on Existing Axis → Select Dual-Axis
	• Heat Maps:
Drag Dimensions to Rows and Columns → Measure to Color → Select Heat Map from Show Me
	• Tree Maps:
Drag Dimension to Rows → Measure to Size → Select Tree Map from Show Me
3. Data Preparation and Transformation
	• Using Joins:
Data → Edit Relationships → Define Join Conditions (Inner, Left, Right, Full)
	• Pivoting Data:
Select Columns to Pivot → Right Click → Pivot
	• Union Data:
Drag a Second Data Source → Drop into Union Window → Define Union Conditions
4. Dashboard and Story Creation
	• Creating Dashboards:
Dashboard → New Dashboard → Drag Sheets onto Dashboard → Arrange and Format
	• Creating Stories:
Story → New Story → Add Sheets or Dashboards to Story Points
Intermediate Level Interview Questions:
	1. Q: How do you create a calculated field in Tableau? A: Go to Analysis → Create Calculated Field, then define the calculation you need using the fields and functions available.
	2. Q: What are parameters in Tableau, and how are they used? A: Parameters are dynamic values that can be used to replace constant values in calculations, filters, or reference lines, allowing users to interactively adjust the analysis.
	3. Q: Explain the difference between data blending and joins in Tableau. A: Data blending is used to combine data from different sources that may not share common keys, while joins combine tables based on shared fields directly in the data source.
Resources:
	• Tableau Certification
	• Tableau Training Videos
Advanced Level
1. Advanced Tools and Functions
	• Level of Detail (LOD) Expressions:
{FIXED [Dimension] : SUM([Measure])} for fixed calculations
	• Table Calculations:
Analysis → Table Calculation → Select Calculation Type (e.g., Running Total)
	• Data Extracts:
Data → Extract Data → Configure Extract Options for Performance Improvement
2. Advanced Visualization Techniques
	• Advanced Mapping:
Use Spatial Data Files (e.g., Shapefiles) → Map Layers for Detailed Geospatial Analysis
	• Cluster Analysis:
Drag Fields to Detail → Select Analysis → Cluster to Identify Patterns
	• Forecasting:
Drag Date to Columns → Measure to Rows → Analytics Pane → Drag Forecast to View
3. Performance Optimization
	• Optimizing Extracts:
Limit Data → Aggregate Data for Extracts → Optimize Extract Options
	• Using Context Filters:
Drag Filter to Context → Context Filters are Applied First for Improved Performance
	• Reducing Dashboard Load Time:
Minimize Complex Calculations → Use Extracts → Optimize Queries
4. Integration and Collaboration
	• Tableau Server and Tableau Online:
Publish Workbooks → Share Dashboards → Collaborate on Insights
	• Connecting to APIs:
Use Web Data Connectors for Integrating Data from Online APIs
	• Embedding Dashboards:
Embed Tableau Dashboards into Websites or Applications Using Embed Code
Advanced Level Interview Questions:
	1. Q: What are Level of Detail (LOD) expressions in Tableau? A: LOD expressions allow you to perform aggregations at the desired level of detail in your data, such as computing a sum or average at a different granularity than the visualization.
	2. Q: How do you improve the performance of a Tableau dashboard? A: Improve performance by optimizing data extracts, using context filters, reducing the complexity of calculations, and optimizing queries.
	3. Q: How do you connect Tableau to an API? A: Use Web Data Connectors (WDCs) to connect Tableau to online APIs and bring external data into Tableau for analysis.
