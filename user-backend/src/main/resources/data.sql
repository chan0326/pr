# show tables;
insert into boards (id, title, description, reg_date, mod_date) values(1, "Reviews", "수강 후기 게시판", now(), now());
insert into boards (id, title, description, reg_date, mod_date) values(2, "고객센터", "고객 문의 게시판", now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (1, 'Clarinda', 'Boilermaker1!', 'Chrissie', '230-644-4753', 'Professor', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (2, 'CulionIsland', 'Ironworker1!', 'Fannie', '372-654-5644', 'Analog Circuit Design manager', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (3, 'HoumaHouma', 'Ironworker1!', 'Zaria', '921-901-6334', 'Media Manager II', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (4, 'Recife', 'TileSetter1!', 'Alisun', '868-948-4104', 'Budget/Accounting Analyst I', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (5, 'SegeSege', 'Plasterers1!', 'Pennie', '940-551-8764', 'Financial Analyst', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (6, 'Nacala', 'Millwright1!', 'Gertruda', '517-268-7651', 'VP Marketing', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (7, 'Tobermorey', 'SafetyOfficer1!', 'Harli', '136-238-7702', 'VP Sales', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (8, 'MendeBrenoux', 'HVACHVAC1!', 'Rosalia', '524-152-5660', 'Help Desk Technician', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (9, 'Bouarfa', 'Refridgeration1!', 'Eugenie', '913-369-7000', 'Executive Secretary', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (10, 'Bucharest', 'SheetMetalWork1!', 'Nina', '688-278-3563', 'Payment Adjustment Coordinator', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (11, 'KepiPapuaIsland', 'TileSetter1!', 'Ashley', '595-588-1044', 'Geologist III', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (12, 'Cairo11', 'Waterproofer1!', 'Antonia', '202-338-4567', 'Tax Accountant', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (13, 'Butare', 'Plasterers1!', 'Martita', '978-322-8638', 'Engineer I', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (14, 'Buenaventura', 'Welder1!', 'MinMinMin', '472-388-3046', 'Human Resources Assistant II', 0, 0, now(), now());
insert into users (id, username, password, name, phone, job, subscribe, point, reg_date, mod_date)
values (15, 'opera1', 'EquipmentOperator1!', 'Antonie', '658-863-0908', 'Physical Therapy Assistant', 0, 0, now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (1, 1, 1, 'Halloween II', 'Fire Protection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (2, 2, 2, 'Stationmaster Is on Fire - The Movie, That Is!, The (Stinsen brinner... filmen alltså)', 'Framing (Steel)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (3, 3, 1, 'Crows Zero II (Kurôzu Zero II)', 'Epoxy Flooring', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (4, 4, 2, 'Die Weihnachtsklempner', 'Temp Fencing, Decorative Fencing and Gates', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (5, 5, 1, 'Lucky Night', 'Roofing (Asphalt)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (6, 6, 2, 'Maidens'' Conspiracy, The (Tirante el Blanco)', 'Fire Sprinkler System', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (7, 7, 1, 'Ballast', 'Sitework & Site Utilities', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (8, 8, 2, 'Maid, The (Nana, La)', 'Fire Sprinkler System', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (9, 9, 1, 'Forever Young', 'Structural & Misc Steel Erection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (10, 10, 1, 'Bad Blood: A Cautionary Tale ', 'Drywall & Acoustical (MOB)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (11, 11, 2, 'Blackbeard''s Ghost', 'Doors, Frames & Hardware', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (12, 12, 1, 'Beautiful Boy', 'Asphalt Paving', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (13, 13, 2, 'Safe House', 'Site Furnishings', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (14, 14, 1, 'Fled', 'Masonry & Precast', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (15, 15, 2, 'Sense of History, A', 'Drilled Shafts', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (16, 1, 1, 'Vacation from Marriage', 'Construction Clean and Final Clean', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (17, 2, 2, '1969', 'Electrical', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (18, 3, 1, 'Spartacus', 'Termite Control', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (19, 4, 2, 'Beauty of the Day (Belle de jour)', 'Ornamental Railings', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (20, 5, 1, 'Rape of Europa, The', 'Elevator', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (21, 6, 2, 'Sorcerer and the White Snake, The (Bai she chuan shuo)', 'Electrical and Fire Alarm', now(), now());

insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (22, 7, 1, 'From the Clouds to the Resistance (Dalla nube alla resistenza)', 'Granite Surfaces', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (23, 8, 2, 'Garçu, Le', 'Asphalt Paving', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (24, 9, 1, 'Money Money Money (L''aventure, c''est l''aventure)', 'Termite Control', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (25, 10, 2, 'My Friend Ivan Lapshin (Moy drug Ivan Lapshin)', 'Framing (Wood)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (26, 11, 1, 'What Price Hollywood?', 'Masonry', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (27, 12, 2, 'Hearts of Darkness: A Filmmakers Apocalypse', 'EIFS', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (28, 13, 1, 'Kronos (a.k.a. Captain Kronos: Vampire Hunter)', 'Structural and Misc Steel (Fabrication)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (29, 14, 2, 'Birdman', 'Exterior Signage', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (30, 15, 1, 'Little Girl Who Lives Down the Lane, The', 'Fire Sprinkler System', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (31, 1, 2, 'Sudden Wealth of the Poor People of Kombach, The (Der plötzliche Reichtum der armen Leute von Kombach)', 'Framing (Steel)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (32, 2, 1, 'Cry, The (Grido, Il)', 'Prefabricated Aluminum Metal Canopies', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (33, 3, 2, 'Bungee Jumping of Their Own (Beonjijeompeureul hada)', 'Wall Protection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (34, 4, 1, 'Bill Hicks: Revelations', 'HVAC', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (35, 5, 2, 'Quatsch und die Nasenbärbande', 'Drywall & Acoustical (FED)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (36, 6, 1, 'In Passing', 'Glass & Glazing', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (37, 7, 2, 'Roaring Twenties, The', 'RF Shielding', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (38, 8, 1, 'Midnight (Primeiro Dia, O)', 'Granite Surfaces', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (39, 9, 2, 'Sansho the Bailiff (Sanshô dayû)', 'Termite Control', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (40, 10, 1, 'Cinderella', 'Elevator', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (41, 11, 2, 'American Idiots', 'Masonry & Precast', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (42, 12, 1, 'Last Hurrah for Chivalry (Hao xia)', 'Overhead Doors', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (43, 13, 2, 'Take the High Ground!', 'Drywall & Acoustical (FED)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (44, 14, 1, 'Tales of Terror (Kaidan Shin Mimibukuro)', 'Masonry', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (45, 15, 2, 'Kevin Smith: Too Fat For 40', 'Retaining Wall and Brick Pavers', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (46, 1, 1, 'Ghost and Mr. Chicken, The', 'Painting & Vinyl Wall Covering', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (47, 2, 2, 'Last Song, The', 'Casework', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (48, 3, 1, 'In Harm''s Way', 'Wall Protection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (49, 4, 2, 'Club Fed', 'Masonry', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (50, 5, 1, 'Dirty Dozen, The', 'Doors, Frames & Hardware', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (51, 6, 2, 'Twice Upon a Time', 'Glass & Glazing', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (52, 7, 1, 'Nobody Else But You (Poupoupidou)', 'Framing (Steel)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (53, 8, 2, 'Triplets of Belleville, The (Les triplettes de Belleville)', 'Electrical and Fire Alarm', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (54, 9, 1, 'Sunset Park', 'Overhead Doors', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (55, 10, 2, 'Trapped in Paradise', 'Waterproofing & Caulking', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (56, 11, 1, 'Lemming', 'Temp Fencing, Decorative Fencing and Gates', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (57, 12, 2, 'Love Is a Woman (Death Is a Woman)', 'Construction Clean and Final Clean', now(), now());

insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (58, 13, 1, 'Frankie Starlight', 'Drywall & Acoustical (MOB)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (59, 14, 2, 'Fantasticks, The', 'Structural & Misc Steel Erection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (60, 15, 1, 'Sebastian Maniscalco: What''s Wrong with People?', 'Roofing (Asphalt)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (61, 1, 2, 'Tenure', 'Retaining Wall and Brick Pavers', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (62, 2, 1, 'Sun Kissed', 'Temp Fencing, Decorative Fencing and Gates', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (63, 3, 2, 'Assassination Tango', 'Epoxy Flooring', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (64, 4, 1, 'Pink Panther, The', 'Fire Protection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (65, 5, 2, 'Never Back Down', 'Drywall & Acoustical (MOB)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (66, 6, 1, 'Hunting of the President, The', 'Hard Tile & Stone', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (67, 7, 2, 'Tabu: A Story of the South Seas', 'Wall Protection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (68, 8, 1, 'Norte, the End of History', 'Ornamental Railings', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (69, 9, 2, 'Nothing Left to Fear', 'Prefabricated Aluminum Metal Canopies', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (70, 10, 1, 'Shanghai', 'Temp Fencing, Decorative Fencing and Gates', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (71, 11, 2, 'Magnificent Seven Ride!, The', 'Rebar & Wire Mesh Install', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (72, 12, 1, 'Zombie Honeymoon', 'Landscaping & Irrigation', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (73, 13, 2, 'West (Occident)', 'Epoxy Flooring', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (74, 14, 1, 'Miracle on 34th Street', 'Site Furnishings', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (75, 15, 2, 'Man of the Year', 'Glass & Glazing', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (76, 1, 1, 'Cat Returns, The (Neko no ongaeshi)', 'Site Furnishings', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (77, 2, 2, 'Blackbeard''s Ghost', 'Ornamental Railings', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (78, 3, 1, 'Love Forbidden (Défense d''aimer)', 'Overhead Doors', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (79, 4, 2, 'Son of the Sheik, The', 'Drywall & Acoustical (MOB)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (80, 5, 1, 'Buster Keaton: A Hard Act to Follow', 'Structural and Misc Steel (Fabrication)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (81, 6, 2, 'Woman''s Secret, A', 'HVAC', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (82, 7, 1, 'Reckoning, The', 'EIFS', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (83, 8, 2, 'Short Circuit 2', 'Ornamental Railings', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (84, 9, 1, 'Barry Lyndon', 'Fire Sprinkler System', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (85, 10, 2, 'People on Sunday (Menschen am Sonntag)', 'Structural & Misc Steel Erection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (86, 11, 1, 'Robin Hood', 'Drilled Shafts', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (87, 12, 2, 'The Strength of Water', 'Framing (Steel)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (88, 13, 1, 'Ogre, The (Unhold, Der)', 'Fire Sprinkler System', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (89, 14, 2, 'Idiocracy', 'Drywall & Acoustical (FED)', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (90, 15, 1, 'My Night At Maud''s (Ma Nuit Chez Maud)', 'Elevator', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (91, 1, 2, 'Roommates', 'Exterior Signage', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (92, 2, 1, 'Decoder', 'Fire Protection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (93, 3, 2, 'Tenacious D in The Pick of Destiny', 'Construction Clean and Final Clean', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (94, 4, 1, 'Punch-Drunk Love', 'Fire Protection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (95, 5, 2, 'Decision at Sundown', 'Temp Fencing, Decorative Fencing and Gates', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (96, 6, 1, 'Amador', 'Fire Protection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (97, 7, 2, 'Fame', 'Plumbing & Medical Gas', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (98, 8, 1, 'Revengers Tragedy', 'Structural & Misc Steel Erection', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (99, 9, 2, 'Arnold', 'Masonry', now(), now());
insert into articles (id, writer_id, board_id, title, content, reg_date, mod_date ) values (100, 10, 1, 'Return to the 36th Chamber (Shao Lin da peng da shi) ', 'Wall Protection', now(), now());


