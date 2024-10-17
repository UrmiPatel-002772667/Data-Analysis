# Data Vizualization
Data visualization is one of the most widely-used data skills—and is often called the "gateway drug" into data science. In this data visualization cheat sheet, you'll learn about the most common data visualizations to employ, when to use them, and their most common use-cases. 

## Capture a Trend
1. **Line chart**: The most straightforward way to capture how a numeric variable is changing over time  
![image](https://github.com/user-attachments/assets/a4a5d51b-d8c3-43ab-8192-aec911bb5851)

2. **Multi-line chart**: Captures multiple numeric variables over time. It can include multiple axes allowing comparison of different units and scale ranges  
![image](https://github.com/user-attachments/assets/b07d90cb-87bb-4906-8261-fa3872b88397)

3. **Area chart**: Shows how a numeric value progresses by shading the area between line and the x-axis  
![image](https://github.com/user-attachments/assets/80c6b6e6-9f53-42c1-8862-b833ddad9fe2)

4. **Stacked area chart:** Most commonly used variation of area charts, the best use is to track the breakdown of a numeric value by subgroups  
![image](https://github.com/user-attachments/assets/6327403b-58f4-4308-b3fb-9ff72d690cbf)

5. **Spline chart**: Smoothened version of a line chart. It differs in that data points are connected with smooth curves to account for missing values, as opposed to straight lines  
![image](https://github.com/user-attachments/assets/e56bf87b-3de7-4613-9613-7e257941c50d)

## Visualize Relationships
1. **Bar chart**: One of the easiest charts to read which helps in quick comparison of categorical data. One axis contains categories and the other axis represents values.  
![image](https://github.com/user-attachments/assets/b764385d-901a-43af-b5e9-ae26e7178c71)

2. **Column chart**: Also known as a vertical bar chart, where the categories are placed on the x-axis. These are preferred over bar charts for short labels, date ranges, or negatives in values.  
![image](https://github.com/user-attachments/assets/a8d13f93-dfff-47a0-bfae-2cd194cd8804)

3. **Scatter plot**: Most commonly used chart when observing the relationship between two variables. It is especially useful for quickly surfacing potential correlations between data points.  
![image](https://github.com/user-attachments/assets/11bd38e3-a84f-404b-9110-767bdbb44be7)

4. **Connected scatterplot**: A hybrid between a scatter plot and a line plot, the scatter dots are connected with a line   
![image](https://github.com/user-attachments/assets/42196863-a58c-4e82-aa3f-1f0e3840a983)

5. **Bubble charts**: Often used to visualize data points with 3 dimensions, namely visualized on the x-axis, y-axis, and with the size of the bubble. It tries to show relations between data points using location and size  
![image](https://github.com/user-attachments/assets/84feb9dd-09c0-498c-a621-8a284ebeecd4)

6. **Word cloud chart**: A convenient visualization for visualizing the most prevalent words that appear in a text. This can be used to visualize the relationship between different words that appear together or capture a trend on the most commonly prevalent words.  
![image](https://github.com/user-attachments/assets/8f718231-21f5-46bc-b412-0807c21bd18c)

## Part-to-whole Charts
These data visualizations allow you to show sub-categories within a large category
1. **Pie chart**: One of the most common ways to show part to whole data. It is also commonly used with percentages  
![image](https://github.com/user-attachments/assets/55f02249-393b-45ee-b415-b1a2b87b1488)

2. **Donut pie chart**: The donut pie chart is a variant of the pie chart, the difference being it has a hole in the center for readability
![image](https://github.com/user-attachments/assets/2bd3b467-a1ca-4199-a674-da95b780530a)

3. **Heat maps**: Heatmaps are two-dimensional charts that use color shading to represent data trends
![image](https://github.com/user-attachments/assets/3d675c2d-6f14-496b-b8dc-955f00e8a87b)

4. **Stacked column chart**: Best to compare subcategories within categorical data. Can also be used to compare percentages
![image](https://github.com/user-attachments/assets/07d8f06a-b8ca-49e7-81a7-df863f1e7fc7)

5. **Treemap charts**: 2D rectangles whose size is proportional to the value being measured and can be used to display hierarchically structured data
![image](https://github.com/user-attachments/assets/4e8c0ec7-1581-4ea9-b665-43e81a8a09fc)


## Visualize a Single Value
These data visualizations allow you to visualize a single data point
1. **Card**: Cards are great for showing and tracking KPIs in dashboards or presentations  
![image](https://github.com/user-attachments/assets/8b6dd20d-6fbd-45b1-9361-37a604d46eb2)

2. **Table chart**: Best to be used on small datasets, it displays tabular data in a table  
![image](https://github.com/user-attachments/assets/44c19fd8-50fa-4fa0-8aa8-9f47f6b3a9e3)

3. **Gauge chart**: This chart is often used in executive dashboard reports to show relevant KPIs  
![image](https://github.com/user-attachments/assets/3da0adaf-591d-4234-8134-acb183c21c0a)

## Capture Distributions
These data visualizations allow you to visualize the distribution of a variable
1. **Histograms**: Shows the distribution of a variable. It converts numerical data into bins as columns. The x-axis shows the range, and the y-axis represents the frequency  
![image](https://github.com/user-attachments/assets/c9d85a93-7844-4bfe-bd62-71537ed9a7ad)

2. **Box plot**: Shows the distribution of a variable using 5 key summary statistics—minimum, first quartile, median, third quartile, and maximum  
![image](https://github.com/user-attachments/assets/edf0548b-a592-4606-8b44-b4a9f5a4f8a3)

3. **Violin plot**: A variation of the box plot. It also shows the full distribution of the data alongside summary statistics  
![image](https://github.com/user-attachments/assets/3a268d85-45d3-4342-8b02-d4f453a9d58a)

4. **Density plot**: Visualizes a distribution by using smoothing to allow smoother distributions and better capture the distribution shape of the data  
![image](https://github.com/user-attachments/assets/a9ddaa44-263c-41b9-8cda-82e7d311af6b)

## Visualize a flow
These data visualizations allow you to visualize how data points flow into eachother
1. **Sankey chart**: Useful for representing flows in systems. This flow can be any measurable quantity  
![image](https://github.com/user-attachments/assets/3a91e2c7-1e53-45ac-b4c2-1cb6c06766d5)

2. **Chord chart**: Useful for presenting weighted relationships or flows between nodes. Especially useful for highlighting the dominant or important flows  
![image](https://github.com/user-attachments/assets/68ee8dcf-8fae-4e7b-8ab7-849131f4d66f)

3. **Network chart**: Similar to a graph, it consists of nodes and interconnected edges. It illustrates how different items have relationships with each other  
![image](https://github.com/user-attachments/assets/126ddb91-7929-4383-8c75-f8a35be320d2)

