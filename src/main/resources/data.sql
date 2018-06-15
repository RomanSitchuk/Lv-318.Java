INSERT INTO public.category (type, id, name, next_level_category_id, icon_url) VALUES ('EXTENDABLE', 1, 'Public Transport', null, 'static/bus.png');
INSERT INTO public.category (type, id, name, next_level_category_id, icon_url) VALUES ('EXTENDABLE', 8, 'Taxi', null, 'static/taxi.png');
INSERT INTO public.category (type, id, name, next_level_category_id, icon_url) VALUES ('EXTENDABLE', 2, 'Lviv', 1, 'static/lviv.png');
INSERT INTO public.category (type, id, name, next_level_category_id, icon_url) VALUES ('EXTENDABLE', 3, 'Kyiv', 1, 'static/kyiv.png');
INSERT INTO public.category (type, id, name, next_level_category_id, icon_url) VALUES ('NON_EXTENDABLE', 4, 'Tram', 2, 'static/tram.png');
INSERT INTO public.category (type, id, name, next_level_category_id, icon_url) VALUES ('NON_EXTENDABLE', 5, 'Trolleybus', 2, 'static/trolleybus.png');
INSERT INTO public.category (type, id, name, next_level_category_id, icon_url) VALUES ('NON_EXTENDABLE', 6, 'Bus', 2, 'static/bigbus.png');
INSERT INTO public.category (type, id, name, next_level_category_id, icon_url) VALUES ('NON_EXTENDABLE', 7, 'Marshrutka', 2, 'static/van.png');

INSERT INTO public.transit (id, name, category_id) VALUES (1, '#9', 4);
INSERT INTO public.transit (id, name, category_id) VALUES (2, '#2', 5);
INSERT INTO public.transit (id, name, category_id) VALUES (3, '#3А', 6);
INSERT INTO public.transit (id, name, category_id) VALUES (4, '#51', 7);
INSERT INTO public.transit (id, name, category_id) VALUES (6, '#7', 4);
INSERT INTO public.transit (id, name, category_id) VALUES (7, '#6', 4);

INSERT INTO public.users (id, email, first_name, last_name, password) VALUES (1, 'name1@gmail.com', 'Name1', 'Lastname1', '1111');
INSERT INTO public.users (id, email, first_name, last_name, password) VALUES (2, 'name2@gmail.com', 'Name2', 'Lastname2', '2222');
INSERT INTO public.users (id, email, first_name, last_name, password) VALUES (3, 'name3@gmail.com', 'Name3', 'Lastname3', '3333');

INSERT INTO public.stop (id, street) VALUES (1, 'Залізничний Вокзал');
INSERT INTO public.stop (id, street) VALUES (26, 'Галицьке перехрестя');
INSERT INTO public.stop (id, street) VALUES (20, 'Будинок Меблів');
INSERT INTO public.stop (id, street) VALUES (23, 'Магнус');
INSERT INTO public.stop (id, street) VALUES (14, 'Наукова');
INSERT INTO public.stop (id, street) VALUES (12, 'Смаль-Стоцького');
INSERT INTO public.stop (id, street) VALUES (3, 'Бандери');
INSERT INTO public.stop (id, street) VALUES (24, 'Хімічна');
INSERT INTO public.stop (id, street) VALUES (18, 'Аквапарк');
INSERT INTO public.stop (id, street) VALUES (9, 'Кропивницького');
INSERT INTO public.stop (id, street) VALUES (5, 'Парк культури');
INSERT INTO public.stop (id, street) VALUES (15, 'Центр зайнятості');
INSERT INTO public.stop (id, street) VALUES (4, 'Сахарова');
INSERT INTO public.stop (id, street) VALUES (2, 'Приміський Вокзал');
INSERT INTO public.stop (id, street) VALUES (22, 'Цирк');
INSERT INTO public.stop (id, street) VALUES (8, 'Дорошенка');
INSERT INTO public.stop (id, street) VALUES (6, 'Шухевича');
INSERT INTO public.stop (id, street) VALUES (7, 'Руська');
INSERT INTO public.stop (id, street) VALUES (25, 'Мазепи');
INSERT INTO public.stop (id, street) VALUES (11, 'Собор Св. Юра');
INSERT INTO public.stop (id, street) VALUES (19, 'Скнилівок');
INSERT INTO public.stop (id, street) VALUES (10, 'Університет');
INSERT INTO public.stop (id, street) VALUES (17, 'Victoria Gardens');
INSERT INTO public.stop (id, street) VALUES (13, 'Кульпарківська');
INSERT INTO public.stop (id, street) VALUES (16, 'Тролейбусна');
INSERT INTO public.stop (id, street) VALUES (21, 'Окружна');

INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (1, 1, 1);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (1, 2, 2);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (1, 3, 3);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (1, 4, 4);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (1, 5, 5);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (1, 6, 6);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (1, 7, 7);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (1, 8, 8);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (1, 9, 9);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (2, 10, 1);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (2, 11, 2);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (2, 3, 3);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (2, 12, 4);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (2, 13, 5);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (2, 14, 6);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (2, 15, 7);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (2, 16, 8);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 14, 2);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 15, 3);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 18, 4);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 19, 5);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 20, 6);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 21, 7);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 13, 8);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 2, 9);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 22, 10);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 23, 11);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 24, 12);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 25, 13);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 26, 14);
INSERT INTO public.transit_stop (transit_id, stop_id, stop_index) VALUES (4, 10, 1);

INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (1, 'RATING', 2, 4);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (2, 'RATING', 3, 4);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (3, 'RATING', 4, 5);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (4, 'RATING', 5, 5);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (5, 'RATING', 6, 6);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (6, 'RATING', 7, 6);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (7, 'RATING', 8, 7);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (8, 'RATING', 8, 7);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (9, 'ACCEPTER', null, 4);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (10, 'ACCEPTER', null, 5);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (11, 'ACCEPTER', null, 6);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (12, 'ACCEPTER', null, 7);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (13, 'CAPACITY', null, 4);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (14, 'CAPACITY', null, 5);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (15, 'CAPACITY', null, 6);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (16, 'CAPACITY', null, 7);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (17, 'CAPACITY', null, 4);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (18, 'CAPACITY', null, 5);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (19, 'CAPACITY', null, 6);
INSERT INTO public.feedback_criteria (id, type, weight, category_id) VALUES (20, 'CAPACITY', null, 7);

INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (1, 1, 'якість проїзду?', 1);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (2, 2, 'якість обслуговуючого персоналу (водій , кондуктор)?', 2);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (3, 3, 'якість проїзду?', 3);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (4, 4, 'в скільки оцінюєте стан тролейбусу?', 4);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (5, 5, 'якість проїзду?', 5);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (6, 6, 'якість салону?', 6);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (7, 7, 'якість проїзду?', 7);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (8, 8, 'оцініть частоту появи маршруток на рейсі?', 8);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (9, 9, 'Чи задоволені тримваєм?', 9);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (10, 10, 'Чи задоволені тролейбусом?', 10);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (11, 11, 'Чи задоволені автобусом?', 11);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (12, 12, 'Чи задоволені маршруткою?', 12);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (13, 13, 'о котрій годині виїхали?', 13);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (14, 13, 'о котрій годині вийшли?', 13);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (15, 13, 'вкажіть початкову зупинку', 13);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (16, 13, 'вкажіть кінцеву зупинку', 13);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (17, 14, 'о котрій годині виїхали?', 14);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (18, 14, 'о котрій годині вийшли?', 14);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (19, 14, 'вкажіть початкову зупинку', 14);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (20, 14, 'вкажіть кінцеву зупинку', 14);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (21, 15, 'о котрій годині виїхали?', 15);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (22, 15, 'о котрій годині вийшли?', 15);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (23, 15, 'вкажіть початкову зупинку', 15);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (24, 15, 'вкажіть кінцеву зупинку', 15);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (25, 16, 'о котрій годині виїхали?', 16);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (26, 16, 'о котрій годині вийшли?', 16);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (27, 16, 'вкажіть початкову зупинку', 16);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (28, 16, 'вкажіть кінцеву зупинку', 16);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (29, 17, 'о котрій годині виїхали?', 17);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (30, 17, 'о котрій годині вийшли?', 17);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (31, 17, 'оцініть завантаженість трамвая', 17);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (33, 18, 'о котрій годині виїхали?', 18);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (34, 18, 'о котрій годині вийшли?', 18);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (35, 18, 'оцініть завантаженість тролейбуса', 18);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (37, 19, 'о котрій годині виїхали?', 19);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (40, 20, 'о котрій годині виїхали?', 20);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (38, 19, 'о котрій годині вийшли?', 19);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (41, 20, 'о котрій годині вийшли?', 20);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (39, 19, 'оцініть завантаженість автобуса', 19);
INSERT INTO public.question (id, group_id, question_name, criteria_id) VALUES (42, 20, 'оцініть завантаженість маршрутки', 20);

INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (1, '10', 1, 1, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (2, '7', 2, 1, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (3, '6', 3, 2, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (4, '2', 4, 2, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (5, '10', 5, 3, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (6, '9', 6, 3, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (7, '8', 7, 4, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (8, '7', 8, 4, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (21, '8', 1, 1, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (22, '6', 2, 1, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (23, '6', 3, 2, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (24, '2', 4, 2, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (25, '7', 5, 3, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (26, '8', 6, 3, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (27, '9', 7, 4, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (28, '10', 8, 4, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (41, '5', 1, 1, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (42, '2', 2, 1, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (43, '7', 3, 2, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (44, '10', 4, 2, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (45, '2', 5, 3, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (46, '4', 6, 3, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (47, '6', 7, 4, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (48, '8', 8, 4, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (50, '"YES"', 10, 2, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (49, '"NO"', 9, 1, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (32, '"YES"', 12, 4, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (30, '"YES"', 10, 2, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (12, '"NO"', 12, 4, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (9, '"YES"', 9, 1, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (11, '"YES"', 11, 3, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (29, '"NO"', 9, 1, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (52, '"YES"', 12, 4, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (31, '"NO"', 11, 3, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (51, '"MAYBE"', 11, 3, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (10, '"NO"', 10, 2, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (14, '{ "capacity":30, "from":"Університет" ,"to" :"Наукова"}', 14, 2, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (53, '{ "capacity":60 , "from":"Наукова" ,"to" :"Бандери"}', 13, 1, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (55, '{ "capacity":28 , "from":"Університет" ,"to" :"Окружна"}', 15, 3, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (16, '{ "startHour" : 10, "startMinute":44, "endHour":11, "endMinute":44 , "from":"Університет" ,"to" :"Наукова"}', 16, 4, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (60, '{ "startHour" : 6, "startMinute":44, "endHour":7, "endMinute":44 , "capacity":30}', 20, 4, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (17, '{ "startHour" : 12, "startMinute":44, "endHour":13, "endMinute":44 , "capacity":30}', 17, 1, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (54, '{ "capacity":30, "from":"Університет" ,"to" :"Наукова"}', 14, 2, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (59, '{ "startHour" : 21, "startMinute":44, "endHour":22, "endMinute":44 , "capacity":30}', 19, 3, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (39, '{ "startHour" : 8, "startMinute":44, "endHour":9, "endMinute":44 , "capacity":30}', 19, 3, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (40, '{ "startHour" : 23, "startMinute":44, "endHour":24, "endMinute":44 , "capacity":30}', 20, 4, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (56, '{ "capacity":25, "from":"Університет" ,"to" :"Окружна"}', 16, 4, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (36, '{ "capacity":40, "from":"Університет" ,"to" :"Окружна"}', 16, 4, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (15, '{ "capacity":10 , "from":"Університет" ,"to" :"Наукова"}', 15, 3, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (34, '{ "capacity":20, "from":"Університет" ,"to" :"Окружна"}', 14, 2, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (57, '{ "startHour" : 16, "startMinute":44, "endHour":17, "endMinute":44 , "capacity":30}', 17, 1, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (58, '{ "startHour" : 8, "startMinute":44, "endHour":9, "endMinute":44 , "capacity":30}', 18, 2, 3);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (37, '{ "startHour" : 8, "startMinute":44, "endHour":9, "endMinute":44 , "capacity":30}', 17, 1, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (20, '{ "startHour" : 16, "startMinute":44, "endHour":17, "endMinute":44 , "capacity":30}', 20, 4, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (38, '{ "startHour" : 8, "startMinute":44, "endHour":9, "endMinute":44 , "capacity":30}', 18, 2, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (19, '{ "startHour" : 16, "startMinute":44, "endHour":17, "endMinute":44 , "capacity":30}', 19, 3, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (18, '{ "startHour" : 16, "startMinute":44, "endHour":17, "endMinute":44 , "capacity":30}', 18, 2, 1);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (33, '{ "capacity":30 , "from":"Наукова" ,"to" :"Бандери"}', 13, 1, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (35, '{ "capacity":50 , "from":"Університет" ,"to" :"Наукова"}', 15, 3, 2);
INSERT INTO public.feedback (id, answer, criteria_id, transit_id, user_id) VALUES (13, '{ "capacity":30 , "from":"Університет" ,"to" :"Окружна"}', 13, 1, 1);