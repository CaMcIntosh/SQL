# Conference VIP Management

## Project Overview
This project simulates managing VIP logistics for a climate research conference with hundreds of attendees.  
The focus is on querying relational data to support real-world operational questions such as reservations, event participation, feedback assignments, and attendance counts.

The dataset includes:
- VIP profiles
- Event presentations
- Hotel reservations and RSVPs
- Peer feedback assignments between VIPs

The purpose of this project is to demonstrate practical SQL skills using realistic business questions rather than toy examples.

---

## Database Schema
The database consists of four tables:

- **vips** – VIP identity, affiliation, event participation, and feedback assignments  
- **reservations** – Hotel bookings and RSVP status for conference events  
- **events** – Conference sessions (keynotes, panels, workshops)  
- **hotels** – Hotel details for VIP accommodations  

The schema and seed data are defined in `schema.sql`.

---

## Queries Included
All queries are documented in `queries.sql`. Each query is preceded by the business question it answers.

The queries address scenarios such as:
- Identifying VIPs without hotel reservations (LEFT JOIN + NULL filtering)
- Listing all VIPs and their event participation, including non-presenters
- Finding confirmed welcome party attendees and their hotel assignments
- Producing a full VIP status roster using multiple LEFT JOINs
- Counting VIPs attending the thank-you dinner by hotel (aggregation)
- Mapping feedback assignments using self-joins
- Detecting reciprocal (two-way) feedback relationships
- Identifying reviewers assigned to keynote presenters

---

## Skills Demonstrated
- LEFT JOIN vs INNER JOIN decision-making
- Multi-table join paths using bridge tables
- Self-joins to model relationships within a single table
- Aggregation using COUNT and GROUP BY
- Translating real-world questions into SQL logic
- Designing query outputs for clarity and stakeholder readability

---

## Notes
- Some queries intentionally return empty result sets to reflect real data conditions (e.g., no reciprocal feedback chains).
- The emphasis is on correctness, clarity, and reasoning rather than query optimization.

