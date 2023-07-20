<h1>dbt - Countries' Happiness Rankings</h1>

<h2>dbt:</h2>

This is my first time using dbt. This is a quick summary of MY understanding of dbt.

dbt is a transformation tool used in the ELT (or ETL) process. ELT is the process of extracting raw data from the source, loading it to a staging area to perform transfomations on it in order to run analysis on the data. dbt is a tool that sits on top (or as dbt says it "runs against your DWH") of your data warehouse, meaning it does not store any data. Instead, dbt acts as a staging area where data analyts, data engineers, and the like can perform transformations on the data. 

dbt Cloud is the "hosted environment that streamlines development" with an integrated developnment core (IDE). This is where the coding, querying, and pretty much all the transformations are actually executed. You can preview your code before you run it against your platform, compile the code and see the compiled code (what is actually happening behind the scenes when you are using dbt's unique functions) and data lineage. Focusing on data lineage for a second, dbt features a DAG, which is a directed acyclic graph. This is a visual representation of the data lineage from source to use case. 

dbt also has specific functions that can be used in the IDE. Some of the ones that I used in this project are:

- ref function: pull information form a model that already been materialized and is used to create dependencies (enables modularity)
- dbt run: runs you models in DAG order to ensure that they are compiled 
- dbt test: runs in DAG order to ensure that your tests are passed (dbt run has to be done first)
- dbt build: dbt run and dbt build combined but the code is compiled and tested in layers (and in DAG order) 

<h2>Description:</h2>

In this project, I was more focused on uderstanding the different capiblities of dbt. There was no intent or reason for choosing this dataset other than it features a variety of data types and is smaller in size (and therefore, is more managable). The dataset captures the happiness rankings of countries based on various factors. Some of these factors include GDP, freedom, the perception of corruption, and healthy life expectancy. 

<br /><a>
[Link to Dataset](https://www.kaggle.com/datasets/sougatapramanick/happiness-index-2018-2019)</a>

<h2>Languages and Utilities Used:</h2>

- <b>Google Cloud Platform's Big Query</b> 
- <b>dbt</b>
- <b>Excel</b>

<h2>The Scope:</h2>

<a> In this project, I am trying to learn and understand the different transformation capabilities of dbt. I followed along with dbt Learn's courses and training programs which are available for free on their website. </a>

<h2>The Process:</h2>
<a> After completing the first few lessons, I created my own dbt Cloud account and a Google Cloud Plaform (GCP) account. Both of these services are free and cloud-based. GCP Big Query is a Google data warehousing service. I loaded the raw data that I found on Kaggle into the data warehouse. From there, I connected Big Query to dbt and was able to access and transform my data through dbt. 

Some of what I did in dbt included:
- modeling: these models included staging models, intermediate models, and final models
- sources: putting all of the raw sources into a .yml file to give it an alias to limit the number of changes that would be needed if there was a change. this is also useful in showing lineage
-  tests: to improve data reliability. tests can be run in development and be scheduled to run in prod. there are singular tests and generic tests
- documentation: this includes the DAG, descriptions, metadata, docblocks, and generating documentation
- seed: a csv file that is loaded into the data warehouse as a table. seeds are not dynamic and so should be used to store static data
</a>

<!--


<h2>Final Presentation:</h2>
<a>
  After performing our analysis, we presented the relevant insights and recommendations into a presentation.
</a>
<br />
<a> 
   
  [You can downlad the final presentation here](https://github.com/alayasiri/movies-buan/blob/4e1362a169d5acc9f1ccdd15b999c89ba7e8dfef/movie_presentation.pdf).
</a>
t
