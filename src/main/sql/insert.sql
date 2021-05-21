-- CATEGORIES
	-- Root
		INSERT INTO category VALUES (NULL,"laxanika","Λαχανικά",NULL);
		INSERT INTO category VALUES (NULL,"frouta","Φρούτα",NULL);
		INSERT INTO category VALUES (NULL,"galaktokomika","Γαλακτοκομικά",NULL);
		INSERT INTO category VALUES (NULL,"katepsigmena","Κατεψηγμένα",NULL);
	-- Laxanika
		INSERT INTO category VALUES (NULL,"tomates","Ντομάτες","laxanika");
		INSERT INTO category VALUES (NULL,"agouria","Αγγούρια","laxanika");
		INSERT INTO category VALUES (NULL,"piperies","Πιπεριές","laxanika");
		INSERT INTO category VALUES (NULL,"manitaria","Μανιτάρια","laxanika");
	-- Frouta
		INSERT INTO category VALUES (NULL,"bananes","Μπανάνες","frouta");
		INSERT INTO category VALUES (NULL,"portokalia","Πορτοκάλια","frouta");
		INSERT INTO category VALUES (NULL,"mila","Μήλα","frouta");
		INSERT INTO category VALUES (NULL,"fraoules","Φράουλες","frouta");
	-- Galaktokomika
		INSERT INTO category VALUES (NULL,"gala","Γάλα","galaktokomika");
		INSERT INTO category VALUES (NULL,"tiria","Τυριά","galaktokomika");
		INSERT INTO category VALUES (NULL,"voutiro","Βούτηρο","galaktokomika");
		INSERT INTO category VALUES (NULL,"giaourti","Γιαούρτι","galaktokomika");
	-- Katepsigmena
		INSERT INTO category VALUES (NULL,"thalassina","Θαλασσινά","katepsigmena");
		INSERT INTO category VALUES (NULL,"katepsigmena laxanika","Κατεψυγμένα Λαχανικά","katepsigmena");
		INSERT INTO category VALUES (NULL,"pites","Πίτες","katepsigmena");
		INSERT INTO category VALUES (NULL,"pagota","Παγωτά","katepsigmena");

