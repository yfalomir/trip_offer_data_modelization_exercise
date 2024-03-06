# Trip Offer Data Modelization

The project was created using MySQL WorkBench.
It only represents a rough modelization of a TripOffer data model considering the constraints mentioned.

## General information
Documentation of models, columns, partition and clusters is available inside the project (directly linked to the objects themselves).

Diagrams are available in the projects.

The few SQL syntaxes used are raw SQL or BigQuery.

## Files

**blablacar_oltp_exercise1.mwb** -> The OLTP modelization that would fit a TripOffer model for transactional purposes only.
**blablacar_olap_exercise1.mwb** -> The OLAP modelization that would be provided to business/data analysts for TripOffer analysis (mainly temporal)

**number_trips_published_last_month.sql** -> A Sample query that returns the number of trips published during the last calendar month
**country_with_most_trips_last_calendar_month.sql** -> A Sample query that returns the country name of the country with the most trips during the last calendar month

OLAP process modelization schema screenshot:
![image](https://github.com/yfalomir/trip_offer_data_modelization_exercise/assets/32449121/6df1afd2-61c2-4a0e-bc99-3f7147c8e3c2)
