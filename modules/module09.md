# Module 09 - Data Quality

[< Previous Module](../modules/module08.md) - **[Home](../README.md)** - [Next Module >](../modules/module10.md)

**⏰ Duration:** 60 minutes

## :loudspeaker: Introduction

 Data quality in Microsoft Purview Unified Catalog empowers governance domain and data owners to assess and oversee the quality of their data ecosystem, facilitating targeted actions for improvement. In today's AI-driven landscape, the reliability of data directly impacts the accuracy of AI-driven insights and recommendations. Without trustworthy data, there's a risk of eroding trust in AI systems and hindering their adoption.

 By applying data quality, organizations can effectively measure, monitor, and enhance the quality of their data assets, bolstering the reliability of AI-driven insights and fostering confidence in AI-based decision-making processes.

 Data Quality falls under **Health Management** section of Purview Unified Catalog

## :thinking: Prerequisites

* An [Azure account](https://azure.microsoft.com/free/) with an active subscription.
* A Microsoft Purview account (see [module 02](../modules/module02.md)).
* The source data assets have been scanned into the Purview Data Map (see [module 03 Managing Data Sources](../modules/module03.md)).
* The relevant Governance domains have been defined (see [module 04](../modules/module04.md)).
* Data products have been created, linked to the source data assets (see [module 05](../modules/module05.md)).

## :dart: Objectives

* Understand the importance of Data quality, its lifecycle, setting up data quality rules, running data quality scan, review scan results and interpret data quality score

## :bookmark_tabs: Table of Contents

| #  | Section | Role |
| --- | --- | --- |
| 1 | [Data Quality Lifecycle](#1-data-quality-lifecycle) | Data Quality Steward |
| 2 | [Data Source Connection Configuration](#2-data-source-connection-configuration) | Read Access to Data |
| 3 | [Data Profiling](#3-data-profiling) | Data Quality Steward |
| 4 | [Data Quality Rules](#4-data-quality-rules) | Data Quality Steward |
| 5 | [Data Quality Scanning](#5-data-quality-scanning) | Data Quality Steward |
| 6 | [Data Quality Job Monitoring](#6-data-quality-job-monitoring) | Data Quality Steward |
| 7 | [Data Quality Scoring](#7-data-quality-scoring) | Data Quality Steward |
| 8 | [Data Quality for Critical Data Elements (CDE)](#8-data-quality-for-critical-data-elements) | Data Quality Steward |
| 9 | [Data Quality Alerts](#9-data-quality-alerts) | Data Quality Steward |
| 10 | [Data Quality Actions](#10-data-quality-actions) | Data Quality Steward |

## 1 Data Quality lifecycle

Data quality life cycle consistes of the following steps:

1. Assign users(s) data quality steward permissions in Unified Catalog to use all data quality features. Please refer this <https://learn.microsoft.com/en-us/purview/data-governance-roles-permissions#how-to-assign-catalog-level-roles/>

2. Register and scan a data source in your Microsoft Purview Data Map. This step must have been performed earlier. If not, please follow earlier lab

3. Add your data asset to a data product. This step must have been performed earlier. If not, please follow earlier lab
4. Set up a data source connection to prepare your source for data quality assessment. Please follow this [Data Source Connection Configuration](#2-data-source-connection-configuration)
5. Configure and run data profiling for an asset in your data source -  [Data Profiling](#3-data-profiling)
6. When profiling is complete, browse the results for each column in the data asset to understand your data's current structure and state.
7. Set up data quality rules based on the profiling results, and apply them to your data asset. [Data Quality Rules](#4-data-quality-rules)
8. Configure and run a data quality scan on a data product to assess the quality of all supported assets in the data product. [Data Quality Scanning](#5-data-quality-scanning). Monitor [Data Quality Job Monitoring](#6-data-quality-Job-monitoring
9. Review your scan results to evaluate your data product's current data quality.[Data Quality Scoring](#7-data-quality-scoring)

10. Repeat steps 5-8 periodically over your data asset's life cycle to ensure it's maintaining quality.

11. Continually monitor your data quality

12. Review data quality actions to identify and resolve problems - [Data Quality Actions](#10-data-quality-actions)

13. Set data quality notifications to alert you to quality issues.[Data Quality Alerts](#9-data-quality-alerts)

## 2. Data Source Connection Configuration

Data source connections set up the authentication needed to profile your data for statistical snapshot, or scan your data for data quality anomalies and scoring.j
To create connections to data assets, your users must be in the data quality steward role.
You need at least read access to the data source for which you are setting up the connection.

1. In Unified Catalog, select Health management, then select Data quality.
2. Select a governance domain from the list.
3. From the Manage dropdown list, select Connections to open connections page.
   "Screenshot to be added here"
4. Select New to create a new connection for the data products and data assets of your governance domain.
   "Screenshot to be added here"
5. In the right panel, enter the following information:
Display name
Description
6. Select Source type, and select one of the data sources.
7. Depending on the data source, enter the access details.
8. Now that the connection is created, to be able to scan data sources, your Microsoft Purview managed identity will need permissions on your data sources. To scan an Azure SQL database, assign db_datareader role to the Microsoft Purview Managed Identity. You can [follow the steps on the source page to assign managed identity permissions](https://learn.microsoft.com/en-us/purview/register-scan-azure-sql-database)

If the test connection is successful, then Submit the connection configuration to complete the connection setup.

## 3. Data Profiling

Data profiling is the process of examining the data available in different data sources and collecting statistics and information about this data. Data profiling helps to assess the quality level of the data according to defined set of goals. If data is of a poor quality, or managed in structures that can't be integrated to meet the needs of the enterprise, business processes and decision-making suffer. Data profiling allows you to understand the trustworthiness and quality of your data, which is a prerequisite for making data-driven decisions that boost revenue and foster growth.

## Prerequisites

   1. To run and schedule data quality assessment scans, your users must be in the data quality steward role.
   2. Currently, the Microsoft Purview account can be set to allow public access or managed vNet access so data quality scans can run.

## Steps to configure data profiling Job

1. Configure a data source connection to the assets you're scanning for data quality if you haven't alrady done so.
2. From Microsoft Purview Unified Catalog, select Health Management, then select Data quality.
3. Select a governance domain from the list.
4. Select a data product to profile a data asset linked to that product.
5. Select a data asset to navigate into data quality Overview page for profiling.
6. Select Profile button to run profiling job for the selected data asset.
7. The AI recommendation engine suggests potentially important columns to run data profiling against. You can deselect recommended columns and/or select more columns to be profiled.
8. Once you've selected the relevant columns, select Run Profile.
9. While the job is running, you can track its progress from the data quality monitoring page in the governance domain.
10. When the job is complete, select the Profile tab from left menu of the asset's data quality page to list browse the profiling result and statistical snapshot. There could be several profile result pages depending on how many columns your data assets have.
11. Browse the profiling results and statistical measures for each column.

## 4. Data Quality Rules

Data quality is the measurement of the integrity of data in an organization and is assessed using data quality scores. Scores generated based on the assessment of the data against rules that are defined in Microsoft Purview Unified Catalog.

Data quality rules are essential guidelines that organizations establish to ensure the accuracy, consistency, and completeness of their data. These rules help maintain data integrity and reliability.

Here are some key aspects of data quality rules:

**Accuracy** - Data should accurately represent real-world entities. Context matters! For example, if you’re storing customer addresses, ensure they match the actual locations.

**Completeness** - The objective of this rule is to identify the empty, null, or missing data. This rule validates that all values are present (though not necessarily correct).

**Conformity** - This rule ensures that the data follows data formatting standards such as representation of dates, addresses, and allowed values.

**Consistency** - This rule checks that different values of the same record are in conformity with a given rule and there are no contradictions. Data consistency ensures that the same information is represented uniformly across different records. For instance, if you have a product catalog, consistent product names and descriptions are crucial.

**Timeliness** - This rule aims to ensure that the data is accessible in as short a time as possible. It ensures that the data is up to date.

**Uniqueness** - This rule checks that values aren't duplicated, for example, if there's supposed to be only one record per customer, then there aren't multiple records for the same customer. Each customer, product, or transaction should have a unique identifier.

## Required roles

1. To create and manage data quality rules, your users must be in the data quality steward role.
2. To view existing quality rules, your users must be in the data quality reader role.

## View existing data quality rules

1. From Microsoft Purview Unified Catalog, select the Health Management menu and Data quality submenu.
2. In the data quality submenu, select a governance domain.
3. Select a data product.
   *Screenshot to be added here*
4. Select a data asset from the asset list of the selected data product.
   *Screenshot to be added here*
5. Select the Rules menu tab to see the existing rules applied to the asset.
   *Screenshot to be added here*
6. Select a rule to browse the performance history of the applied rule to the selected data asset.
   *Screenshot to be added here*

**Available data quality rules**
Microsoft Purview Data Quality enables configuration of the below rules, these are out of the box rules that offer low-code to no-code way to measure the quality of your data.

|Rule  | Definition|
| --- | --- |
|[Freshness](#freshness)|Confirms that all values are up to date.|
|[Unique values](#unique-values)|Confirms that the values in a column are unique.|
|[String format match](#string-format-match)|Confirms that the values in a column match a specific format or other criteria.|
|[Data type match](#data-type-match)|Confirms that the values in a column match their data type requirements.|
|[Duplicate rows](#duplicate-rows)|Checks for duplicate rows with the same values across two or more columns.|
|[Empty/blank fields](#empty-blank-fields)|Looks for blank and empty fields in a column where there should be values.|
|[Table lookup](#table-lookup)|Confirms that a value in one table can be found in the specific column of another table.|
|[Custom](#custom)|Create a custom rule with the visual expression builder.|
|[AI assisted autogenerated rules](#ai-assisted-autogenerated-rules)|AI-assisted automated rule generation for data quality measurement involves using artificial intelligence (AI) techniques to automatically create rules for assessing and improving the quality of data.|

## Freshness

The purpose of the freshness rule is to determine if the asset has been updated within the expected time. Microsoft Purview currently supports checking freshness by looking at last modified dates.

**Note**: Score for the freshness rule is either 100 (it passed) or 0 (it failed). Freshness rule is not supported for Snowflake, Azure Databricks UC, Google BigQuery, Synapes, and Azure SQL.

Screenshot to be added here

## Unique values

The Unique values rule states that all the values in the specified column must be unique. All values that are unique 'pass' and those that don't are treated as fail. If the Empty/blank fields rule isn't defined on the column, then null/empty values will be ignored for the purposes of this rule.
*Screenshot to be added here*

## String format match

The Format match rule checks if all the values in the column are valid. If the Empty/blank fields rule isn't defined on a column, then null/empty values will be ignored for the purposes of this rule.

This rule can validate each value in the column using three different approaches:

**Enumeration** – This is a comma separated list of values. If the value being evaluated can't be compared to one of the listed values then it fails the check. Commas and backslashes can be escaped by using a backslash: \ . So a \, b, c contains two values the first is a , b and the second is c.
*Screenshot to be added here*
**Like Pattern** - like(<'string> : string, "<"pattern match> : string) => boolean

The pattern is a string that is matched literally. The exceptions are the following special symbols: _ matches any one character in the input (similar to . in posix regular expressions) % matches zero or more characters in the input (similar to .* in posix regular expressions). The escape character is ''. If an escape character precedes a special symbol or another escape character, the following character is matched literally. It's invalid to escape any other character.

like('icecream', 'ice%') -> true
*Screenshot to be added here*

**Regular Expression** – regexMatch("<string"> : string, "<"regex to match>" : string) => boolean

Checks if the string matches the given regex pattern. Use "<regex">(back quote) to match a string without escaping.

regexMatch('200.50', '(\\\d+).(\\\d+)') -> true
regexMatch('200.50', `(\d+).(\d+)`) -> true

Screenshot to be added here

## Data type match

The Data type match rule specifies what data type the associated column is expected to contain. Since the rule engine has to run across many different data sources, it can't use native types like BIGINT or VARCHAR. Instead it has its own type system that it translates the native types into. This rule tells the quality scan engine which of its built-in types the native type should be translated to. The data type system is taken from the Azure Data Flow type system used in Azure Data Factory.

During a quality scan, all, the native types will be tested against the data type match type and if it isn't possible to translate the native type into the data type match type that row will be treated as being in error.

Screenshot to be added here

## Duplicate rows

The Duplicate rows rule checks if the combination of the values in the column are unique for every row in the table.

In the example below, the expectation is that the concatenation of _CompanyName, CustomerID, EmailAddress, FirstName, and LastName will produce a value that is unique for all the rows in the table.

Each asset can have zero or one instance of this rule.
*Screenshot to be added here*

## Empty blank fields

The Empty/blank fields rule asserts that the identified columns shouldn't contain any null values and in the specific case of strings, no empty or whitespace only values either. During a quality scan, any value in this column that isn't null will be treated as correct. This rule will affect other rules such as the Unique values or Format match rules. If this rule isn't defined on a column, then those rules when run on that column will automatically ignore any null values. If this rule is defined on a column, then those rules will examine null/empty values on that column and consider them for score purposes.

Screenshot to be added here

## Table lookup

The Table Lookup rule will examine each value in the column that the rule is defined on and compare it to a reference table. For example, primary table has a column called "location" that contains cities, states and zip codes in the form "city, state zip". There's a reference table, called citystate, that contains all the legal combinations of cities, states and zip codes supported in the United States. The goal is to compare all the locations in the current column against that reference list to make sure that only legal combinations are being used.

To do this, we first type in the "citystatezip's name into the search assets dialog. We then select the desired asset and then the column we want to compare against.
**Note:** The reference table or data asset must belong to the same governance domain. Comparing a data asset across different governance domains isn't allowed.
*Screenshot to be added here*

## Custom

The Custom rule enables specifying rules that try to validate rows based on one or more values in that row. The custom rule has two parts:

1. The first part is the filter expression which is optional and is activated by selecting the check box by "Use filter expression". This is an expression that returns a Boolean value. The filter expression will be applied to a row and if it returns true, then that row will be considered for the rule. If the filter expression returns false for that row, then it means that row will be ignored for the purposes of this rule. The default behavior of the filter expression is to pass all rows - so if no filter expression is specified, and one isn't required, then all rows will be considered.
2. The second part is the row expression. This is a Boolean expression applied to each row that gets approved by the filter expression. If this expression returns true then the row passes, if false, then it's marked as a fail.

Screenshot to be added here

## AI assisted autogenerated rules

AI-assisted automated rule generation for data quality measurement involves using artificial intelligence (AI) techniques to automatically create rules for assessing and improving the quality of data.
Auto generated rules are content specific. Most of the common rules will be generated automatically so that users don't need to put that much effort to create custom rules.

To browse and apply auto generated rules:

1. Select Suggest rules on the rules page.

2. Browse the list suggested rules.
Screenshot to be added here

3. Select rules from the suggested rule list to apply to the data asset.

## 5. Data Quality Scanning

Data quality scans review your data assets based on their applied data quality rules and produce a score. Your data stewards can use that score to assess the data health and address any issues that might be lowering the quality of your data.

## Prerequisites

1. To run and schedule data quality assessment scans, your users must be in the data quality steward role.
2. Currently, the Microsoft Purview account can be set to allow public access or managed vNet access so that data quality scans can run.

## Run a data quality scan

1. Configure a data source connection to the assets you're scanning for data quality if you haven't alrady done so.
2. From Microsoft Purview Unified Catalog, select Health Management, then select Data quality.
3. Select a governance domain from the list.
4. Select a data product to assess the data quality of the data assets linked to that product.
5. Select the name of a data asset, which takes you to the data quality Overview page.
6. You can browse the existing data quality rules and add new rules by selecting Rules. You can browse schema of the data asset by selecting Schema. You can toggle on or off the rules already added.
7. Run the quality scan by selecting Run quality scan on the overview page.
8. While the scan is running, you can track its progress from the data [Data Quality Monitoring](#6-data-quality-job-monitoring) page

**Schedule data quality scans**
Although data quality scans can be run on an ad-hoc basis by selecting the Run quality scan button, in production scenarios it's likely that the source data is being constantly updated and, so we want to make sure we're regularly monitoring its data quality in order to detect any issues. To enable us to manage regularly updating quality scans we can automate the scanning process.

1. From Microsoft Purview Unified Catalog, select Health Management, then select Data quality.
2. Select a governance domain from the list.
3. Select Manage, then select Scheduled scans.
4. Fill out the form on the Create scheduled scan page. Add a name and description for the source you're setting up the schedule.
5. Select Continue.
6. On the Scope tab, select individual data product and assets or all data products and data assets of the entire governance domain.
7. Select Continue.
8. Set a schedule based on your preferences and select Continue.
9. On the Review tab, select Save (or Save and run to test immediately) to complete scheduling the data quality assessment scan.

You can monitor scheduled scans on the [Data Quality Monitoring](#6-data-quality-job-monitoring) page under the Scans tab.

**Delete previous data quality scans and history**
When you remove a data asset from a data product, if that data asset has a data quality score, you'll first need to delete the data quality score, then remove the data asset from the data product.

When you delete data quality history data, it removes the profile history, the data quality scan history, and data quality rules, but data quality actions won't be deleted.

Follow the steps below to delete previous data quality scans:

1. From Microsoft Purview Unified Catalog, select Health Management menu and Data quality submenu.
2. Select a governance domain from the list.
3. Select the ellipsis (...) at the top right of the page.
4. Select Delete data quality data to delete the history of data quality runs.

## 6. Data Quality Job Monitoring

Data quality job monitoring enables data quality stewards to see the progress of data profiling, data quality rule generation, and data quality scanning jobs. Both manually configured and scheduled jobs' progress can be viewed from the data quality monitoring page.

## Browse data quality job status

1. From Microsoft Purview Unified Catalog, select the Health Management menu and Data quality submenu.
2. In the data quality submenu, select a governance domain.
3. Select the Manage button, and then the Monitoring page from the menu.

Screenshot to be added here

4. The Activities tab is selected as default and you can see a summary of all activities. Use the filters to scope your view by submit time, status, activity type, scan type, or scan name. Select the activity for more details.

Screenshot to be added here

5. You can switch between governance domains from this menu, using the governance domain tab next to the page title.
6. Select the Scan tab to see the progress of scheduled scans.

Screenshot to be added here

## 7. Data Quality Scoring

After you create data quality rules and run a data quality scan, your data assets receive a data quality score based on results from your rules. This article covers how scores are calculated to give you a deeper understanding of your data quality results, and help you develop action items to improve your data's integrity.

## Understand data quality scores

The goal of data quality rules is to provide a description of the state of the data. In particular, it shows how far away the data is from the ideal state described by the rules. Each rule, when it runs, produces a score that describes how close the data is to its desired state. Most rules are very straight forward; they divide the total number of rows that have passed the assessment by the total number of rows to arrive at the score.

The formula used to calculate the data quality score for a rule against data in a column is:

[(total number of passed records)/(passed records + failed records + miscast records + empty records + ignored records)]

Numerator = number of passed records
Denominator = total number of records (number of passed records + number of failed records + number of miscast records + number of empty + number of ignored records)
Passed - number of records that passed an applied rule
Unevaluable - the columns required to evaluate this rule aren't evaluable
Failed - number of records that failed an applied rule
Miscast - the data type of the asset and the type that customer listed it as not matching. It can't be converted to the expressed type.
Empty - null or blank records
Ignored - rows didn't participate in the rule evaluation. Customers can express rows to ignore. Like ignore all rows that have email = "n/a" or Ignore all rows where departmentCode = 'test' or 'internal'
Microsoft Purview Data Quality then gives a sense for the state of each column by generating a column score. This score is the average of the all the scores of the rules on that column.

Screenshot to be added here

Once the column scores are calculated, the formula used to calculate average percentage data quality score for data products and governance domains is:

[(Percentage 1 + Percentage 2) / (Sample size 1 + Sample size 2)] x 100

(The score is multiplied by 100 to make the scores more readable.)

## Example calculation

Let's imagine there's a column that doesn't have the 'Empty/blank fields' rule defined on it. This implies that null values are allowed for this column. So certain rules, like the unique values rule, will filter out null values in that case.

For example: If the asset has 10,000 rows in a table but 3,000 were null and 500 weren't unique then the score would be: ((10000 - 3000 - 500)/(10000 - 3000) )* 100 = 93

The null rows are ignored when evaluating the data and determining a score.

## Specific rule scores

For custom rules there's a similar capability like you might see for the unique values rule, but in this case the filter isn't on nulls but rather the filter expression.

Some rules, like the freshness rule, are either pass or fail. So their scores will be either 0 or 100. And the freshness rule is applied in the data asset level, not in the columns level.

## Rule details and history

You can view the details and history of rule scores by selecting a rule. Selecting a specific rule name and navigating to the rule history tab, you see the trend of the different scan runs for the particular rule.

Rule Details provides information on the number of rows passed, failed, and ignored for the various runs for the particular rule. Rules that are in draft state (OFF state) won't have their scores contribute to the global score. Rules in a draft state won't be run at all during quality scans and so won't have scores.

Screenshot to be added here

Columns and rules have a many-to-many relationship, the same rule can be applied to many columns, and many rules can be applied to the same column. You can view the trend pattern of each rule by viewing the Trend line in the Schema pane.

Screenshot to be added here

Asset level data quality score trends are available for the last 50 runs. This quality score trend helps data quality stewards to monitor data quality trend and fluctuations month over month. Data quality can also trigger alerts for every data quality scan if the quality score doesn't meet the threshold or business expectation.

Screenshot to be added here

Global score is the average of all the production rule defined on the asset. The asset level global score is also rolled up to the data product level and governance domain level. The global score is intended to be the official definition of the state of the data asset, data product, and governance domain in context of quality of data.

Screenshot to be added here

A summary report is created for data quality dimension. This report contains data quality score for each data quality dimension. Global score for the governance domain is published also in this report. You can browse the quality score for each governance domain, data product, and data asset from this Power BI report.

Screenshot to be added here

## 8. Data Quality for Critical Data Elements

Microsoft Purview Data Quality offers an integrated solution for measuring the quality of Critical Data Elements (CDEs), enabling organizations to ensure that these key data elements meet the required standards for accuracy, completeness, consistency, and integrity.

Organizations can establish specific quality thresholds that CDEs must meet to maintain their quality. Those thresholds are applied at the logical CDE level, but trickle down to all the individual columns that comprise the CDE. These rules can encompass various aspects of data quality, including validation, cleansing, standardization, and enrichment. For example: data quality rules might specify that customer addresses must be standardized to a specific format, or that employee IDs must adhere to a certain pattern.

Once data quality rules are applied to CDEs, Microsoft Purview Data Quality systematically evaluates the underlying physical data elements to assess their compliance with these rules. By using Purview Data Quality's integrated approach, organizations can proactively monitor and manage the quality of their critical data elements, ensuring that they remain reliable, accurate, and fit for purpose. This not only enhances decision-making processes but also helps mitigate risks associated with data errors or inconsistencies, ultimately driving better business outcomes.

## Configure data quality for CDEs

1. If you haven't already, create a critical data element(CDE) and add columns.
2. Open your CDE by:
2.1. Open Microsoft Purview Unified Catalog and select Data management drop-down and Governance domains submenu.
2.2. Select a governance domain from the list.
2.3. Select the Critical data elements tile.
2.4 Select a critical data element from the list.
3. Select the Data quality tab in your critical data element.

Screenshot to be added here
4. Add a new rule to the critical data element by selecting New rule.
5. Select the data quality rule type you want to use and select Next.
6. Provide the details necessary for your rule type.
7. Choose whether you'd like to toggle the rule Off or On.
8. Select Create.

## Execute data quality rules for CDEs

When a data quality scan is run for an available data asset that has a column associated with a CDE, the data quality rules you've configured for that CDE will produce a score.

1. [Schedule or run a data quality scan](#2-Data-Source-Connection-Configuration") for your data assets associated with your CDE.
2. [Monitor the progress of the data quality scanning job as it executes](#6-data-quality-job-monitoring), ensuring that it completes without errors or interruptions. Check the applied data quality rules ran successfully from the history snapshot.

Screenshot to be added here

3. [Review the results of the scanning job](#6-data-quality-job-monitoring) to assess the quality of the CDE data asset based on the applied rules.

Screenshot to be added here

4. Analyze the findings from the data quality scanning job to identify any issues, anomalies, or areas of improvement related to the CDE data asset. This could involve cleansing, standardizing, or enriching the data to improve its quality.

## 9. Data Quality Alerts

Data quality alerts notify users about important events or unexpected behavior detected around the quality of the data. When you create alerts for assets, you'll receive email notifications about data quality scores.

To create data quality alerts, your users must be in the data quality steward role.

## Set data quality alerts

1. In Unified Catalog, select Health Management, then select Data quality.
2. On the Data Quality page, select a governance domain from the list.
3. From the Manage dropwdown list, select Alerts.
4. Select New to set up a new alert for the data products and data assets in your selected governance domain.
5. Enter a Display name and a Description.
6. For Target select any of the following options:
6.1. Score less than - trigger an alert if the assets' data quality score is less than certain percentage.
6.2. Score decreased by more than - trigger an alert if the current quality score drops by certain percentage after a new scan is run.
7. Select the threshold that will trigger an alert.
8. Select Turn on notifications for failed quality scan to enable alert notifications.
9. Add a Recipient to send the notification email to the recipient alias.

Screenshot to be added here

10. Select Continue to define the scope of alerts.
11. Under Scope, select data products and data assets that are being monitored through this alert and select Save button.

Screenshot to be added here

12. Select Continue to review.
13. Submit the alerts.

Screenshot to be added here

## Disable data quality alerts

Alerts are enabled by default.

To disable an alert rule:

1. From Microsoft Purview Unified Catalog, select the Data Management menu and Data quality submenu.
2. Select a governance domain from the list
3. Select the Manage button and select the Alerts page.
4. Select the Notifications toggle next to the alert, or open the alert and select the Turn off notifications checkbox.

Screenshot to be added here

## 10. Data Quality Actions

Quality of data is directly linked to the quality of decision making. Good quality data provides business process insights, better understanding of customers, and faster problem identification. Data quality actions identify problems that you should address to improve data quality in your data estate.

## Required roles

To see data quality actions in your environment, your users must at least be in the data quality reader role.
To see assign and modify actions, your users must at least be in the data quality steward role.

## Data quality action types

In current release, here are list of data quality actions the application is generating:

1. Rule has fallen below default thresholds
2. Global data quality score has fallen below threshold
data quality scanning and/or data quality profiling job has failed
3. data quality scanning and/or data quality profiling job has skipped due to no changes on data since last run
4. Outlier presence in profiled columns
5. Too many nulls in the profiled data asset

## Data quality Actions severity

1. Action severity is High if data quality score is less than 25
2. Action severity is Medium if data quality score is less than 50
3. Action severity is Low if data quality score is less than 75

## Data quality actions for governance domains

Data quality actions are rolled up from data asset level to the governance domain level. To browse these actions:

1. From Microsoft Purview Unified Catalog, select Health Management, then select Data quality.

2. Select a governance domain from the list.

3. Select the action items button, which also indicates the number of action items for the selected governance domain. You arrive at the Data quality actions flyout pane.

4. Select an action from the list of actions.

5. Assign the action to an individual to investigate and resolve. Recommendations and queries to find the low quality data are provided in the action details.

Screenshot to be added here

6. Update the status if needed, and Save to save your changes.

## Data quality actions for data assets

Data quality actions for a data asset can be browsed and assigned to individuals from the data quality overview page:

1. From Microsoft Purview Unified Catalog, select the Health Management menu and Data quality submenu.

2. Select a governance domain from the list.

3. Select a data product from the list.

4. Select a data asset from the assets attached to your data product.

5. Select the View all link in the Actions tile to navigate the action list of the data asset.

Screenshot to be added here

6. Browse through the list of Active, In progress, Resolved, and My items actions.

Screenshot to be added here

7. Select one of the actions to see the details and assign it to an individual for remedy. Recommendations and queries to find the low quality data are provided in the action details.

Screenshot to be added here

8. Update the status if needed, and Save to save your changes.

[Continue >](../modules/module11.m)
