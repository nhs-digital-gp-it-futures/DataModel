# Data Migration script

This script migrates the following tables from one buying catalogue database to another using an SSIS package

* Solution
* FrameworkSolutions
* SolutionDetail
* PurchasingModel
* SolutionCapability
* MarketingContact

# Pre-requisites

* Visual Studio 2019
* Visual Studio Sql Server Data Tools

You will need to install Sql Server Data Tools as per instructions [here](https://docs.microsoft.com/en-us/sql/ssdt/sql-server-data-tools?view=sql-server-ver15)

Note that you may need to modify your Visual Studio installation (use Visual Studio Installer) to include the **Data storage and processing** workload.

Integration Services is then enabled by installing the Visual Studio extension **Sql Server Integration Services Projects**

# Source and Target

Source and Target are currently set as follows

Source : localhost, buyingcatalog 

Target : localhost, buyingcatalog1

**This is deliberate, please reset the source and target connection information before running the script**

# Running the script

1. Obtain credentials for both source and target databases and ensure you have access.

1. Open the script **ClearTables.sql** in Sql Server Management Studio and connect to the **TARGET** database

1. Open package in Visual Studio and amend connection strings as apporpriate

1. Seek a peer to review: specifically to validate that the correct environments are being accessed and that source and target are the right way round

1. Run **ClearTables.sql** on the **TARGET** database

1. Run the package in Visual Studio 2019

1. Verify that data transfer has taken place and the target database has been updated

1. Close Visual Studio **without** saving changes

**DO NOT SAVE PRODUCTION CREDENTIALS AND DEFINITELY DO NOT COMMIT THEM TO GIT** 