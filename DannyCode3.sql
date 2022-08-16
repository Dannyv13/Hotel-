
USE hotels;

INSERT INTO customer(lastName, firstName, address, city, state, zipCode, phone, email, idProof)  VALUES 

("Goodman", "Yvonne", "12 Creekside St", "Nashville", "TN", "37205", "2025550109", "ygoodman@isp.com", "Driver's License"),

("Mackenzie", "Dante", "137 Wall St", "Nashville", "TN", "37205", "2025550112", "dmackenzie@isp.com", "Driver's License"),

("Rollins", "Alysha", "411 Shirley St, Nashville", "TN", "37205", "2025550115", "arollins@isp.com", "Driver's License"),

("Gonzalez", "Avaya", "7771 Border Court", "Nashville", "TN", "37205", "2025550119", "agonzalez@isp.com", "Driver's License"),

("Kelly", "Haniya", "6 South Sulphur Springs Stree","Nashvill","TN","7205"," 2025550121","hkelly@isp.com","Driver's License"),

("Chambers"," Nathalie", "942 New Saddle Drive", "Clover", "SC", "29710", "2025550122", "nchambers@isp.com", "Driver's License"),

("Rollins", "Dante", "9 Wrangler Ave", "Clover", "SC", "29710", "2025550124", "drollins@isp.com", "Passport"),

("Mckee", "Beverley", "7319 S. Greenview Drive", "Clover", "SC", "29710", "2025550125", "bmckee@isp.com", "Passport"),

("Lindsey", "Paris", "763 West Mulberry St", "Clover", "SC", "29710", "2025550132", "plindsey@isp.com", "Passport"),

("Melia", "Umaiza", "545 Ohio Ave", "Clover", "SC", "29710", "2025550135", "umelia@isp.com", "Passport"),

("Prince", "Nico", "20 Middle River Street", "Willoughby", "OH", "44094", "2025550137", "nprince@isp.com", "Passport"),

("Rennie", "Javan", "8112 North Country St"," Willoughby", "OH", "44094", "2025550139", "jrennie@isp.com"," Passport"),

("Waters", "Ali", "83 Rockland Lane", "Willoughby", "OH", "44094", "2025550144", "awaters@isp.com", "Passport"),

("Clarke", "JohnPaul", "1 Riverside Lane", "Willoughby", "OH", "44094", "2025550153", "jpcClarke@isp.com", "Passport"),

("Kaiser", "Dane", "694 Wall Road", "Willoughby", "OH", "44094", "2025550155", "kdaiser@isp.com", "Passport"),

("Newman", "Hammad", "9970 State Court", "Duluth", "GA", "30096", "2025550157", "hnewman@isp.com", "Student ID Card"),

("Guthrie", "Maha"," 54 Woodsman Drive", "Duluth", "GA", "30096", "2025550161", "mguthrie@isp.com"," Student ID Card"),

("Roberts"," Tulisa", "7174 Studebaker Street", "Duluth", "GA", "30096", "2025550163", "troberts@isp.com", "Student ID Card"),

("Solis", "Robin", "8474 Wentworth Street", "Duluth", "GA", "30096", "2025550164", "rsolis@isp.com", "Student ID Card"),

("Heath", "Kavita", "796 Hartford St", "Duluth"," GA", "30096", "2025550165", "kheath@isp.com", "Student ID Card"),

("White", "Meera", "484 Bridge St", "Piscataway", "NJ", "08854", "2025550166", "mwhite@isp.com", "Student ID Card"),

("Esparza", "Bradlee", "7031 Gainsway St", "Piscataway", "NJ", "08854", "2025550173", "besparza@isp.com", "Student ID Card"),

("Leonard", "Leilani", "37 Monroe Street", "Piscataway", "NJ", "08854", "2025550175", "lleonard@isp.com", "Employee ID Card"),

("Brook", "Stefanie", "7990 West Surrey St", "Piscataway", "NJ", "08854", "2025550179", "sbrook@isp.com", "Employee ID Card"),

("Squires", "Grover", "7618 Madison Court", "Piscataway", "NJ", "08854", "2025550180", "gsquires@isp.com", "Employee ID Card");


INSERT INTO employee(firstName, lastName, login, password, empType, email) VALUES

("Yvonne", "Prince", "yprince", "Parrots12!@", "General Manager", "yprince@ucfhotel.com"),

("Dante", "Rennie", "drennie", "Birbs12!@", "Front Office Manager", "drennie@ucfhotel.com"),

("Alysha", "Waters", "awaters", "Doggo12!@", "Concierge", "awaters@ucfhotel.com"),

("Avaya", "Clarke", "aclarke", "MurderMittens12!@", "Concierge", "aclarke@ucfhotel.com"),

("Haniya", "Kaiser", "hkaiser", "BlazingCruise12!@", "Guest Service Agent", "hkaiser@ucfhotel.com"),

("Nathalie", "Newman", "nnewman", "CruisingBlaze12!@", "Guest Service Agent", "nnewman@ucfhotel.com"),

("Dante", "Guthrie", "dguthrie", "Smokey12!@", "Guest Service Agent", "dguthrie@ucfhotel.com"),

("Beverley", "Roberts", "broberts", "Ocho8*", "Guest Service Agent", "broberts@ucfhotel.com"),

("Paris", "Solis", "psolis", "Samster12!@", "Van Driver", "psolis@ucfhotel.com"),

("Umaiza", "Heath", "uheath", "NattyPants12!@", "Van Driver", "uheath@ucfhotel.com"),

("Jonathan", "Kumar", "jkumar", "Keystonia12!@", "Security", "jkumar@ucfhotel.com"),

( "Angus", "Neville", "aneville", "StormyCat12!@", "Security", "aneville@ucfhotel.com"),

("Uzair", "Sparrow", "usparrow", "OrangeMuffin12!@", "Sales Director", "usparrow@ucfhotel.com"),

("Amari", "Currie", "acurrie", "TessaDog12!@", "Sales Manager", "acurrie@ucfhotel.com"),

("Imaani", "Wallace", "iwallace", "IvyBug12!@", "Catering Assistant", "iwallace@ucfhotel.com"),

("Efe", "House", "ehouse", "AussieBird12!@"," Executive Housekeeper", "ehouse@ucfhotel.com"),

("Atticus", "Atkinson", "aatkinson", "Eclectus12!@", "Houseperson", "aatkinson@ucfhotel.com"),

("Michelle", "Ramirez", "mramirez", "Horse12!@", "Houseperson", "mramirez@ucfhotel.com"),

("Remy", "Hassan", "rhassan"," Equines12!@", "Houseperson", "rhassan@ucfhotel.com"),

("Jordana", "Beck", "jbeck", "AllAnimals12!@", "Houseperson", "jbeck@ucfhotel.com");


