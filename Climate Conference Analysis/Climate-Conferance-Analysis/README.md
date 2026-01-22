# Conference VIP Management Analysis

Analysis of VIP logistics and participation for a climate research conference, focusing on event participation, hotel reservations, RSVP status, and peer feedback assignments using SQL.

## Dataset Description

Fields included across the dataset:

**vips**
- member_id — unique VIP identifier
- first_name — first name
- last_name — last name
- association — affiliated organization
- assoc_type — organization type (education, government, private, research)
- member_since — year joined the organization
- event — event being presented (if any)
- provides_feedback_to — assigned peer feedback recipient

**reservations**
- member_id — VIP identifier
- hotel — hotel assignment
- welcome_rsvp — welcome party RSVP (1 = yes, 0 = no)
- dinner_rsvp — thank-you dinner RSVP (1 = yes, 0 = no)

**events**
- event_id — unique event identifier
- event_name — event title
- event_type — session type (Keynote, Panel, Workshop)

**hotels**
- hotel_id — unique hotel identifier
- hotel_name — hotel name
- address — hotel address

## Analysis Objectives

Sample business questions explored:

- Which VIPs have not yet made hotel reservations?
- Which VIPs are presenting, and what type of event are they presenting?
- Which VIPs have confirmed attendance for conference events?
- What is the full
