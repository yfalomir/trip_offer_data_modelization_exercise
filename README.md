The project was created using MySQL WorkBench.
It only represents a rough modelisation of a TripOffer data model considering the mentionned constraints.

Documentation of models, columns, parition and clusters is available inside the project (directly linked to the objects themselves)
The few SQL syntax used are raw SQL or BigQuery.

Files:
blablacar_oltp_exercise1.mwb -> The OLTP modelization that would fit a TripOffer model for transactional purposes only.
blablacar_olap_exercise1.mwb -> The OLAP modelization that would be provided to business/data analysts for TripOffer analysis (mainly temporal)


number_trips_published_last_month.sql -> A Sample query that returns the number of trips published during the last calendar month
country_with_most_trips_last_calendar_month -> A Sample query that returns the country name of the country with most trips during the last calendar month