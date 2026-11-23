# people-analytics-warehouse

people-analytics project created for SQL practice and portfolio work in the people analytics domain.

# Data
OPM Federal Workforce Data provides monthly published federal employment raw data, federal accessions raw data, and federal separations raw data. Using this resource seeking employee data that is more realistic than project sources. Source: https://data.opm.gov/get-data/data-downloads

# To Do:
-Create github repository
-Already downloaded data and left in data subfolder
-Review Grok conversation "Bridge to SQL Python Analytics" for scope and conversation flow for next steps with this data https://grok.com/c/b2196ff3-4b67-473d-aaeb-a6bc560bfb52?rid=e351ab67-9728-4185-a82e-9dfc1865b7f7
-Create database and read data in
-Explore data sets



# Nuances for documentation
Employment file is large, ~2M rows. Document any sampling used during development versus full load.

Data quality awareness. Footnotes, redactions, and known gaps (especially in later months) are worth capturing in your documentation. Explicitly noting what you cleaned, what you left as-is, and why shows judgment—exactly the kind of thing that differentiates a portfolio project from a tutorial recreation.



# Architecture

This warehouse is built on official monthly snapshots suitable for monthly snapshot fact for trend and compliance reporting. In an environment with a live HRIS an additional daily current-state table would need to be maintained for operational dashboards.

“Tables are designed append-only by snapshot month to support trend analysis. In production this would be partitioned by snapshot_yyyymm and subject to a retention policy. This portfolio load contains a single month.”

“Bronze tables are append-only by snapshot month. This portfolio contains a single month; additional months would be appended with their respective snapshot_yyyymm.

“Bronze tables are append-only by snapshot month. snapshot_yyyymm is populated from the source filename at load time; load_timestamp records when the rows were inserted.”

# Loading process

“Bronze data is loaded via a local shell script using PostgreSQL \copy. A sample with credentials and paths removed is provided in scripts/. The tables are append-only by the snapshot_yyyymm supplied in the source files.”