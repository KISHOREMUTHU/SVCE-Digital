import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusRoutes extends StatefulWidget {
  @override
  _BusRoutesState createState() => _BusRoutesState();
}

class _BusRoutesState extends State<BusRoutes> {
  var bus_routes = [
    {
      "Route No": 1,
      "Bus Route": "Tiruvotriyur",
      "Starting Point": "Lift Gate (6:15 am)",
      "Via":
          "Lift Gate, Wimco Nagar, Ajax Bus Stand, Vellyanchetty School, Theradi, Raja Kadai, Toll Gate Tondiarpet Appolo Hospital, Kasi Medu, Kal Mandapam - Police Station, Royapuram Signal, Highcourt, Central, Dhinathanthi, Ega Theater, Taylors Road, Aminchikarai Market, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil, Arumbakkam, Koyambedu -Rohini Theater, Nerkundram, Madhura"
    },
    {
      "Route No": 2,
      "Bus Route": "TVK Park",
      "Starting Point": "TVK Park (6:45 am)",
      "Via":
          "TVK Park, Chinthamani, Anna Nagar Rountana, Shanthi Colony, Blue Star, 12th Main Road, Thirumangalam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle- Byepass"
    },
    {
      "Route No": 3,
      "Bus Route": "Doveton",
      "Starting Point": "Silverstar Hotel (6:25 am)",
      "Via":
          "Silver Star Hotel, Gangadheeswarar koil, Aysha Hospital Bus stop, Abirami theatre, Kellys (Nagappa Motors), Kilpauk Garden, Kellys Kallarai( New Avadi road junction), Chinthamani, Anna Nagar Rountana, Shanthi Colony, Blue Star, 12th Main Road, Thirumangalam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachala"
    },
    {
      "Route No": 4,
      "Bus Route": "Perambur",
      "Starting Point": "Perambur Rly Stn (6:15 am)",
      "Via":
          "Perambur Rly Station, Perambur Bus Stand, B.B Road, Jeeva Station, BNC Mill, Otteri, T.B. Hospital, Ayanavaram Signal, ESI, Medavakkam, Murugan Hospital Chinthamani, Anna Nagar Rountana, Shanthi Colony, Blue Star, 12th Main Road, Thirumangalam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachalapathy Kalya"
    },
    {
      "Route No": 7,
      "Bus Route": "Moolakadai",
      "Starting Point": "Moolakadai (6:30 am)",
      "Via":
          "Moolakadai, Sembiyam Don Bosco, TVK Nagar Bus Stand, Periyar Nagar, Anna Silai -Don Bosco, Welding Shop, Retteri, Senthil Nagar, Anna Nagar West Depot, Koyambedu -Rohini Theater, Nerkundram, MGR University, Madhuravoil Ration Shop, Madhuravoil Market, Madhuravoil Bridge Signal, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
    },
    {
      "Route No": 8,
      "Bus Route": "Valluvar Kottam",
      "Starting Point": "Anna Statue (6:40 am)",
      "Via":
          "Anna Statue, Nungambakkam Police Station, Sterling Road (sangeetha Hotel), Chetpet Bus stop, Ega Theatre, Taylors Road, Aminchikarai Market, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil, Arumbakkam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle- B"
    },
    {
      "Route No": 9,
      "Bus Route": "Lucas TVS",
      "Starting Point": "Lucas TVS (6:40 am)",
      "Via":
          "Lucas TVS, Britannia, Ambattur Estate, Telephone Exchange, Dunlop, Canara Bank, Ambattur OT, Thirumullaivoil, Vaishnavi Nagar, Murugappa Polytechnic, Avadi B.S, Avadi Check Post, Ramarathna Theatre, Avadi Market, JB Estate, Murthy Nagar, Govarthanagiri, SA Polytechnic, Paruthipattu Bridge, Kaduvetti, Senneerkuppam -Bridge, Ponnamalle Bye pass"
    },
    {
      "Route No": "9A",
      "Bus Route": "Redhills",
      "Starting Point": "Redhills Bus Stand (6:20 am)",
      "Via":
          "Kavangarai,Puzhal,Surapedu,Kallikuppam,Pudur, Rakki,Thirumullaivoil,Vaishnavi,Avadi,Check post,Ramarathna,Avadi Market, Ricemill, Govarthanagiri,Paruthipettai, Kaduvetti, SA Engg college, Seneerkuppam, Poonamalle,Nazarathpettai,Chembarambakkam"
    },
    {
      "Route No": 10,
      "Bus Route": "Lucas TVS",
      "Starting Point": "Lucas TVS (6:40 am)",
      "Via":
          "Lucas TVS, Britannia, Ambattur Estate, Telephone Exchange, Dunlop, Canara Bank, Ambattur OT, Thirumullaivoil, Vaishnavi Nagar, Murugappa Polytechnic, Avadi B.S, Avadi Check Post, Ramarathna Theatre, Avadi Market, JB Estate, Murthy Nagar, Govarthanagiri, SA Polytechnic, Paruthipattu Bridge, Kaduvetti, Senneerkuppam -Bridge, Ponnamalle Bye pass"
    },
    {
      "Route No": 11,
      "Bus Route": "Lotus Colony",
      "Starting Point": "Lotus Colony (6:45 am)",
      "Via":
          "Lotus Colony, K4 Police Station, Sixth Avenue (EB Office), 18th Main Road corner, West Depot, Thirumangalam, Koyambedu -Rohini Theater, Nerkundram, MGR University, Madhuravoil Ration Shop, Madhuravoil Market, Madhuravoil Bridge Signal, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
    },
    {
      "Route No": 12,
      "Bus Route": "Thirumangalam signal",
      "Starting Point": "Thirumangalam signal (6:35 am)",
      "Via":
          "Thirumanagalam Signal -EB, Vivek\\u2019s , Collector Nagar, Golden Flats, Wavin, West Depot (Mugapair), State Bank, Madhuravoil Bridge, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
    },
    {
      "Route No": 13,
      "Bus Route": "Lucas TVS",
      "Starting Point": "Lucas TVS (6:40 am)",
      "Via":
          "Lucas TVS, Korattur, Telephone Exchange, Dunlop, Canara Bank, Ambattur OT, Thirumullaivoil, Vaishnavi Nagar, Murugappa Polytechnic, Avadi B.S, Avadi Check Post, Ramarathna Theatre, Avadi Market, JB Estate, Murthy Nagar, Govarthanagiri, SA Polytechnic, Paruthipattu Bridge, Kaduvetti, Senneerkuppam -Bridge, Ponnamalle Bye pass"
    },
    {
      "Route No": 14,
      "Bus Route": "Highcourt",
      "Starting Point": "Highcourt (6:30 am)",
      "Via":
          "High Court B.S, Central, Dhinathanthi, Ega Theatre, Taylors Road, Aminchikarai Market, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil Arumbakkam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle- Byepass"
    },
    {
      "Route No": 16,
      "Bus Route": "Ayanavaram",
      "Starting Point": "Noor Hotel (6:35 am)",
      "Via":
          "Ayanavaram-Noor Hotel, Joint office, ICF, Villivakkam (Kalpana), Nadhamuni Theatre, Sidco Nagar, Lucas, Korattur, Korattur Police station, Telephone Exchange, Madhuravoil Bridge, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
    },
    {
      "Route No": 17,
      "Bus Route": "MKB Nagar",
      "Starting Point": "MKB Nagar (6:15 am)",
      "Via":
          "MKB Nagar, Ambedkar College, Sharma Nagar, Moolakadai, Madhavaram Rountana, Retteri, Senthil Nagar, Anna Nagar West Depot, Koyambedu -Rohini Theater, Nerkundram, MGR University, Madhuravoil Ration Shop, Madhuravoil Market, Madhuravoil Bridge Signal, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
    },
    {
      "Route No": 20,
      "Bus Route": "Thirumangalam signal",
      "Starting Point": "Thirumangalam signal (6:35 am)",
      "Via":
          "Thirumanagalam Signal -EB, Vivek\\u2019s , Collector Nagar, Golden Flats, Wavin, DAV School, 7H Bus Stop, Vellammal School, Nolambur Police Station, Nolambur Water Tank, West Depot (Mugapair), State Bank, Madhuravoil Bridge, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
    },
    {
      "Route No": 21,
      "Bus Route": "Triplicane",
      "Starting Point": "Gosha Hospital (6:20 am)",
      "Via":
          "Gosha Hospital, Ratna Cafe, Ameermahal (Jam bazar), Royapettah Police Station, Llyods Raod, Music Academy, Alwarpet Bridge, Park Sheraton Hotel, Nandanam Signal, YMCA, Saidapet Subway, Chinna Malai (Court), Guindy-petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba"
    },
    {
      "Route No": 22,
      "Bus Route": "Mylapore",
      "Starting Point": "Yellow Pages (6:35 am)",
      "Via":
          "Yellow Pages (Petrol Bunk), Luz Corner, Mylapore Tank, Mandaveli Post Office, Kalliapa Hospital, Adyar Gate, Kottur Puram, Guindy-Petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
    },
    {
      "Route No": 23,
      "Bus Route": "Santhome",
      "Starting Point": "Santhome Church (6:35 am)",
      "Via":
          "Santhome Church, Airtel Office, Mandaveli BS, Kalliapa Hospital, Adyar Gate, Kottur Puram, Guindy-Petrol Bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
    },
    {
      "Route No": 24,
      "Bus Route": "Mylapore",
      "Starting Point": "Yellow Pages (6:35 am)",
      "Via":
          "Yellow Pages (Petrol Bunk), Luz Corner, Mylapore Tank, Mandaveli Post Office, Kalliapa Hospital, Adyar Gate, Kottur Puram, Guindy-Petrol bunk, Kathipara, Butt Road Nandambakkam, Ramapuram S & S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
    },
    {
      "Route No": 25,
      "Bus Route": "Chindaripet",
      "Starting Point": "Chindaripet Meen Market (6:30 am)",
      "Via":
          "Chindaripet-Meen Market (church), Albert rountana, Ashoka Hotel Circle, Rajarathnam stadium, Mount Road-Church Park school, Govt Eye Hospital, Ethiraj College, Jemini Bridge (Fast Food), DMS, SIET, Nandanam Signal, YMCA, Saidapet Subway, Chinna Malai (Court), Guindy-Petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S & S, Sakthi Nagar, Porur, Ramachandra Hospital,"
    },
    {
      "Route No": 27,
      "Bus Route": "Besant Nagar",
      "Starting Point": "Pillaiyar Koil (6:35 am)",
      "Via":
          "Pillayar Koil, Vannanthurai, Indira nagar Police station, Adyar Signal, Sangeetha Hotel, IIT, Guindy-petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
    },
    {
      "Route No": 28,
      "Bus Route": "Tiruvanmiyur",
      "Starting Point": "Palavakkam (6:35 am)",
      "Via":
          "Palavakkam, Thiruvanmiyur RTO, Marutheeswarar Koil, Thiruvanmiyur Hot Chips, Jayanthi Theatre, Indra Nagar Tank Sangeetha Hotel, IIT, Guindy-petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur Ramachandra Hospital, Iyyappanthangal, Kattupakkam Gumanchavadi, Sai baba Koil, Poonamalle By pass"
    },
    {
      "Route No": 29,
      "Bus Route": "Velachery",
      "Starting Point": "SRP Tools (6:35 am)",
      "Via":
          "SRP Tools, Tharamani, Baby Nagar, Vijaya Nagar BS, Dhandeeswarar Koil, Gurunanak College, Checkpost, Guindy Bus stop (Towards poonamalle) Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
    },
    {
      "Route No": 30,
      "Bus Route": "Chrompet",
      "Starting Point": "MEPZ (6:40 am)",
      "Via":
          "MEPZ, MIT Gate, Chrompet, New Saravana Stores, Pallavaram Bus Stop, Aaduthotti, Krishna Nagar, Polichilur Cross Road, Pammal, Anagaputhur, Kundrathur Therady, New bye pass Cross, CIT,"
    },
    {
      "Route No": 31,
      "Bus Route": "Madipakkam",
      "Starting Point": "Madipakkam Kaiveli (6:35 am)",
      "Via":
          "Madipakkam Kaiveli, Ram Nagar, Sadasivam Nagar, Balayya Garden, Ponniamman Koil, Ayyappan Koil, Madipakkam Koot Road, Kumaran Theatre, Vannuvampettai, Oil Mill, Jayalakshmi Theatre, St. Thomas Mount, Cement Road, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamallee"
    },
    {
      "Route No": 34,
      "Bus Route": "Meenambakkam",
      "Starting Point": "Meenambakkam (6:40 am)",
      "Via":
          "Meenambakkam, Pallavaram Bus Stop, Aaduthotti, Krishna Nagar, Polichilur Cross Road, Pammal, Anagaputhur, Kundrathur Therady, New bye pass Cross, CIT"
    },
    {
      "Route No": "34M",
      "Bus Route": "Mangadu",
      "Starting Point": "Kolanchery Koot Road (7:00 am)",
      "Via":
          "Kolanchery Koot Road, Kovur Koot Road, Muthukuman college, Mangadu Malliga Theatre, Mangadu, Kumananchavadi, Karayanchavady EB, Seneerkuppam, Poonamalle Bye pass, Nazarathpet"
    },
    {
      "Route No": 36,
      "Bus Route": "Medavakkam Koot Road",
      "Starting Point": "Medavakkam Koot Road (6:40 am)",
      "Via":
          "Medavakkam Koot road, Kamarajapuram, Poondy Bazar, Camp Road, East Tambaram, Tambaram Bridge, Krishna nagar, Mudichur, Mudichur Bye pass, Krishkinda, Somangalam"
    },
    {
      "Route No": 37,
      "Bus Route": "Medavakkam",
      "Starting Point": "Kovilambakkam (6:25 am)",
      "Via":
          "Kovilambakkam -KVB, Veeramani Nagar, Kelkattalai, Ganesh Nagar, Madipakkam Koot Road, Padala Vignesh Vinayagar, Krishna Sweets, Oil Mill, Vanuvampettai, Nanganallur, Pazhavanthangal Rly Stn, Santhi Petrol Bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamallee"
    },
    {
      "Route No": 39,
      "Bus Route": "Guduvanchery",
      "Starting Point": "Maraimalai Nagar (6:35 am)",
      "Via":
          "Maraimalai Nagar, Urapakkam, Vandalur, Perungalathur, Tambaram Bridge, Krishna nagar, Mudichur, Mudichur Bye pass, Krishkinda, Somangalam"
    },
    {
      "Route No": 41,
      "Bus Route": "Valluvar Kottam",
      "Starting Point": "Neel Metals ()",
      "Via":
          "Neel Metals, Periya road, Kodambakkam Bridge, Liberty, Gokulam Chits, Kodambakkam Power House, Ram Theatre, Vadapalani BS, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
    },
    {
      "Route No": 42,
      "Bus Route": "Ambal Nagar",
      "Starting Point": "CIPET (6:40 am)",
      "Via":
          "Ambal Nagar BS, Kasi Theatre, KK Nagar- ESI, KK Nagar Roundtana, PT Rajan Salai, Pondichery Guest House, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass,"
    },
    {
      "Route No": 44,
      "Bus Route": "T. Nagar",
      "Starting Point": "Nagesh Theatre (6:35 am)",
      "Via":
          "Nagesh Theatre, Rathna stores, Pondy Bazar, Duraisamy Sub-way, Arya Gowda Indian bank, Ayodhya Mandapam, Postal colony Bus stop, Seventh avenue Police booth, Eleventh avenue water tank (Pazha Mudir solai), Ashok Pillar,ESI,KK Nagar Rountana, Saravanabavan,Aavichi, Virugambakkam,Vembuliamman koil, Valasaravakkam,Kesavardhini, Alwarthirunagar,Porur, Ramachandra Hospital,Iyyappanthangal"
    },
    {
      "Route No": 45,
      "Bus Route": "T. Nagar",
      "Starting Point": "Krishnaveni Theatre (6:40 am)",
      "Via":
          "Krishnaveni Theatre, CIT Nagar, Kaveri nagar, Aranganathar Sub way Up, Mettupalayam Lakshmi Hospital, Mettupalayam Bus stop, Srinivasa Theatre, Eleventh avenue water tank, Udayam theatre opposite, 100 feet road petrol bunk,, Lakshmi Surthi Opp, Kamala Theatre, Vadapalani BS, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramacha"
    },
    {
      "Route No": 46,
      "Bus Route": "T. Nagar",
      "Starting Point": "Nagesh Theatre (6:35 am)",
      "Via":
          "Nagesh Theatre, Rathna stores, Pondy Bazar, Duraisamy Sub-way, Arya Gowda Indian bank, Ayodhya Mandapam, Postal colony Bus stop, Seventh avenue Police booth, Eleventh avenue water tank (Pazha Mudir solai), Ashok Pillar, ESI, KK Nagar Rountana, Saravanabavn house, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospita"
    },
    {
      "Route No": 47,
      "Bus Route": "T. Nagar",
      "Starting Point": "Nagesh Theatre (6:35 am)",
      "Via":
          "Nagesh Theatre, Rathna stores, Pondy Bazar, Duraisamy Sub-way, Arya Gowda Indian bank, Ayodhya Mandapam, Postal colony Bus stop, Seventh avenue Police booth, Eleventh avenue water tank (Pazha Mudir solai), Ashok Pillar, ESI,KK Nagar Rountana, Saravanabavn house,Aavichi, Virugambakkam,Vembuliamman koil, Valasaravakkam,Kesavardhini, Alwarthirunagar, Porur,Ramachandra Hospital, Iyyapp"
    },
    {
      "Route No": 48,
      "Bus Route": "T. Nagar",
      "Starting Point": "Vani Mahal (6:40 am)",
      "Via":
          "Vani Mahal, Bazulla Road, North Usman Road(Opp to Vasantha & Co), Vivek & Co, Mahalingapuram, MLM kalyana Mandapam, Loyala college, Soolai medu Vasanth & Co, NM Road-Metha Nagar (Pazha Mudir solai), Sky walk, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil, Arumbakkam, Koyambedu -Rohini Theater , Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal,"
    },
    {
      "Route No": 50,
      "Bus Route": "Vadapalini",
      "Starting Point": "Ambika Emporium (6:35 am)",
      "Via":
          "Ambika Emporium, MMDA, SAF Games, CMBT, Chinmaya Nagar, Sai Nagar, Natesa Nagar, Elango Nagar, Virugampakkam Market, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Kumanchavadi, Sai baba Koil, Poonamalle By pass"
    },
    {
      "Route No": 51,
      "Bus Route": "T. Nagar",
      "Starting Point": "Vani Mahal (6:40 am)",
      "Via":
          "Vani Mahal, Bazulla Road, North Usman Road(Opp to Vasantha & Co), Vivek & Co, Mahalingapuram, MLM kalyana Mandapam, Loyala college, Soolai medu Vasanth & Co, NM Road-Metha Nagar (Pazha Mudir solai), Sky walk, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil Arumbakkam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal,"
    },
    {
      "Route No": 52,
      "Bus Route": "Valluvar Kottam",
      "Starting Point": "Anna Statue (6:40 am)",
      "Via":
          "Neel Metals, Periya road, Kodambakkam Bridge, Liberty, Gokulam Chits, Kodambakkam Power House, Ram Theatre, Vadapalani BS, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
    },
    {
      "Route No": 55,
      "Bus Route": "Porur",
      "Starting Point": "Sakthi Nagar (7:00 am)",
      "Via":
          "Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass, NazarathpetPettai"
    },
    {
      "Route No": "55A",
      "Bus Route": "Paikadai",
      "Starting Point": "Kolanchery Koot Road (6:45 am)",
      "Via":
          "Kolanchery Koot Road, Moondarm Kattalai, Madha Medical College, Kovur Bus Stand, Periyapannaichery, Gerugambakkam, Paikadai, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass, Nazarathpet"
    },
    {
      "Route No": 56,
      "Bus Route": "Kancheepuram",
      "Starting Point": "Housing Board (6:50 am)",
      "Via":
          "Housing Board, Collector Office, Mettu Street, Mongil Mandapam, Bus Stand (Saraswathi Stores), Kachabeeswarar Koil, Ekambareaswarar Koil, Vella gate, Meenakshi Hospital, Sriperumbudur High School,"
    },
    {
      "Route No": 57,
      "Bus Route": "Kanchipuram",
      "Starting Point": "Housing board (6:50 am)",
      "Via":
          "Housing Board, Collector Office, Mettu Street, Mongil Mandapam, Bus Stand (Saraswathi Stores), Kachabeeswarar Koil, Ekambareaswarar Koil, Vella gate, Meenakshi Hospital, Sriperumbudur High School"
    },
    {
      "Route No": 58,
      "Bus Route": "Kancheepuram",
      "Starting Point": "Periyar Nagar (6:35 am)",
      "Via":
          "Periyar Nagar, Toll Gate, Chetty Street, Rangasamy Kulam, Keera Mandapam, Mettu Street, Mongil Mandapam , Bus Stand (Saraswathi Stores), Kachabeeswarar Koil, Ekambareaswarar Koil, Vellagate, Meenakshi Hospital, Sunguvar Chatram, Sriperumbudur High School"
    },
    {
      "Route No": 60,
      "Bus Route": "Thiruvallur",
      "Starting Point": "Gandhi Nagar BS (6:35 am)",
      "Via":
          "Gandhi Nagar BS, Jaya School, DR Chit Funds, Thiruninravur Bridge, Murugan Koil, Tata Steels, Vemppampattu BS, Vemppampattu Rly Station, Kakkalur, Kakkalur Bye pass, Thiruvallur Petrol Bunk, LIC, GRT, Manavala Nagar, Ondikuppam, Aran Voil, Aran Voil Kuppam, Pudhu Chatram, Nemam, Vellavedu, Thirumazhisai"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: TransportDelegate());
                },
                icon: Icon(Icons.search)),
          ],
          title: Text(
            'Bus Routes',
            style: GoogleFonts.montserrat(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/activites_bg.png'),
            ),
          ),
          child: ListView.builder(
            itemCount: bus_routes.length,
            itemBuilder: (BuildContext context, int index) {
              return SingleBus(
                route: bus_routes[index]['Route No'].toString(),
                city: bus_routes[index]['Bus Route'],
                start_time: bus_routes[index]['Starting Point'].toString(),
                via: bus_routes[index]['Via'],
                //  image: oatList[index]['path'],
              );
            },
          ),
        ),
      ),
    );
  }
}