-- Products
	-- Laxanika
		-- tomates
			INSERT INTO product VALUES (NULL,"Tomates elinikes xima","Τομάτες Ελληνικές Χύμα","","tomates","Masoutis",1.39);
			INSERT INTO product VALUES (NULL,"Tomates o kipos tis ksanthis","Τομάτες Ο Κήπος της Ξάνθης Τσαμπί","","tomates","Masoutis",1.49);
			INSERT INTO product VALUES (NULL,"Tomates elinikes xima","Τομάτες Ελληνικές Χύμα","","tomates","Sklavenitis",1.18);
			INSERT INTO product VALUES (NULL,"Tomates pomodori","Τομάτες Πομοντόρι","","tomates","Sklavenitis",1.43);
			INSERT INTO product VALUES (NULL,"Tomates elinikes xima","Τομάτες Ελληνικές Χύμα","","tomates","MyMarket",1.39);
			INSERT INTO product VALUES (NULL,"Tomates dramas petrousa","Τομάτες Δράμας Πετρούσα","","tomates","MyMarket",2.09);
		-- Aggouria
			INSERT INTO product VALUES (NULL,"Aggouri egxorio","Αγγούρι Εγχώριο","","agouria","Masoutis",0.35);
			INSERT INTO product VALUES (NULL,"Aggouri egxorio","Αγγούρι Εγχώριο","","agouria","Sklavenitis",0.35);
			INSERT INTO product VALUES (NULL,"Aggouri egxorio","Αγγούρι Εγχώριο","","agouria","MyMarket",0.43);
		-- Piperies
			INSERT INTO product VALUES (NULL,"Piperies florinis xima","Πιπεριές Φλωρίνης Χύμα","Florinis","piperies","Masoutis",2.3);
			INSERT INTO product VALUES (NULL,"Piperies florinis xima","Πιπεριές Φλωρίνης Χύμα","Florinis","piperies","Sklavenitis",2.30);
			INSERT INTO product VALUES (NULL,"Piperies florinis xima","Πιπεριές Φλωρίνης Χύμα","Florinis","piperies","MyMarket",2.38);
			INSERT INTO product VALUES (NULL,"Piperies kauteres xima","Πιπεριές Καυτερές Χύμα","Kauteres","piperies","Masoutis",4.0);
			INSERT INTO product VALUES (NULL,"Piperies kauteres xima","Πιπεριές Καυτερές Χύμα","Kauteres","piperies","Sklavenitis",1.8);
			INSERT INTO product VALUES (NULL,"Piperies kauteres xima","Πιπεριές Καυτερές Χύμα","Kauteres","piperies","MyMarket",3.29);
		-- Manitaria
			INSERT INTO product VALUES (NULL,"Manitaria king oyster 250gr","Μανιτάρια King Oyster 250γρ","King Oyster","manitaria","Masoutis",3.99);
			INSERT INTO product VALUES (NULL,"Manitaria pleurotous 500gr","Μανιτάρια Πλευρότους 500γρ","Pleurotus","manitaria","Sklavenitis",1.85);
			INSERT INTO product VALUES (NULL,"Manitaria pleurotous 500gr","Μανιτάρια Πλευρότους 500γρ","Pleurotus","manitaria","MyMarket",2.34);
			INSERT INTO product VALUES (NULL,"Manitaria porto bello eisagogis 500gr","Μανιτάρια Πόρτο Μπέλλο Εισαγωγής 500γρ","Porto Bello","manitaria","MyMarket",2.60);
	-- Frouta
		-- Bananes
			INSERT INTO product VALUES (NULL,"Bananes Chiquita","Μπανάνες Τσικίτα","Chiquita","bananes","Masoutis",1.6);
			INSERT INTO product VALUES (NULL,"Bananes Chiquita","Μπανάνες Τσικίτα","Chiquita","bananes","Sklavenitis",1.5);
			INSERT INTO product VALUES (NULL,"Bananes Chiquita","Μπανάνες Τσικίτα","Chiquita","bananes","MyMarket",1.45);
			INSERT INTO product VALUES (NULL,"Bananes Chiquita Biologikes","Μπανάνες Τσικίτα Βιολογικές","Chiquita","bananes","Masoutis",1.7);
			INSERT INTO product VALUES (NULL,"Bananes Chiquita Biologikes","Μπανάνες Τσικίτα Βιολογικές","Chiquita","bananes","Sklavenitis",1.7);
			INSERT INTO product VALUES (NULL,"Bananes Chiquita Biologikes","Μπανάνες Τσικίτα Βιολογικές","Chiquita","bananes","MyMarket",1.6);
			INSERT INTO product VALUES (NULL,"Bananes Dole","Μπανάνες Ντολ","Dole","bananes","Masoutis",1.6);
			INSERT INTO product VALUES (NULL,"Bananes Dole","Μπανάνες Ντολ","Dole","bananes","Sklavenitis",1.5);
			INSERT INTO product VALUES (NULL,"Bananes Bajella","Μπανάνες Μπατζήλα","Bajella","bananes","Sklavenitis",1.3);
		-- Portokalia
			INSERT INTO product VALUES (NULL,"Portokalia Valenstia Elinika A Piotitas 2kg","Πορτοκάλια Βαλέντσια Α Ποιότητας 2Kg","Valentsia","portokalia","Masoutis",2.45);
			INSERT INTO product VALUES (NULL,"Portokalia Valenstia Elinika A Piotitas 2kg","Πορτοκάλια Βαλέντσια Α Ποιότητας 2Kg","Valentsia","portokalia","Sklavenitis",1.4);
			INSERT INTO product VALUES (NULL,"Portokalia Valenstia Elinika A Piotitas 2kg","Πορτοκάλια Βαλέντσια Α Ποιότητας 2Kg","Valentsia","portokalia","MyMarket",1.6);
			INSERT INTO product VALUES (NULL,"Portokalia Merlin Viologika 2kg","Πορτοκάλια Μέρλιν Βιολογικά 2Kg","Merlin","portokalia","Sklavenitis",2.46);
			INSERT INTO product VALUES (NULL,"Portokalia Merlin Viologika 2kg","Πορτοκάλια Μέρλιν Βιολογικά 2Kg","Merlin","portokalia","MyMarket",3.28);
		-- Mila
			INSERT INTO product VALUES (NULL,"Mila Fuji Elinika 1kg","Μήλα Fuji Ελληνικά","Fuji","mila","Masoutis",2.34);
			INSERT INTO product VALUES (NULL,"Mila Fuji Elinika 1kg","Μήλα Fuji Ελληνικά","Fuji","mila","Sklavenitis",1.8);
			INSERT INTO product VALUES (NULL,"Mila Fuji Elinika 1kg","Μήλα Fuji Ελληνικά","Fuji","mila","MyMarket",2.34);
			INSERT INTO product VALUES (NULL,"Mila Smith Elinika 1kg","Μήλα Smith Ελληνικά","Smith","mila","Masoutis",1.36);
			INSERT INTO product VALUES (NULL,"Mila Smith Elinika 1kg","Μήλα Smith Ελληνικά","Smith","mila","Sklavenitis",1.15);
			INSERT INTO product VALUES (NULL,"Mila Smith Elinika 1kg","Μήλα Smith Ελληνικά","Smith","mila","MyMarket",1.95);
		-- Fraoules
			INSERT INTO product VALUES (NULL,"Fraoules 500gr","Φράουλες 500γρ","","fraoules","Masoutis",3.98);
			INSERT INTO product VALUES (NULL,"Fraoules Viologikes 250gr","Φράουλες Βιολογικές 250γρ","","fraoules","Sklavenitis",1.74);
			INSERT INTO product VALUES (NULL,"Fraoules Viologikes 250gr","Φράουλες Βιολογικές 250γρ","","fraoules","MyMarket",3.39);
	-- Galaktokomika
		-- Gala
			INSERT INTO product VALUES (NULL,"Gala Mevgal 1Lt","Γάλα Μεβγάλ 1Λτ","Mevgal","gala","Masoutis",1.1);
			INSERT INTO product VALUES (NULL,"Gala Mevgal 1Lt","Γάλα Μεβγάλ 1Λτ","Mevgal","gala","Sklavenitis",1);
			INSERT INTO product VALUES (NULL,"Gala Mevgal 1Lt","Γάλα Μεβγάλ 1Λτ","Mevgal","gala","MyMarket",1);
			INSERT INTO product VALUES (NULL,"Gala Sergal 1Lt","Γάλα Σεργάλ 1Λτ","Sergal","gala","Sklavenitis",0.9);
			INSERT INTO product VALUES (NULL,"Gala Sergal 1Lt","Γάλα Σεργάλ 1Λτ","Sergal","gala","MyMarket",1);
			INSERT INTO product VALUES (NULL,"Gala Marata 1Lt","Γάλα Μαράτα 1Λτ","Marata","gala","Sklavenitis",0.9);
			INSERT INTO product VALUES (NULL,"Gala Mr.Grand 1Lt","Γάλα Mr.Grand 1Λτ","Mr.Grand","gala","Masoutis",0.85);
		-- Tiria
			INSERT INTO product VALUES (NULL,"Tiri Nounou Gouda ollandias","Τυρί Νουνού Gouda Ολλανδίας","Nounou","tiria","Masoutis",9.35);
			INSERT INTO product VALUES (NULL,"Tiri Nounou Gouda ollandias","Τυρί Νουνού Gouda Ολλανδίας","Nounou","tiria","Sklavenitis",9.35);
			INSERT INTO product VALUES (NULL,"Tiri Nounou Gouda ollandias","Τυρί Νουνού Gouda Ολλανδίας","Nounou","tiria","MyMarket",9.0);
			INSERT INTO product VALUES (NULL,"Tiri Dodoni Feta se almi","Τυρί Δωδώνη Φέτα σε άλμη","Dodoni","tiria","Sklavenitis",12.0);
			INSERT INTO product VALUES (NULL,"Tiri Dodoni Feta se almi","Τυρί Δωδώνη Φέτα σε άλμη","Dodoni","tiria","MyMarket",12.5);
			INSERT INTO product VALUES (NULL,"Tiri Castello Ble danias","Μπλε Τυρί Castello Δανίας","Castello","tiria","Masoutis",16.0);
			INSERT INTO product VALUES (NULL,"Tiri Castello Ble danias","Μπλε Τυρί Castello Δανίας","Castello","tiria","Sklavenitis",16.5);
			INSERT INTO product VALUES (NULL,"Tiri Mr.Grand Feta POP","Τυρί Mr.Grand Φέτα ΠΟΠ","Mr.Grand","tiria","Masoutis",5.99);
		-- Voutiro
			INSERT INTO product VALUES (NULL,"Voutiro Lurpak 250g","Βούτυρο Lurpak 250γρ","Lurpak","voutiro","Masoutis",3.65);
			INSERT INTO product VALUES (NULL,"Voutiro Lurpak 250g","Βούτυρο Lurpak 250γρ","Lurpak","voutiro","Sklavenitis",3.5);
			INSERT INTO product VALUES (NULL,"Voutiro Lurpak 250g","Βούτυρο Lurpak 250γρ","Lurpak","voutiro","MyMarket",3.5);
			INSERT INTO product VALUES (NULL,"Margarini Soft Vitam 250g","Μαργαρίνη Soft Βιτάμ 250γρ","Vitam","voutiro","Masoutis",1.32);
			INSERT INTO product VALUES (NULL,"Margarini Soft Vitam 250g","Μαργαρίνη Soft Βιτάμ 250γρ","Vitam","voutiro","Sklavenitis",1.25);
			INSERT INTO product VALUES (NULL,"Margarini Soft Vitam 250g","Μαργαρίνη Soft Βιτάμ 250γρ","Vitam","voutiro","MyMarket",1.30);
			INSERT INTO product VALUES (NULL,"Voutiro Minerva Fast 250g","Βούτυρο Μινέρβα Φαστ 250γρ","Minerva ","voutiro","Masoutis",2.5);
			INSERT INTO product VALUES (NULL,"Voutiro Minerva Fast 250g","Βούτυρο Μινέρβα Φαστ 250γρ","Minerva ","voutiro","Sklavenitis",2.5);
			INSERT INTO product VALUES (NULL,"Voutiro Minerva Fast 250g","Βούτυρο Μινέρβα Φαστ 250γρ","Minerva ","voutiro","MyMarket",2.5);
		-- Giaourti
			INSERT INTO product VALUES (NULL,"Giaourti stragisto Kri Kri 10% 1Kg","Γιαούρτι στραγγιστό Κρι Κρι 10% 1Kg","Kri Kri","giaourti","Masoutis",0.5);
			INSERT INTO product VALUES (NULL,"Giaourti stragisto Kri Kri 10% 1Kg","Γιαούρτι στραγγιστό Κρι Κρι 10% 1Kg","Kri Kri","giaourti","Sklavenitis",0.5);
			INSERT INTO product VALUES (NULL,"Giaourti stragisto Kri Kri 10% 1Kg","Γιαούρτι στραγγιστό Κρι Κρι 10% 1Kg","Kri Kri","giaourti","MyMarket",0.5);
			INSERT INTO product VALUES (NULL,"Giaourti stragisto FAGE 5% 1Kg","Γιαούρτι στραγγιστό ΦΑΓΕ 5% 1Kg","FAGE","giaourti","Masoutis",0.5);
			INSERT INTO product VALUES (NULL,"Giaourti stragisto FAGE 5% 1Kg","Γιαούρτι στραγγιστό ΦΑΓΕ 5% 1Kg","FAGE","giaourti","Sklavenitis",0.5);
			INSERT INTO product VALUES (NULL,"Giaourti stragisto FAGE 5% 1Kg","Γιαούρτι στραγγιστό ΦΑΓΕ 5% 1Kg","FAGE","giaourti","MyMarket",0.5);
			INSERT INTO product VALUES (NULL,"Giaourti stragisto Maratα 2% 1Kg","Γιαούρτι στραγγιστό Μαράτα 2% 1Kg","Marata","giaourti","Sklavenitis",0.5);
	-- Katepsigmena
		-- Thalassina
			INSERT INTO product VALUES (NULL,"Fish Sticks Iglo 450g","Ψαροκροκέτες Iglo 450γρ","Iglo","thalassina","Masoutis",5.88);
			INSERT INTO product VALUES (NULL,"Fish Sticks Iglo 450g","Ψαροκροκέτες Iglo 450γρ","Iglo","thalassina","Sklavenitis",5.88);
			INSERT INTO product VALUES (NULL,"Fish Sticks Iglo 450g","Ψαροκροκέτες Iglo 450γρ","Iglo","thalassina","MyMarket",4.71);
			INSERT INTO product VALUES (NULL,"Fish Sticks Mouragio 450g","Ψαροκροκέτες Μουραγιο 450γρ","Mouragio","thalassina","Sklavenitis",1.70);
			INSERT INTO product VALUES (NULL,"Bakaliarakia Pescanova 600g","Μπακαλιαράκια Pescanova 600γρ","Pescanova","thalassina","MyMarket",4.48);
		-- Κatepsigmena laxanika
			INSERT INTO product VALUES (NULL,"Arakas Barba Stathis 450g","Αρακάς Μπαρμπα Στάθης 450gr","Barba Stathis","katepsigmena laxanika","Masoutis",2.5);
			INSERT INTO product VALUES (NULL,"Arakas Barba Stathis 450g","Αρακάς Μπαρμπα Στάθης 450gr","Barba Stathis","katepsigmena laxanika","Sklavenitis",2.5);
			INSERT INTO product VALUES (NULL,"Arakas Barba Stathis 450g","Αρακάς Μπαρμπα Στάθης 450gr","Barba Stathis","katepsigmena laxanika","MyMarket",2.5);
			INSERT INTO product VALUES (NULL,"Fasolakia Barba Stathis 450g","Φασολάκια Μπαρμπα Στάθης 450gr","Barba Stathis","katepsigmena laxanika","Masoutis",2.6);
			INSERT INTO product VALUES (NULL,"Fasolakia Barba Stathis 450g","Φασολάκια Μπαρμπα Στάθης 450gr","Barba Stathis","katepsigmena laxanika","Sklavenitis",2.6);
			INSERT INTO product VALUES (NULL,"Fasolakia Barba Stathis 450g","Φασολάκια Μπαρμπα Στάθης 450gr","Barba Stathis","katepsigmena laxanika","MyMarket",2.5);
			INSERT INTO product VALUES (NULL,"Arakas Mr.Grand 450g","Αρακάς Mr.Grand 450gr","Mr.Grand","katepsigmena laxanika","Masoutis",2.0);
			INSERT INTO product VALUES (NULL,"Arakas Marata 450g","Αρακάς Μαράτα 450gr","Marata","katepsigmena laxanika","Sklavenitis",2.1);
			INSERT INTO product VALUES (NULL,"Fasolakia Mr.Grand 450g","Φασολάκια Mr.Grand 450gr","Mr.Grand","katepsigmena laxanika","Masoutis",2.1);
			INSERT INTO product VALUES (NULL,"Fasolakia Marata 450g","Φασολάκια Μαράτα 450gr","Marata","katepsigmena laxanika","Sklavenitis",2.2);
		-- Pites
			INSERT INTO product VALUES (NULL,"Pita Alfa Paradosiaki Metsovou me Tiri 850gr","Πίτα Alfa Παραδοσιακή με τυρί 850γρ","Alfa","pites","Masoutis",4.98);
			INSERT INTO product VALUES (NULL,"Pita Alfa Paradosiaki Metsovou me Tiri 850gr","Πίτα Alfa Παραδοσιακή με τυρί 850γρ","Alfa","pites","Sklavenitis",4.99);
			INSERT INTO product VALUES (NULL,"Pita Alfa Paradosiaki Metsovou me Tiri 850gr","Πίτα Alfa Παραδοσιακή με τυρί 850γρ","Alfa","pites","MyMarket",5.0);
			INSERT INTO product VALUES (NULL,"Zabonotiropita Mr.Grand atomiki 5x100gr","Ζαμπονοτυρόπιτα Mr.Grand Ατομική 5x100γρ","Mr.Grand","pites","Masoutis",1.89);
			INSERT INTO product VALUES (NULL,"Loukanopitakia Marata me sfoliata 1Kg","Λουκανοπιτάκια Μαράτα με σφολιάτα 1Kg","Marata","pites","Sklavenitis",2.54);
		-- Pagota
			INSERT INTO product VALUES (NULL,"Pagoto Magic Double Salted Caramel 440ml","Παγωτό Magic Double Salted Caramel 440ml","Magic","pagota","Masoutis",5.5);
			INSERT INTO product VALUES (NULL,"Pagoto Magic Double Salted Caramel 440ml","Παγωτό Magic Double Salted Caramel 440ml","Magic","pagota","Sklavenitis",4.48);
			INSERT INTO product VALUES (NULL,"Pagoto Magic Double Salted Caramel 440ml","Παγωτό Magic Double Salted Caramel 440ml","Magic","pagota","MyMarket",5.43);
			INSERT INTO product VALUES (NULL,"Pagoto Mr.Grand Vanilia Kakao 2Lt","Παγωτό Mr.Grand Βανίλια Κακάο 2Lt","Mr.Grand","pagota","Masoutis",3.69);
			INSERT INTO product VALUES (NULL,"Pagoto Bonora Krema & Biskoto 1Lt","Παγωτό Bonora Κρέμα & Μπισκότο 1Lt","Bonora","pagota","Sklavenitis",2.0);
