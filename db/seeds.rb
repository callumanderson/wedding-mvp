venue_list = [
  [
    'Longhampton Barn',
    'sue@longhampton.com',
    '01865 322431',
    'OX1 7FG',
    'A stunning barn nessled deep in the oxfordshire countryside',
    'http://bridalmusings.com/wp-content/uploads/2014/06/10-Best-Barn-Wedding-Venues-in-the-World-Santa-Lucia-Preserve-Bridal-Musings-Wedding-Blog0.jpg',
    'http://bridalmusings.com/wp-content/uploads/2014/06/10-Best-Barn-Wedding-Venues-in-the-World-Santa-Lucia-Preserve-Bridal-Musings-Wedding-Blog0.jpg',
    'http://bridalmusings.com/wp-content/uploads/2014/06/10-Best-Barn-Wedding-Venues-in-the-World-Santa-Lucia-Preserve-Bridal-Musings-Wedding-Blog0.jpg',
    'barn'
  ],
  [
    'Anshbrook Castle',
    'neil.smith@the-castle.co.uk',
    '07888345432',
    'SG14 1HR',
    "Say 'I do' amidst the beautiful backdrop of this classical styled castle",
    'http://www.hertfordcastle.co.uk/timthumb.php?src=http://www.hertfordcastle.co.uk/images_CMS/page/65/140724406714_high_res.jpg&w=960',
    'http://www.hertfordcastle.co.uk/timthumb.php?src=http://www.hertfordcastle.co.uk/images_CMS/page/65/140724406714_high_res.jpg&w=960',
    'http://www.hertfordcastle.co.uk/timthumb.php?src=http://www.hertfordcastle.co.uk/images_CMS/page/65/140724406714_high_res.jpg&w=960',
    'castle'
  ],
  [
    'Stoke Newington Town Hall',
    'contact@hackney.gov.uk',
    '(020) 774 842',
    'E2 1RR',
    'Stoke Newington Town Hall offers decadent 1930s glamour with its outstanding art-deco interiors.',
    'http://static1.squarespace.com/static/50992cbee4b0c49016e6d85c/50992cbfe4b0c49016e6d867/50a4e68ce4b013b04b898c7e/1433432776212/CDM_n1956547_v1__DSC4478.jpg?format=2500w',
    'http://static1.squarespace.com/static/50992cbee4b0c49016e6d85c/50992cbfe4b0c49016e6d867/50a4e68ce4b013b04b898c7e/1433432776212/CDM_n1956547_v1__DSC4478.jpg?format=2500w',
    'http://static1.squarespace.com/static/50992cbee4b0c49016e6d85c/50992cbfe4b0c49016e6d867/50a4e68ce4b013b04b898c7e/1433432776212/CDM_n1956547_v1__DSC4478.jpg?format=2500w',
    'town'
  ],
  [
    'Hedsor House',
    'bookings@hedsor.co.uk',
    '07822394771',
    "AL7 3HG",
    "One of the UK's most extraordinary and spectacular exclusive use wedding venues. Our stunning Georgian house with guest bedrooms becomes exclusively yours for the most special day of your life.",
    'http://static1.squarespace.com/static/55717e7be4b08f4ccab96ed5/t/55b85d00e4b050d4e61a331d/1438145795224/?format=1500w',
    'http://static1.squarespace.com/static/55717e7be4b08f4ccab96ed5/t/55b85d00e4b050d4e61a331d/1438145795224/?format=1500w',
    'http://static1.squarespace.com/static/55717e7be4b08f4ccab96ed5/t/55b85d00e4b050d4e61a331d/1438145795224/?format=1500w',
    'country'
  ]
]

venue_list.each do |name, email, phone, address, description, main_image_url, image_2_url, image_3_url, venue_type|
  Venue.create!(
    name: name,
    email: email,
    phone: phone,
    address: address,
    description: description,
    main_image_url: main_image_url,
    image_2_url: image_2_url,
    image_3_url: image_3_url,
    venue_type: venue_type
  )
end
