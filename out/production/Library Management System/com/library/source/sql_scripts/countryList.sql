CREATE TABLE countries (
id SMALLINT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(60) NOT NULL,
iso_code VARCHAR(2) NOT NULL,
PRIMARY KEY (id));

SELECT * FROM countries;

INSERT INTO countries(name,iso_code) VALUES ('Afghanistan','AF');
INSERT INTO countries(name,iso_code) VALUES ('Aland Islands','AX');
INSERT INTO countries(name,iso_code) VALUES ('Albania','AL');
INSERT INTO countries(name,iso_code) VALUES ('Algeria','DZ');
INSERT INTO countries(name,iso_code) VALUES ('American Samoa','AS');
INSERT INTO countries(name,iso_code) VALUES ('Andorra','AD');
INSERT INTO countries(name,iso_code) VALUES ('Angola','AO');
INSERT INTO countries(name,iso_code) VALUES ('Anguilla','AI');
INSERT INTO countries(name,iso_code) VALUES ('Antarctica','AQ');
INSERT INTO countries(name,iso_code) VALUES ('Antigua And Barbuda','AG');
INSERT INTO countries(name,iso_code) VALUES ('Argentina','AR');
INSERT INTO countries(name,iso_code) VALUES ('Armenia','AM');
INSERT INTO countries(name,iso_code) VALUES ('Aruba','AW');
INSERT INTO countries(name,iso_code) VALUES ('Australia','AU');
INSERT INTO countries(name,iso_code) VALUES ('Austria','AT');
INSERT INTO countries(name,iso_code) VALUES ('Azerbaijan','AZ');
INSERT INTO countries(name,iso_code) VALUES ('Bahamas The','BS');
INSERT INTO countries(name,iso_code) VALUES ('Bahrain','BH');
INSERT INTO countries(name,iso_code) VALUES ('Bangladesh','BD');
INSERT INTO countries(name,iso_code) VALUES ('Barbados','BB');
INSERT INTO countries(name,iso_code) VALUES ('Belarus','BY');
INSERT INTO countries(name,iso_code) VALUES ('Belgium','BE');
INSERT INTO countries(name,iso_code) VALUES ('Belize','BZ');
INSERT INTO countries(name,iso_code) VALUES ('Benin','BJ');
INSERT INTO countries(name,iso_code) VALUES ('Bermuda','BM');
INSERT INTO countries(name,iso_code) VALUES ('Bhutan','BT');
INSERT INTO countries(name,iso_code) VALUES ('Bolivia','BO');
INSERT INTO countries(name,iso_code) VALUES ('Bonaire, Sint Eustatius and Saba','BQ');
INSERT INTO countries(name,iso_code) VALUES ('Bosnia and Herzegovina','BA');
INSERT INTO countries(name,iso_code) VALUES ('Botswana','BW');
INSERT INTO countries(name,iso_code) VALUES ('Bouvet Island','BV');
INSERT INTO countries(name,iso_code) VALUES ('Brazil','BR');
INSERT INTO countries(name,iso_code) VALUES ('British Indian Ocean Territory','IO');
INSERT INTO countries(name,iso_code) VALUES ('Brunei','BN');
INSERT INTO countries(name,iso_code) VALUES ('Bulgaria','BG');
INSERT INTO countries(name,iso_code) VALUES ('Burkina Faso','BF');
INSERT INTO countries(name,iso_code) VALUES ('Burundi','BI');
INSERT INTO countries(name,iso_code) VALUES ('Cambodia','KH');
INSERT INTO countries(name,iso_code) VALUES ('Cameroon','CM');
INSERT INTO countries(name,iso_code) VALUES ('Canada','CA');
INSERT INTO countries(name,iso_code) VALUES ('Cape Verde','CV');
INSERT INTO countries(name,iso_code) VALUES ('Cayman Islands','KY');
INSERT INTO countries(name,iso_code) VALUES ('Central African Republic','CF');
INSERT INTO countries(name,iso_code) VALUES ('Chad','TD');
INSERT INTO countries(name,iso_code) VALUES ('Chile','CL');
INSERT INTO countries(name,iso_code) VALUES ('China','CN');
INSERT INTO countries(name,iso_code) VALUES ('Christmas Island','CX');
INSERT INTO countries(name,iso_code) VALUES ('Cocos (Keeling) Islands','CC');
INSERT INTO countries(name,iso_code) VALUES ('Colombia','CO');
INSERT INTO countries(name,iso_code) VALUES ('Comoros','KM');
INSERT INTO countries(name,iso_code) VALUES ('Congo','CG');
INSERT INTO countries(name,iso_code) VALUES ('Cook Islands','CK');
INSERT INTO countries(name,iso_code) VALUES ('Costa Rica','CR');
INSERT INTO countries(name,iso_code) VALUES ('Cote D''Ivoire (Ivory Coast)','CI');
INSERT INTO countries(name,iso_code) VALUES ('Croatia','HR');
INSERT INTO countries(name,iso_code) VALUES ('Cuba','CU');
INSERT INTO countries(name,iso_code) VALUES ('Cura??ao','CW');
INSERT INTO countries(name,iso_code) VALUES ('Cyprus','CY');
INSERT INTO countries(name,iso_code) VALUES ('Czech Republic','CZ');
INSERT INTO countries(name,iso_code) VALUES ('Democratic Republic of the Congo','CD');
INSERT INTO countries(name,iso_code) VALUES ('Denmark','DK');
INSERT INTO countries(name,iso_code) VALUES ('Djibouti','DJ');
INSERT INTO countries(name,iso_code) VALUES ('Dominica','DM');
INSERT INTO countries(name,iso_code) VALUES ('Dominican Republic','DO');
INSERT INTO countries(name,iso_code) VALUES ('East Timor','TL');
INSERT INTO countries(name,iso_code) VALUES ('Ecuador','EC');
INSERT INTO countries(name,iso_code) VALUES ('Egypt','EG');
INSERT INTO countries(name,iso_code) VALUES ('El Salvador','SV');
INSERT INTO countries(name,iso_code) VALUES ('Equatorial Guinea','GQ');
INSERT INTO countries(name,iso_code) VALUES ('Eritrea','ER');
INSERT INTO countries(name,iso_code) VALUES ('Estonia','EE');
INSERT INTO countries(name,iso_code) VALUES ('Ethiopia','ET');
INSERT INTO countries(name,iso_code) VALUES ('Falkland Islands','FK');
INSERT INTO countries(name,iso_code) VALUES ('Faroe Islands','FO');
INSERT INTO countries(name,iso_code) VALUES ('Fiji Islands','FJ');
INSERT INTO countries(name,iso_code) VALUES ('Finland','FI');
INSERT INTO countries(name,iso_code) VALUES ('France','FR');
INSERT INTO countries(name,iso_code) VALUES ('French Guiana','GF');
INSERT INTO countries(name,iso_code) VALUES ('French Polynesia','PF');
INSERT INTO countries(name,iso_code) VALUES ('French Southern Territories','TF');
INSERT INTO countries(name,iso_code) VALUES ('Gabon','GA');
INSERT INTO countries(name,iso_code) VALUES ('Gambia The','GM');
INSERT INTO countries(name,iso_code) VALUES ('Georgia','GE');
INSERT INTO countries(name,iso_code) VALUES ('Germany','DE');
INSERT INTO countries(name,iso_code) VALUES ('Ghana','GH');
INSERT INTO countries(name,iso_code) VALUES ('Gibraltar','GI');
INSERT INTO countries(name,iso_code) VALUES ('Greece','GR');
INSERT INTO countries(name,iso_code) VALUES ('Greenland','GL');
INSERT INTO countries(name,iso_code) VALUES ('Grenada','GD');
INSERT INTO countries(name,iso_code) VALUES ('Guadeloupe','GP');
INSERT INTO countries(name,iso_code) VALUES ('Guam','GU');
INSERT INTO countries(name,iso_code) VALUES ('Guatemala','GT');
INSERT INTO countries(name,iso_code) VALUES ('Guernsey and Alderney','GG');
INSERT INTO countries(name,iso_code) VALUES ('Guinea','GN');
INSERT INTO countries(name,iso_code) VALUES ('Guinea-Bissau','GW');
INSERT INTO countries(name,iso_code) VALUES ('Guyana','GY');
INSERT INTO countries(name,iso_code) VALUES ('Haiti','HT');
INSERT INTO countries(name,iso_code) VALUES ('Heard Island and McDonald Islands','HM');
INSERT INTO countries(name,iso_code) VALUES ('Honduras','HN');
INSERT INTO countries(name,iso_code) VALUES ('Hong Kong S.A.R.','HK');
INSERT INTO countries(name,iso_code) VALUES ('Hungary','HU');
INSERT INTO countries(name,iso_code) VALUES ('Iceland','IS');
INSERT INTO countries(name,iso_code) VALUES ('India','IN');
INSERT INTO countries(name,iso_code) VALUES ('Indonesia','ID');
INSERT INTO countries(name,iso_code) VALUES ('Iran','IR');
INSERT INTO countries(name,iso_code) VALUES ('Iraq','IQ');
INSERT INTO countries(name,iso_code) VALUES ('Ireland','IE');
INSERT INTO countries(name,iso_code) VALUES ('Israel','IL');
INSERT INTO countries(name,iso_code) VALUES ('Italy','IT');
INSERT INTO countries(name,iso_code) VALUES ('Jamaica','JM');
INSERT INTO countries(name,iso_code) VALUES ('Japan','JP');
INSERT INTO countries(name,iso_code) VALUES ('Jersey','JE');
INSERT INTO countries(name,iso_code) VALUES ('Jordan','JO');
INSERT INTO countries(name,iso_code) VALUES ('Kazakhstan','KZ');
INSERT INTO countries(name,iso_code) VALUES ('Kenya','KE');
INSERT INTO countries(name,iso_code) VALUES ('Kiribati','KI');
INSERT INTO countries(name,iso_code) VALUES ('Kosovo','XK');
INSERT INTO countries(name,iso_code) VALUES ('Kuwait','KW');
INSERT INTO countries(name,iso_code) VALUES ('Kyrgyzstan','KG');
INSERT INTO countries(name,iso_code) VALUES ('Laos','LA');
INSERT INTO countries(name,iso_code) VALUES ('Latvia','LV');
INSERT INTO countries(name,iso_code) VALUES ('Lebanon','LB');
INSERT INTO countries(name,iso_code) VALUES ('Lesotho','LS');
INSERT INTO countries(name,iso_code) VALUES ('Liberia','LR');
INSERT INTO countries(name,iso_code) VALUES ('Libya','LY');
INSERT INTO countries(name,iso_code) VALUES ('Liechtenstein','LI');
INSERT INTO countries(name,iso_code) VALUES ('Lithuania','LT');
INSERT INTO countries(name,iso_code) VALUES ('Luxembourg','LU');
INSERT INTO countries(name,iso_code) VALUES ('Macau S.A.R.','MO');
INSERT INTO countries(name,iso_code) VALUES ('Macedonia','MK');
INSERT INTO countries(name,iso_code) VALUES ('Madagascar','MG');
INSERT INTO countries(name,iso_code) VALUES ('Malawi','MW');
INSERT INTO countries(name,iso_code) VALUES ('Malaysia','MY');
INSERT INTO countries(name,iso_code) VALUES ('Maldives','MV');
INSERT INTO countries(name,iso_code) VALUES ('Mali','ML');
INSERT INTO countries(name,iso_code) VALUES ('Malta','MT');
INSERT INTO countries(name,iso_code) VALUES ('Man (Isle of)','IM');
INSERT INTO countries(name,iso_code) VALUES ('Marshall Islands','MH');
INSERT INTO countries(name,iso_code) VALUES ('Martinique','MQ');
INSERT INTO countries(name,iso_code) VALUES ('Mauritania','MR');
INSERT INTO countries(name,iso_code) VALUES ('Mauritius','MU');
INSERT INTO countries(name,iso_code) VALUES ('Mayotte','YT');
INSERT INTO countries(name,iso_code) VALUES ('Mexico','MX');
INSERT INTO countries(name,iso_code) VALUES ('Micronesia','FM');
INSERT INTO countries(name,iso_code) VALUES ('Moldova','MD');
INSERT INTO countries(name,iso_code) VALUES ('Monaco','MC');
INSERT INTO countries(name,iso_code) VALUES ('Mongolia','MN');
INSERT INTO countries(name,iso_code) VALUES ('Montenegro','ME');
INSERT INTO countries(name,iso_code) VALUES ('Montserrat','MS');
INSERT INTO countries(name,iso_code) VALUES ('Morocco','MA');
INSERT INTO countries(name,iso_code) VALUES ('Mozambique','MZ');
INSERT INTO countries(name,iso_code) VALUES ('Myanmar','MM');
INSERT INTO countries(name,iso_code) VALUES ('Namibia','NA');
INSERT INTO countries(name,iso_code) VALUES ('Nauru','NR');
INSERT INTO countries(name,iso_code) VALUES ('Nepal','NP');
INSERT INTO countries(name,iso_code) VALUES ('Netherlands','NL');
INSERT INTO countries(name,iso_code) VALUES ('New Caledonia','NC');
INSERT INTO countries(name,iso_code) VALUES ('New Zealand','NZ');
INSERT INTO countries(name,iso_code) VALUES ('Nicaragua','NI');
INSERT INTO countries(name,iso_code) VALUES ('Niger','NE');
INSERT INTO countries(name,iso_code) VALUES ('Nigeria','NG');
INSERT INTO countries(name,iso_code) VALUES ('Niue','NU');
INSERT INTO countries(name,iso_code) VALUES ('Norfolk Island','NF');
INSERT INTO countries(name,iso_code) VALUES ('North Korea','KP');
INSERT INTO countries(name,iso_code) VALUES ('Northern Mariana Islands','MP');
INSERT INTO countries(name,iso_code) VALUES ('Norway','NO');
INSERT INTO countries(name,iso_code) VALUES ('Oman','OM');
INSERT INTO countries(name,iso_code) VALUES ('Pakistan','PK');
INSERT INTO countries(name,iso_code) VALUES ('Palau','PW');
INSERT INTO countries(name,iso_code) VALUES ('Palestinian Territory Occupied','PS');
INSERT INTO countries(name,iso_code) VALUES ('Panama','PA');
INSERT INTO countries(name,iso_code) VALUES ('Papua new Guinea','PG');
INSERT INTO countries(name,iso_code) VALUES ('Paraguay','PY');
INSERT INTO countries(name,iso_code) VALUES ('Peru','PE');
INSERT INTO countries(name,iso_code) VALUES ('Philippines','PH');
INSERT INTO countries(name,iso_code) VALUES ('Pitcairn Island','PN');
INSERT INTO countries(name,iso_code) VALUES ('Poland','PL');
INSERT INTO countries(name,iso_code) VALUES ('Portugal','PT');
INSERT INTO countries(name,iso_code) VALUES ('Puerto Rico','PR');
INSERT INTO countries(name,iso_code) VALUES ('Qatar','QA');
INSERT INTO countries(name,iso_code) VALUES ('Reunion','RE');
INSERT INTO countries(name,iso_code) VALUES ('Romania','RO');
INSERT INTO countries(name,iso_code) VALUES ('Russia','RU');
INSERT INTO countries(name,iso_code) VALUES ('Rwanda','RW');
INSERT INTO countries(name,iso_code) VALUES ('Saint Helena','SH');
INSERT INTO countries(name,iso_code) VALUES ('Saint Kitts And Nevis','KN');
INSERT INTO countries(name,iso_code) VALUES ('Saint Lucia','LC');
INSERT INTO countries(name,iso_code) VALUES ('Saint Pierre and Miquelon','PM');
INSERT INTO countries(name,iso_code) VALUES ('Saint Vincent And The Grenadines','VC');
INSERT INTO countries(name,iso_code) VALUES ('Saint-Barthelemy','BL');
INSERT INTO countries(name,iso_code) VALUES ('Saint-Martin (French part)','MF');
INSERT INTO countries(name,iso_code) VALUES ('Samoa','WS');
INSERT INTO countries(name,iso_code) VALUES ('San Marino','SM');
INSERT INTO countries(name,iso_code) VALUES ('Sao Tome and Principe','ST');
INSERT INTO countries(name,iso_code) VALUES ('Saudi Arabia','SA');
INSERT INTO countries(name,iso_code) VALUES ('Senegal','SN');
INSERT INTO countries(name,iso_code) VALUES ('Serbia','RS');
INSERT INTO countries(name,iso_code) VALUES ('Seychelles','SC');
INSERT INTO countries(name,iso_code) VALUES ('Sierra Leone','SL');
INSERT INTO countries(name,iso_code) VALUES ('Singapore','SG');
INSERT INTO countries(name,iso_code) VALUES ('Sint Maarten (Dutch part)','SX');
INSERT INTO countries(name,iso_code) VALUES ('Slovakia','SK');
INSERT INTO countries(name,iso_code) VALUES ('Slovenia','SI');
INSERT INTO countries(name,iso_code) VALUES ('Solomon Islands','SB');
INSERT INTO countries(name,iso_code) VALUES ('Somalia','SO');
INSERT INTO countries(name,iso_code) VALUES ('South Africa','ZA');
INSERT INTO countries(name,iso_code) VALUES ('South Georgia','GS');
INSERT INTO countries(name,iso_code) VALUES ('South Korea','KR');
INSERT INTO countries(name,iso_code) VALUES ('South Sudan','SS');
INSERT INTO countries(name,iso_code) VALUES ('Spain','ES');
INSERT INTO countries(name,iso_code) VALUES ('Sri Lanka','LK');
INSERT INTO countries(name,iso_code) VALUES ('Sudan','SD');
INSERT INTO countries(name,iso_code) VALUES ('Suriname','SR');
INSERT INTO countries(name,iso_code) VALUES ('Svalbard And Jan Mayen Islands','SJ');
INSERT INTO countries(name,iso_code) VALUES ('Swaziland','SZ');
INSERT INTO countries(name,iso_code) VALUES ('Sweden','SE');
INSERT INTO countries(name,iso_code) VALUES ('Switzerland','CH');
INSERT INTO countries(name,iso_code) VALUES ('Syria','SY');
INSERT INTO countries(name,iso_code) VALUES ('Taiwan','TW');
INSERT INTO countries(name,iso_code) VALUES ('Tajikistan','TJ');
INSERT INTO countries(name,iso_code) VALUES ('Tanzania','TZ');
INSERT INTO countries(name,iso_code) VALUES ('Thailand','TH');
INSERT INTO countries(name,iso_code) VALUES ('Togo','TG');
INSERT INTO countries(name,iso_code) VALUES ('Tokelau','TK');
INSERT INTO countries(name,iso_code) VALUES ('Tonga','TO');
INSERT INTO countries(name,iso_code) VALUES ('Trinidad And Tobago','TT');
INSERT INTO countries(name,iso_code) VALUES ('Tunisia','TN');
INSERT INTO countries(name,iso_code) VALUES ('Turkey','TR');
INSERT INTO countries(name,iso_code) VALUES ('Turkmenistan','TM');
INSERT INTO countries(name,iso_code) VALUES ('Turks And Caicos Islands','TC');
INSERT INTO countries(name,iso_code) VALUES ('Tuvalu','TV');
INSERT INTO countries(name,iso_code) VALUES ('Uganda','UG');
INSERT INTO countries(name,iso_code) VALUES ('Ukraine','UA');
INSERT INTO countries(name,iso_code) VALUES ('United Arab Emirates','AE');
INSERT INTO countries(name,iso_code) VALUES ('United Kingdom','GB');
INSERT INTO countries(name,iso_code) VALUES ('United States','US');
INSERT INTO countries(name,iso_code) VALUES ('United States Minor Outlying Islands','UM');
INSERT INTO countries(name,iso_code) VALUES ('Uruguay','UY');
INSERT INTO countries(name,iso_code) VALUES ('Uzbekistan','UZ');
INSERT INTO countries(name,iso_code) VALUES ('Vanuatu','VU');
INSERT INTO countries(name,iso_code) VALUES ('Vatican City State (Holy See)','VA');
INSERT INTO countries(name,iso_code) VALUES ('Venezuela','VE');
INSERT INTO countries(name,iso_code) VALUES ('Vietnam','VN');
INSERT INTO countries(name,iso_code) VALUES ('Virgin Islands (British)','VG');
INSERT INTO countries(name,iso_code) VALUES ('Virgin Islands (US)','VI');
INSERT INTO countries(name,iso_code) VALUES ('Wallis And Futuna Islands','WF');
INSERT INTO countries(name,iso_code) VALUES ('Western Sahara','EH');
INSERT INTO countries(name,iso_code) VALUES ('Yemen','YE');
INSERT INTO countries(name,iso_code) VALUES ('Zambia','ZM');
INSERT INTO countries(name,iso_code) VALUES ('Zimbabwe','ZW');
