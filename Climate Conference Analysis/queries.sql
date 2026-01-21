-- LEFT JOIN 
--1. Which VIPs have not made a hotel reservation yet, and what are the reservation fields for those who have?

SELECT
	vips.last_name,
	vips.first_name,
	reservations.hotel,
	reservations.welcome_rsvp,
	reservations.dinner_rsvp
FROM vips
	LEFT JOIN reservations
		ON vips.member_id = reservations.member_id
	WHERE reservations.member_id IS NULL
	ORDER BY vips.last_name ASC;

--2. List every VIP and the name/type of the event they’re presenting at (if any). Include VIPs even if they aren’t presenting.

SELECT
	vips.last_name,
	vips.first_name,
	events.event_name,
	events.event_type
FROM vips
	LEFT JOIN events
		ON vips.event = events.event_id
	ORDER BY vips.last_name ASC;

--INNER JOIN 
--3. Which VIPs have confirmed (“yes”) for the welcome party, and what hotel are they staying at?

SELECT
	vips.last_name,
	vips.first_name, 
    hotels.hotel_name
FROM vips
	INNER JOIN reservations
		ON vips.member_id = reservations.member_id
	INNER JOIN hotels
		ON reservations.hotel = hotels.hotel_id
	WHERE reservations.welcome_rsvp = 1
	ORDER BY hotels.hotel_name;
	
--Multiple JOINs in one query
--4. For each VIP, show their name + event name/type + hotel name/address + RSVP status for both welcome and dinner.

SELECT
	vips.last_name,
	vips.first_name,
	events.event_name,
	events.event_type,
	hotels.hotel_name,
	hotels.address,
	reservations.welcome_rsvp,
	reservations.dinner_rsvp
FROM vips
	LEFT JOIN events
		ON vips.event = events.event_id
	LEFT JOIN reservations
		ON reservations.member_id = vips.member_id
		LEFT JOIN hotels
			ON reservations.hotel = hotels.hotel_id
	ORDER By vips.last_name;

--5. Which hotels have VIPs attending the thank-you dinner, and how many VIPs per hotel?

SELECT
	hotels.hotel_name,
	COUNT(vips.member_id) AS vip_count
FROM reservations
	INNER JOIN hotels
		ON reservations.hotel = hotels.hotel_id
	INNER JOIN vips
			ON vips.member_id = reservations.member_id
WHERE reservations.dinner_rsvp = 1
GROUP BY hotels.hotel_name
ORDER BY hotels.hotel_name;				

--SELF JOIN 
--6. Who is giving feedback to whom? Return “Reviewer VIP name → Recipient VIP name”.

SELECT
  reviewer.first_name  AS reviewer_first_name,
  reviewer.last_name   AS reviewer_last_name,
  recipient.first_name AS recipient_first_name,
  recipient.last_name  AS recipient_last_name
FROM vips AS reviewer
JOIN vips AS recipient
  ON reviewer.provides_feedback_to = recipient.member_id;
	
--7. Find any “feedback chain” pairs.

SELECT
  a.first_name AS vip_a_first_name,
  a.last_name  AS vip_a_last_name,
  b.first_name AS vip_b_first_name,
  b.last_name  AS vip_b_last_name
FROM vips AS a
JOIN vips AS b
  ON a.provides_feedback_to = b.member_id
 AND b.provides_feedback_to = a.member_id
 AND a.member_id < b.member_id
ORDER BY vip_a_last_name, vip_b_last_name;

--Subquery 
--8. Which VIPs are assigned to give feedback to someone who is presenting a keynote?

SELECT
  reviewer.first_name AS reviewer_first_name,
  reviewer.last_name  AS reviewer_last_name,
  recipient.first_name AS recipient_first_name,
  recipient.last_name  AS recipient_last_name,
  e.event_name,
  e.event_type
FROM vips AS reviewer
JOIN vips AS recipient
  ON reviewer.provides_feedback_to = recipient.member_id
JOIN events AS e
  ON recipient.event = e.event_id
WHERE e.event_type = 'Keynote'
ORDER BY reviewer.last_name, reviewer.first_name;
	
