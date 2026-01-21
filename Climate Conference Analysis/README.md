# Conference VIP Management – SQL Joins & Aggregation Practice

## Project Overview
This project simulates managing VIP logistics for a climate research conference with hundreds of attendees.  
The focus is on querying relational data to support real-world operational questions such as reservations, event participation, feedback assignments, and attendance counts.

The dataset includes:
- VIP profiles
- Event presentations
- Hotel reservations and RSVPs
- Peer feedback assignments between VIPs

The goal of this project is to demonstrate practical SQL skills, particularly **JOINs, self-joins, and aggregation**, using realistic business questions.

---

## Database Schema
The database consists of four tables:

- **vips** – VIP identity, affiliation, event participation, and feedback assignments  
- **reservations** – Hotel bookings and RSVP status for conference events  
- **events** – Conference sessions (keynotes, panels, workshops)  
- **hotels** – Hotel details for VIP accommodations  

The schema is defined in `schema.sql`.

---

## Queries Included
All queries are documented in `queries.sql`. Each query is preceded by the question it answers.

### Query topics include:
1. Identifying VIPs without hotel reservations (LEFT JOIN + NULL filtering)
2. Listing all VIPs and their event participation (LEFT JOIN)
3. Finding confirmed welcome party attendees and their hotels (INNER JOIN)
4. Producing a full VIP status roster using multiple LEFT JOINs
5. Counting VIPs attending the thank-you dinner by hotel (aggregation with COUNT and GROUP BY)
6. Mapping feedback assignments using a self-join
7. Detecting reciprocal (two-way) feedback relationships
8. Identifying reviewers assigned to keynote presenters

---

## Skills Demonstrated
- LEFT JOIN vs INNER JOIN decision-making
- Multi-table join paths using bridge tables
- Self-joins to model relationships within a single table
- Aggregation using COUNT and GROUP BY
- Translating real-world questions into SQL logic
- Producing human-readable, stakeholder-friendly query outputs

---

## How to Use
1. Run `schema.sql` to create and populate the database
2. Execute queries from `queries.sql` individually
3. Review results to understand how different join strategies affect output

---

## Notes
- Some queries intentionally return empty result sets to reflect real data conditions (e.g., no reciprocal feedback chains).
- The focus of this project is correctness and clarity, not optimization.

---

## Author
Carrie McIntosh  
SQL Certificate – Part 3  
