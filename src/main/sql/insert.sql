-- CATEGORIES
   -- Root
      INSERT INTO category VALUES (NULL,"laxanika","Λαχανικά",NULL);
      INSERT INTO category VALUES (NULL,"frouta","Φρούτα",NULL);
      INSERT INTO category VALUES (NULL,"galaktokomika","Γαλακτοκομικά",NULL);
      INSERT INTO category VALUES (NULL,"katepsigmena","Κατεψηγμένα",NULL);
   -- Laxanika
      INSERT INTO category VALUES (NULL,"ntomates","Ντομάτες","laxanika");
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
      INSERT INTO category VALUES (NULL,"laxanika","Λαχανικά","katepsigmena");
      INSERT INTO category VALUES (NULL,"pites","Πίτες","katepsigmena");
      INSERT INTO category VALUES (NULL,"pagota","Παγωτά","katepsigmena");
-----------------------------------------------------------------------------------------------
-- Products
   -- Laxanika
      -- Ntomates
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","ntomates","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","ntomates","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","ntomates","retailer",0.5);
      -- Aggouria
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","agouria","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","agouria","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","agouria","retailer",0.5);
      -- Piperies
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","piperies","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","piperies","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","piperies","retailer",0.5);
      -- Manitaria
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","manitaria","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","manitaria","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","manitaria","retailer",0.5);
   -- Frouta
      -- Bananes |DONE|
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
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","portokalia","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","portokalia","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","portokalia","retailer",0.5);
      -- Mila
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","mila","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","mila","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","mila","retailer",0.5);
      -- Fraoules
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","fraoules","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","fraoules","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","fraoules","retailer",0.5);
   -- Galaktokomika
      -- Gala
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","gala","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","gala","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","gala","retailer",0.5);
      -- Tiria
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","tiria","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","tiria","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","tiria","retailer",0.5);
      -- Voutiro
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","voutiro","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","voutiro","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","voutiro","retailer",0.5);
      -- Giaourti
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","giaourti","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","giaourti","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","giaourti","retailer",0.5);
   -- Katepsigmena
      -- Thalassina
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","thalassina","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","thalassina","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","thalassina","retailer",0.5);
      -- Laxanika
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","laxanika","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","laxanika","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","laxanika","retailer",0.5);
      -- Pites
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","pites","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","pites","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","pites","retailer",0.5);
      -- Pagota
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","pagota","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","pagota","retailer",0.5);
         INSERT INTO product VALUES (NULL,"name","ναμε","brand","pagota","retailer",0.5);