class SingleBus extends StatelessWidget {
  final String route;
  final String city;
  final String start_time;
  final String via;

  const SingleBus({Key key, this.route, this.city, this.start_time, this.via})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PorductDetails(
                      route: route,
                      city: city,
                      start_time: start_time,
                      via: via,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withAlpha(100),
                  blurRadius: 10.0),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: Container(
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/bus.jpeg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Container(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.46,
                          child: Text(
                            city,
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )),
                      SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text(
                          route,
                          style: GoogleFonts.montserrat(
                            fontSize: 17,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.48,
                          child: Text(
                            start_time,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PorductDetails extends StatefulWidget {
  final String route;
  final String city;
  final String start_time;
  final String via;

  const PorductDetails(
      {Key key, this.route, this.city, this.start_time, this.via})
      : super(key: key);
  @override
  _PorductDetailsState createState() => _PorductDetailsState();
}

class _PorductDetailsState extends State<PorductDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          widget.city,
          style: GoogleFonts.montserrat(),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/activites_bg.png'),
          ),
        ),
        child: ListView(
          children: [
            new Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 250,
              child: GridTile(
                child: Container(
                    color: Colors.white, child: Image.asset('assets/bus.jpeg')),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Bus Route    ',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.43,
                            child: Text(
                              widget.city,
                              style: GoogleFonts.montserrat(
                                color: Colors.blue.shade900,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Route No      ',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.43,
                            child: Text(
                              widget.route,
                              style: GoogleFonts.montserrat(
                                color: Colors.blue.shade900,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Start Time',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.43,
                                child: Text(
                                  widget.start_time,
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.blue.shade900,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    FlipCard(
                      front: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withAlpha(100),
                                blurRadius: 10.0),
                          ],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/ambercard.png'),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Via',
                            style: GoogleFonts.montserrat(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      back: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade900,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withAlpha(100),
                                blurRadius: 10.0),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20),
                            Center(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  widget.via,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Bus {
  final String route;
  final String city;
  final String start_time;
  final String via;

  Bus({
    this.route,
    this.start_time,
    this.city,
    this.via,
  });
}

const buses = [
  {
    "Route No": 1,
    "Bus Route": "Tiruvotriyur",
    "Starting Point": "Lift Gate (6:15 am)",
    "Via":
        "Lift Gate, Wimco Nagar, Ajax Bus Stand, Vellyanchetty School, Theradi, Raja Kadai, Toll Gate Tondiarpet Appolo Hospital, Kasi Medu, Kal Mandapam - Police Station, Royapuram Signal, Highcourt, Central, Dhinathanthi, Ega Theater, Taylors Road, Aminchikarai Market, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil, Arumbakkam, Koyambedu -Rohini Theater, Nerkundram, Madhura"
  },
  {
    "Route No": 2,
    "Bus Route": "TVK Park",
    "Starting Point": "TVK Park (6:45 am)",
    "Via":
        "TVK Park, Chinthamani, Anna Nagar Rountana, Shanthi Colony, Blue Star, 12th Main Road, Thirumangalam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle- Byepass"
  },
  {
    "Route No": 3,
    "Bus Route": "Doveton",
    "Starting Point": "Silverstar Hotel (6:25 am)",
    "Via":
        "Silver Star Hotel, Gangadheeswarar koil, Aysha Hospital Bus stop, Abirami theatre, Kellys (Nagappa Motors), Kilpauk Garden, Kellys Kallarai( New Avadi road junction), Chinthamani, Anna Nagar Rountana, Shanthi Colony, Blue Star, 12th Main Road, Thirumangalam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachala"
  },
  {
    "Route No": 4,
    "Bus Route": "Perambur",
    "Starting Point": "Perambur Rly Stn (6:15 am)",
    "Via":
        "Perambur Rly Station, Perambur Bus Stand, B.B Road, Jeeva Station, BNC Mill, Otteri, T.B. Hospital, Ayanavaram Signal, ESI, Medavakkam, Murugan Hospital Chinthamani, Anna Nagar Rountana, Shanthi Colony, Blue Star, 12th Main Road, Thirumangalam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachalapathy Kalya"
  },
  {
    "Route No": 7,
    "Bus Route": "Moolakadai",
    "Starting Point": "Moolakadai (6:30 am)",
    "Via":
        "Moolakadai, Sembiyam Don Bosco, TVK Nagar Bus Stand, Periyar Nagar, Anna Silai -Don Bosco, Welding Shop, Retteri, Senthil Nagar, Anna Nagar West Depot, Koyambedu -Rohini Theater, Nerkundram, MGR University, Madhuravoil Ration Shop, Madhuravoil Market, Madhuravoil Bridge Signal, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
  },
  {
    "Route No": 8,
    "Bus Route": "Valluvar Kottam",
    "Starting Point": "Anna Statue (6:40 am)",
    "Via":
        "Anna Statue, Nungambakkam Police Station, Sterling Road (sangeetha Hotel), Chetpet Bus stop, Ega Theatre, Taylors Road, Aminchikarai Market, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil, Arumbakkam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle- B"
  },
  {
    "Route No": 9,
    "Bus Route": "Lucas TVS",
    "Starting Point": "Lucas TVS (6:40 am)",
    "Via":
        "Lucas TVS, Britannia, Ambattur Estate, Telephone Exchange, Dunlop, Canara Bank, Ambattur OT, Thirumullaivoil, Vaishnavi Nagar, Murugappa Polytechnic, Avadi B.S, Avadi Check Post, Ramarathna Theatre, Avadi Market, JB Estate, Murthy Nagar, Govarthanagiri, SA Polytechnic, Paruthipattu Bridge, Kaduvetti, Senneerkuppam -Bridge, Ponnamalle Bye pass"
  },
  {
    "Route No": "9A",
    "Bus Route": "Redhills",
    "Starting Point": "Redhills Bus Stand (6:20 am)",
    "Via":
        "Kavangarai,Puzhal,Surapedu,Kallikuppam,Pudur, Rakki,Thirumullaivoil,Vaishnavi,Avadi,Check post,Ramarathna,Avadi Market, Ricemill, Govarthanagiri,Paruthipettai, Kaduvetti, SA Engg college, Seneerkuppam, Poonamalle,Nazarathpettai,Chembarambakkam"
  },
  {
    "Route No": 10,
    "Bus Route": "Lucas TVS",
    "Starting Point": "Lucas TVS (6:40 am)",
    "Via":
        "Lucas TVS, Britannia, Ambattur Estate, Telephone Exchange, Dunlop, Canara Bank, Ambattur OT, Thirumullaivoil, Vaishnavi Nagar, Murugappa Polytechnic, Avadi B.S, Avadi Check Post, Ramarathna Theatre, Avadi Market, JB Estate, Murthy Nagar, Govarthanagiri, SA Polytechnic, Paruthipattu Bridge, Kaduvetti, Senneerkuppam -Bridge, Ponnamalle Bye pass"
  },
  {
    "Route No": 11,
    "Bus Route": "Lotus Colony",
    "Starting Point": "Lotus Colony (6:45 am)",
    "Via":
        "Lotus Colony, K4 Police Station, Sixth Avenue (EB Office), 18th Main Road corner, West Depot, Thirumangalam, Koyambedu -Rohini Theater, Nerkundram, MGR University, Madhuravoil Ration Shop, Madhuravoil Market, Madhuravoil Bridge Signal, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
  },
  {
    "Route No": 12,
    "Bus Route": "Thirumangalam signal",
    "Starting Point": "Thirumangalam signal (6:35 am)",
    "Via":
        "Thirumanagalam Signal -EB, Vivek\\u2019s , Collector Nagar, Golden Flats, Wavin, West Depot (Mugapair), State Bank, Madhuravoil Bridge, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
  },
  {
    "Route No": 13,
    "Bus Route": "Lucas TVS",
    "Starting Point": "Lucas TVS (6:40 am)",
    "Via":
        "Lucas TVS, Korattur, Telephone Exchange, Dunlop, Canara Bank, Ambattur OT, Thirumullaivoil, Vaishnavi Nagar, Murugappa Polytechnic, Avadi B.S, Avadi Check Post, Ramarathna Theatre, Avadi Market, JB Estate, Murthy Nagar, Govarthanagiri, SA Polytechnic, Paruthipattu Bridge, Kaduvetti, Senneerkuppam -Bridge, Ponnamalle Bye pass"
  },
  {
    "Route No": 14,
    "Bus Route": "Highcourt",
    "Starting Point": "Highcourt (6:30 am)",
    "Via":
        "High Court B.S, Central, Dhinathanthi, Ega Theatre, Taylors Road, Aminchikarai Market, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil Arumbakkam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal, Vengatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle- Byepass"
  },
  {
    "Route No": 16,
    "Bus Route": "Ayanavaram",
    "Starting Point": "Noor Hotel (6:35 am)",
    "Via":
        "Ayanavaram-Noor Hotel, Joint office, ICF, Villivakkam (Kalpana), Nadhamuni Theatre, Sidco Nagar, Lucas, Korattur, Korattur Police station, Telephone Exchange, Madhuravoil Bridge, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
  },
  {
    "Route No": 17,
    "Bus Route": "MKB Nagar",
    "Starting Point": "MKB Nagar (6:15 am)",
    "Via":
        "MKB Nagar, Ambedkar College, Sharma Nagar, Moolakadai, Madhavaram Rountana, Retteri, Senthil Nagar, Anna Nagar West Depot, Koyambedu -Rohini Theater, Nerkundram, MGR University, Madhuravoil Ration Shop, Madhuravoil Market, Madhuravoil Bridge Signal, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
  },
  {
    "Route No": 20,
    "Bus Route": "Thirumangalam signal",
    "Starting Point": "Thirumangalam signal (6:35 am)",
    "Via":
        "Thirumanagalam Signal -EB, Vivek\\u2019s , Collector Nagar, Golden Flats, Wavin, DAV School, 7H Bus Stop, Vellammal School, Nolambur Police Station, Nolambur Water Tank, West Depot (Mugapair), State Bank, Madhuravoil Bridge, Venkatachalapathy Kalyana Mandapam, Vellappan Chavadi, Poonamalle -Byepass"
  },
  {
    "Route No": 21,
    "Bus Route": "Triplicane",
    "Starting Point": "Gosha Hospital (6:20 am)",
    "Via":
        "Gosha Hospital, Ratna Cafe, Ameermahal (Jam bazar), Royapettah Police Station, Llyods Raod, Music Academy, Alwarpet Bridge, Park Sheraton Hotel, Nandanam Signal, YMCA, Saidapet Subway, Chinna Malai (Court), Guindy-petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba"
  },
  {
    "Route No": 22,
    "Bus Route": "Mylapore",
    "Starting Point": "Yellow Pages (6:35 am)",
    "Via":
        "Yellow Pages (Petrol Bunk), Luz Corner, Mylapore Tank, Mandaveli Post Office, Kalliapa Hospital, Adyar Gate, Kottur Puram, Guindy-Petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
  },
  {
    "Route No": 23,
    "Bus Route": "Santhome",
    "Starting Point": "Santhome Church (6:35 am)",
    "Via":
        "Santhome Church, Airtel Office, Mandaveli BS, Kalliapa Hospital, Adyar Gate, Kottur Puram, Guindy-Petrol Bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
  },
  {
    "Route No": 24,
    "Bus Route": "Mylapore",
    "Starting Point": "Yellow Pages (6:35 am)",
    "Via":
        "Yellow Pages (Petrol Bunk), Luz Corner, Mylapore Tank, Mandaveli Post Office, Kalliapa Hospital, Adyar Gate, Kottur Puram, Guindy-Petrol bunk, Kathipara, Butt Road Nandambakkam, Ramapuram S & S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
  },
  {
    "Route No": 25,
    "Bus Route": "Chindaripet",
    "Starting Point": "Chindaripet Meen Market (6:30 am)",
    "Via":
        "Chindaripet-Meen Market (church), Albert rountana, Ashoka Hotel Circle, Rajarathnam stadium, Mount Road-Church Park school, Govt Eye Hospital, Ethiraj College, Jemini Bridge (Fast Food), DMS, SIET, Nandanam Signal, YMCA, Saidapet Subway, Chinna Malai (Court), Guindy-Petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S & S, Sakthi Nagar, Porur, Ramachandra Hospital,"
  },
  {
    "Route No": 27,
    "Bus Route": "Besant Nagar",
    "Starting Point": "Pillaiyar Koil (6:35 am)",
    "Via":
        "Pillayar Koil, Vannanthurai, Indira nagar Police station, Adyar Signal, Sangeetha Hotel, IIT, Guindy-petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
  },
  {
    "Route No": 28,
    "Bus Route": "Tiruvanmiyur",
    "Starting Point": "Palavakkam (6:35 am)",
    "Via":
        "Palavakkam, Thiruvanmiyur RTO, Marutheeswarar Koil, Thiruvanmiyur Hot Chips, Jayanthi Theatre, Indra Nagar Tank Sangeetha Hotel, IIT, Guindy-petrol bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur Ramachandra Hospital, Iyyappanthangal, Kattupakkam Gumanchavadi, Sai baba Koil, Poonamalle By pass"
  },
  {
    "Route No": 29,
    "Bus Route": "Velachery",
    "Starting Point": "SRP Tools (6:35 am)",
    "Via":
        "SRP Tools, Tharamani, Baby Nagar, Vijaya Nagar BS, Dhandeeswarar Koil, Gurunanak College, Checkpost, Guindy Bus stop (Towards poonamalle) Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
  },
  {
    "Route No": 30,
    "Bus Route": "Chrompet",
    "Starting Point": "MEPZ (6:40 am)",
    "Via":
        "MEPZ, MIT Gate, Chrompet, New Saravana Stores, Pallavaram Bus Stop, Aaduthotti, Krishna Nagar, Polichilur Cross Road, Pammal, Anagaputhur, Kundrathur Therady, New bye pass Cross, CIT,"
  },
  {
    "Route No": 31,
    "Bus Route": "Madipakkam",
    "Starting Point": "Madipakkam Kaiveli (6:35 am)",
    "Via":
        "Madipakkam Kaiveli, Ram Nagar, Sadasivam Nagar, Balayya Garden, Ponniamman Koil, Ayyappan Koil, Madipakkam Koot Road, Kumaran Theatre, Vannuvampettai, Oil Mill, Jayalakshmi Theatre, St. Thomas Mount, Cement Road, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamallee"
  },
  {
    "Route No": 34,
    "Bus Route": "Meenambakkam",
    "Starting Point": "Meenambakkam (6:40 am)",
    "Via":
        "Meenambakkam, Pallavaram Bus Stop, Aaduthotti, Krishna Nagar, Polichilur Cross Road, Pammal, Anagaputhur, Kundrathur Therady, New bye pass Cross, CIT"
  },
  {
    "Route No": "34M",
    "Bus Route": "Mangadu",
    "Starting Point": "Kolanchery Koot Road (7:00 am)",
    "Via":
        "Kolanchery Koot Road, Kovur Koot Road, Muthukuman college, Mangadu Malliga Theatre, Mangadu, Kumananchavadi, Karayanchavady EB, Seneerkuppam, Poonamalle Bye pass, Nazarathpet"
  },
  {
    "Route No": 36,
    "Bus Route": "Medavakkam Koot Road",
    "Starting Point": "Medavakkam Koot Road (6:40 am)",
    "Via":
        "Medavakkam Koot road, Kamarajapuram, Poondy Bazar, Camp Road, East Tambaram, Tambaram Bridge, Krishna nagar, Mudichur, Mudichur Bye pass, Krishkinda, Somangalam"
  },
  {
    "Route No": 37,
    "Bus Route": "Medavakkam",
    "Starting Point": "Kovilambakkam (6:25 am)",
    "Via":
        "Kovilambakkam -KVB, Veeramani Nagar, Kelkattalai, Ganesh Nagar, Madipakkam Koot Road, Padala Vignesh Vinayagar, Krishna Sweets, Oil Mill, Vanuvampettai, Nanganallur, Pazhavanthangal Rly Stn, Santhi Petrol Bunk, Kathipara, Butt Road, Nandambakkam, Ramapuram, S& S, Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamallee"
  },
  {
    "Route No": 39,
    "Bus Route": "Guduvanchery",
    "Starting Point": "Maraimalai Nagar (6:35 am)",
    "Via":
        "Maraimalai Nagar, Urapakkam, Vandalur, Perungalathur, Tambaram Bridge, Krishna nagar, Mudichur, Mudichur Bye pass, Krishkinda, Somangalam"
  },
  {
    "Route No": 41,
    "Bus Route": "Valluvar Kottam",
    "Starting Point": "Neel Metals ()",
    "Via":
        "Neel Metals, Periya road, Kodambakkam Bridge, Liberty, Gokulam Chits, Kodambakkam Power House, Ram Theatre, Vadapalani BS, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
  },
  {
    "Route No": 42,
    "Bus Route": "Ambal Nagar",
    "Starting Point": "CIPET (6:40 am)",
    "Via":
        "Ambal Nagar BS, Kasi Theatre, KK Nagar- ESI, KK Nagar Roundtana, PT Rajan Salai, Pondichery Guest House, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass,"
  },
  {
    "Route No": 44,
    "Bus Route": "T. Nagar",
    "Starting Point": "Nagesh Theatre (6:35 am)",
    "Via":
        "Nagesh Theatre, Rathna stores, Pondy Bazar, Duraisamy Sub-way, Arya Gowda Indian bank, Ayodhya Mandapam, Postal colony Bus stop, Seventh avenue Police booth, Eleventh avenue water tank (Pazha Mudir solai), Ashok Pillar,ESI,KK Nagar Rountana, Saravanabavan,Aavichi, Virugambakkam,Vembuliamman koil, Valasaravakkam,Kesavardhini, Alwarthirunagar,Porur, Ramachandra Hospital,Iyyappanthangal"
  },
  {
    "Route No": 45,
    "Bus Route": "T. Nagar",
    "Starting Point": "Krishnaveni Theatre (6:40 am)",
    "Via":
        "Krishnaveni Theatre, CIT Nagar, Kaveri nagar, Aranganathar Sub way Up, Mettupalayam Lakshmi Hospital, Mettupalayam Bus stop, Srinivasa Theatre, Eleventh avenue water tank, Udayam theatre opposite, 100 feet road petrol bunk,, Lakshmi Surthi Opp, Kamala Theatre, Vadapalani BS, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramacha"
  },
  {
    "Route No": 46,
    "Bus Route": "T. Nagar",
    "Starting Point": "Nagesh Theatre (6:35 am)",
    "Via":
        "Nagesh Theatre, Rathna stores, Pondy Bazar, Duraisamy Sub-way, Arya Gowda Indian bank, Ayodhya Mandapam, Postal colony Bus stop, Seventh avenue Police booth, Eleventh avenue water tank (Pazha Mudir solai), Ashok Pillar, ESI, KK Nagar Rountana, Saravanabavn house, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospita"
  },
  {
    "Route No": 47,
    "Bus Route": "T. Nagar",
    "Starting Point": "Nagesh Theatre (6:35 am)",
    "Via":
        "Nagesh Theatre, Rathna stores, Pondy Bazar, Duraisamy Sub-way, Arya Gowda Indian bank, Ayodhya Mandapam, Postal colony Bus stop, Seventh avenue Police booth, Eleventh avenue water tank (Pazha Mudir solai), Ashok Pillar, ESI,KK Nagar Rountana, Saravanabavn house,Aavichi, Virugambakkam,Vembuliamman koil, Valasaravakkam,Kesavardhini, Alwarthirunagar, Porur,Ramachandra Hospital, Iyyapp"
  },
  {
    "Route No": 48,
    "Bus Route": "T. Nagar",
    "Starting Point": "Vani Mahal (6:40 am)",
    "Via":
        "Vani Mahal, Bazulla Road, North Usman Road(Opp to Vasantha & Co), Vivek & Co, Mahalingapuram, MLM kalyana Mandapam, Loyala college, Soolai medu Vasanth & Co, NM Road-Metha Nagar (Pazha Mudir solai), Sky walk, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil, Arumbakkam, Koyambedu -Rohini Theater , Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal,"
  },
  {
    "Route No": 50,
    "Bus Route": "Vadapalini",
    "Starting Point": "Ambika Emporium (6:35 am)",
    "Via":
        "Ambika Emporium, MMDA, SAF Games, CMBT, Chinmaya Nagar, Sai Nagar, Natesa Nagar, Elango Nagar, Virugampakkam Market, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Kumanchavadi, Sai baba Koil, Poonamalle By pass"
  },
  {
    "Route No": 51,
    "Bus Route": "T. Nagar",
    "Starting Point": "Vani Mahal (6:40 am)",
    "Via":
        "Vani Mahal, Bazulla Road, North Usman Road(Opp to Vasantha & Co), Vivek & Co, Mahalingapuram, MLM kalyana Mandapam, Loyala college, Soolai medu Vasanth & Co, NM Road-Metha Nagar (Pazha Mudir solai), Sky walk, Anna Nagar Arch, NSK Nagar, Panchali Amman Koil Arumbakkam, Koyambedu -Rohini Theater, Nerkundram, Madhuravoil Ration shop, Madhuravoil Market, Madhuravoil Bridge\\/Signal,"
  },
  {
    "Route No": 52,
    "Bus Route": "Valluvar Kottam",
    "Starting Point": "Anna Statue (6:40 am)",
    "Via":
        "Neel Metals, Periya road, Kodambakkam Bridge, Liberty, Gokulam Chits, Kodambakkam Power House, Ram Theatre, Vadapalani BS, Aavichi, Virugambakkam, Vembuliamman koil, Valasaravakkam, Kesavardhini, Alwarthirunagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass"
  },
  {
    "Route No": 55,
    "Bus Route": "Porur",
    "Starting Point": "Sakthi Nagar (7:00 am)",
    "Via":
        "Sakthi Nagar, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass, NazarathpetPettai"
  },
  {
    "Route No": "55A",
    "Bus Route": "Paikadai",
    "Starting Point": "Kolanchery Koot Road (6:45 am)",
    "Via":
        "Kolanchery Koot Road, Moondarm Kattalai, Madha Medical College, Kovur Bus Stand, Periyapannaichery, Gerugambakkam, Paikadai, Porur, Ramachandra Hospital, Iyyappanthangal, Kattupakkam, Gumanchavadi, Sai baba Koil, Poonamalle By pass, Nazarathpet"
  },
  {
    "Route No": 56,
    "Bus Route": "Kancheepuram",
    "Starting Point": "Housing Board (6:50 am)",
    "Via":
        "Housing Board, Collector Office, Mettu Street, Mongil Mandapam, Bus Stand (Saraswathi Stores), Kachabeeswarar Koil, Ekambareaswarar Koil, Vella gate, Meenakshi Hospital, Sriperumbudur High School,"
  },
  {
    "Route No": 57,
    "Bus Route": "Kanchipuram",
    "Starting Point": "Housing board (6:50 am)",
    "Via":
        "Housing Board, Collector Office, Mettu Street, Mongil Mandapam, Bus Stand (Saraswathi Stores), Kachabeeswarar Koil, Ekambareaswarar Koil, Vella gate, Meenakshi Hospital, Sriperumbudur High School"
  },
  {
    "Route No": 58,
    "Bus Route": "Kancheepuram",
    "Starting Point": "Periyar Nagar (6:35 am)",
    "Via":
        "Periyar Nagar, Toll Gate, Chetty Street, Rangasamy Kulam, Keera Mandapam, Mettu Street, Mongil Mandapam , Bus Stand (Saraswathi Stores), Kachabeeswarar Koil, Ekambareaswarar Koil, Vellagate, Meenakshi Hospital, Sunguvar Chatram, Sriperumbudur High School"
  },
  {
    "Route No": 60,
    "Bus Route": "Thiruvallur",
    "Starting Point": "Gandhi Nagar BS (6:35 am)",
    "Via":
        "Gandhi Nagar BS, Jaya School, DR Chit Funds, Thiruninravur Bridge, Murugan Koil, Tata Steels, Vemppampattu BS, Vemppampattu Rly Station, Kakkalur, Kakkalur Bye pass, Thiruvallur Petrol Bunk, LIC, GRT, Manavala Nagar, Ondikuppam, Aran Voil, Aran Voil Kuppam, Pudhu Chatram, Nemam, Vellavedu, Thirumazhisai"
  }
];

List<dynamic> loadBus() {
  List<dynamic> response = buses;
  List<Bus> hospitals = [];
  response.forEach((e) {
    hospitals.add(Bus(
      via: e['Via'],
      start_time: e['Starting Point'].toString(),
      route: e['Route No'].toString(),
      city: e['Bus Route'],
    ));
  });
  return hospitals;
}

class TransportDelegate extends SearchDelegate<Bus> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text(query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = query.isEmpty
        ? loadBus()
        : loadBus()
            .where((p) =>
                p.city.toLowerCase().startsWith(query) ||
                p.city.toLowerCase().contains(query) ||
                p.city.startsWith(query) ||
                p.route.toLowerCase().startsWith(query) ||
                p.route.startsWith(query) ||
                p.start_time.toLowerCase().startsWith(query) ||
                p.start_time.startsWith(query) ||
                p.start_time.contains(query) ||
                p.via.startsWith(query) ||
                p.via.toLowerCase().startsWith(query) ||
                p.via.toLowerCase().contains(query))
            .toList();

    return myList.isEmpty
        ? Center(
            child: Text(
            'No Results Found...',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ))
        : ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final Bus listItem = myList[index];
              return SingleBus(
                via: listItem.via,
                city: listItem.city,
                start_time: listItem.start_time,
                route: listItem.route,
              );
            },
            itemCount: myList.length,
          );
  }
}
