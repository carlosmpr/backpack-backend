# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# #####Locations ###############
Location.create(name:"New York" , country:'USA', image:'https://res.cloudinary.com/simpleview/image/upload/v1622206643/clients/newyorkstate/2000_x_797_web_hero_skyline_2_6b921811-cd45-42fd-990a-ba60c7fba1f0.jpg')
Location.create(name:"Miami" , country:'USA', image:"https://www.miamiluxuryhomes.com/wp-content/uploads/2018/03/allison-island.jpg")
Location.create(name:"Mexico" , country:'MX', image:'https://tourscanner.com/blog/wp-content/uploads/2020/11/fun-things-to-do-in-Cancun-Mexico.jpg')
Location.create(name:"DOMRE", country:'DR', image:'https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2021/04/931/524/Dominican-Republic-iStock.jpg?ve=1&tl=1')
Location.create(name:"Bahamas", country:'Bahamas', image:'https://a.cdn-hotels.com/gdcs/production96/d1236/0623a678-0ad7-4bdf-8d7f-58aac43acef4.jpg')
Location.create(name:"Italy", country:'Italy', image:'https://cdn.britannica.com/82/195482-050-2373E635/Amalfi-Italy.jpg')
###############New York
Activity.create(location_id:1, name:"Cascade Mountain", image:'https://www.hikespeak.com/img/NewYork/Cascade/Cascade_Mountain_Summit_View_Adirondack_Mountains_Hike_6091.jpg' , description:'Cascade Mountain and Porter Mountain are two of the more moderate peaks, making them readily accessible to hikers of various abilities. Taking the 5.5-mile Cascade Mountain Trail allows you to enjoy both of these peaks, panoramic views, a flowing river, some easy rock scrambles, and even a waterfall.', category:'hiking', state:"Lake Placid", directions:'Keene, Nueva York 12942', )
Activity.create(location_id:1, name:"Devil’s Hole Trail",image:'https://townsquare.media/site/10/files/2020/10/Devils-hole-1.jpg?w=980&q=75', description:'The Devil’s Hole Trail runs along the river with amazing views of steep Niagara Gorge, bubbling white water rapids, and the Devil’s Hole itself, an impressively large whirlpool that can become mesmerizing to watch', category:'hiking', state:"Niagara Falls", directions:'Niagara Scenic Pkwy, Niagara Falls, NY 14305')
Activity.create(location_id:1, name:"Robert H. Treman State Park",image:'https://hipcamp-res.cloudinary.com/image/upload/c_fill,f_auto,g_auto,h_960,q_60,w_1440/v1444779429/campground-photos/dfjrfmwnou3ju7qwfkej.jpg', description:'The trail passes by a dozen different waterfalls, including the incredible 115-foot Lucifer Falls and the 70-foot Lower Falls. The jagged glacial stone adds dimension and interest to the other impressive natural features in this gorgeous wooded ravine', category:'hiking', state:"Cancun", directions:'112 E Buttermilk Falls Rd, Ithaca, NY 14850')
Activity.create(location_id:1, name:"Stairway To Heaven", image:'https://cdn-assets.alltrails.com/uploads/photo/image/19605096/large_88fea3e248154b0f89ec443935fdc30a.jpg',description:'The Stairway to Heaven Trail (what locals call the Stairway Ridge Trail) is full of fun and activity for those looking for something different and a good workout', category:'hiking', state:"Wilmington", directions:'Wilmington, Nueva York 12997')
Activity.create(location_id:1, name:"Bear Mountain State Park",image:'https://www.nynjtc.org/sites/default/files/styles/hike_park_destination_page/public/park/1_HarrimanBearMtn1_Balogh2009.jpg?itok=6dZCjUHR', description:'The Appalachian Trail even has a presence here. Some of the most popular trails are the Bear Mountain Loop, the Major Welch Trail, the Dunderberg Spiral Railway, and the Bald Mountain Loop.', category:'hiking', state:"Bear Mountain", directions:'Highlands, Nueva York 10986')


Activity.create(location_id:1, name:"Hither Hills",image:'https://www.reserveamerica.com/webphotos/originals/NY/pid297/%7Bpht%7DHH%20New%20Jloops%20tents%20only%7Bpht%7D1471876105372.jpg', description:"Located at the eastern end of Long Island's South Fork, near the hamlet of Montauk, Hither Hills State Park is a dramatically beautiful combination of ocean, bay, lake and woodlands", category:'camping', state:"Long Island", directions:'164 Old Montauk Hwy, Montauk, NY 11954')
Activity.create(location_id:1, name:"Fish Creek Pond",image:'https://lh3.googleusercontent.com/proxy/3499X2jK5RUNyziGPEjmQkyTJ5nTm3MOgTB5AhAk0numd_-4Utun2_nGgq2_0ssdCl6wFBIjmX7k27m6jYyrDvQBwi7JJ_QxcXykVE8FvwZNYHk', description:" Fish Creek Pond Campground offers a natural sand shoreline and water access for most campsites", category:'camping', state:"Albany", directions:'4523 NY-30, Saranac Lake, NY 12983')
Activity.create(location_id:1, name:"North-South Lake",image:'https://www.campadk.com/campsiteguide/northsouthlake/20160615/IMG_3758.jpg', description:" North-South Lake is the biggest and most popular state campground in the Catskill Forest Preserve, offering extraordinary scenic beauty", category:'camping', state:"New York", directions:'874 N Lake Rd, Haines Falls, NY 12436')


Activity.create(location_id:1, name:"DUMBO",image:'https://www.nycgo.com/images/itineraries/42961/soc_fb_dumbo_spots__facebook.jpg', description:"Dumbo’s name is an acronym for Down Under the Manhattan Bridge Overpass, and the span gives the creatively oriented neighborhood much of its character—as do cobblestone streets and dramatic architecture left over from its industrial day", category:'touring', state:"Brooklyn", directions:'DUMBO, Brooklyn, Nueva York 11201')
Activity.create(location_id:1, name:"Central Park",image:'https://untappedcities.com/wp-content/uploads/2018/09/central-park-aerial-untapped-cities-flynyon.jpg', description:"Main attractions include landscapes such as the Ramble and Lake, Hallett Nature Sanctuary, the Jacqueline Kennedy Onassis Reservoir, and Sheep Meadow; amusement attractions such as Wollman Rink, Central Park Carousel, and the Central Park Zoo; formal spaces such as the Central Park Mall and Bethesda Terrace; and the Delacorte Theater.", category:'touring', state:"Manhattan", directions:'Central Park, New York, NY')
Activity.create(location_id:1, name:"Coney Island", image:'https://lp-cms-production.imgix.net/features/2019/08/amusement-coney-island-shutterstockRF_332266760-08ffe08a73d3.jpg?auto=format&fit=crop&sharp=10&vib=20&ixlib=react-8.6.4&w=850', description:"Coney Island is a New York City neighborhood that features an amusement area that includes 50 or more separate rides and attractions", category:'touring', state:"Brooklyn", directions:'Brooklyn, Nueva York')


Activity.create(location_id:1, name:"Floating Pool",image:'https://static.dezeen.com/uploads/2021/05/plus-pool-east-river-new-york-floating-pool-dezeen-hero-b-852x480.jpg', description:"Even on the hottest summer days, this particular body of water simply isn’t appealing to anyone who values personal hygiene.", category:'swimming', state:"Bronx", directions:'Bronx')

Activity.create(location_id:1, name:"Hudson Smokehouse", image:'https://images.squarespace-cdn.com/content/v1/5533054fe4b09627e6f4c6c1/1592577797713-TXV76WA85IVMV9XDBQQE/hudson+smokehouse+1+750.jpeg', description:"the range of barbecue styles it presents on its playful menu, but also because of its dedication to extensively smoking the meat using lots of wood", category:'eating', state:"Manhattan", directions:'498 9th Ave New York, NY 10018 (646) 863-2020')
Activity.create(location_id:1, name:"Farida", image:'https://cdn.vox-cdn.com/thumbor/pVn3xdcYkzrMq9gbB0Rfcmnqq8U=/1400x0/filters:no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/13692482/Farida_4.jpg', description:"Farida focuses its bill of fare on the delicious and diverse foodways of Central Asia", category:'eating', state:"Bronx", directions:'37 Bruckner Blvd Bronx, NY 10454')




###############Florida
Activity.create(location_id:2, name:"Lummus Park",image:'https://assets.simpleviewinc.com/simpleview/image/upload/c_fit,w_1440,h_900/crm/miamifl/south-beach-lummus-park-playground-jess-1440x900_D784E963-5056-A36A-0BD464AA32FB48E0-d784e8145056a36_d784e9e7-5056-a36a-0b9c1fe7f819d41c.jpg', description:'Celebrities run along the pristine tan sand, and rollerbladers wind their way along the paved beachside path.', category:'swimming', state:"Miami", directions:'1130 Ocean Dr, Miami Beach, FL 33139')
Activity.create(location_id:2, name:"Bal Harbour Beach",image:'https://www.seasidepropertiesgroup.com/upload/communities_slideshow/mobile_slideshow_img1_20141007200204.jpg', description:'Head to Bal Harbour beach. Sandwiched between Sunny Isles Beach (to the north) and Surfside (to the south)', category:'swimming', state:"Florida", directions:'Florida 33154')
Activity.create(location_id:2, name:"South Beach",image:'https://www.bahamasairtours.com/wp-content/uploads/2021/06/What-to-do-in-south-beach-miami-florida.jpg', description:"It's the spot where Art Deco architecture meets high-end modern design. It's the site of some of the city's best restaurants, coolest galleries, and most vibrant nightlife.", category:'swimming', state:"Miami Beach", directions:'Miami Beach, Florida 33139')
Activity.create(location_id:2, name:"Crandon Park",image:'https://www.tripsavvy.com/thmb/Hv7Hwssygw5f_V1y4dDkxLJGtnU=/4000x2250/smart/filters:no_upscale()/CrandonBeachPark-2-3ee5b680cee34724ab29abfdba8c1b65.jpg', description:"The turquoise waters are translucent, calm, and shallow, making them a perfect spot for families to splash about", category:'swimming', state:"Miami Beach", directions:'Miami Beach, Florida 33139')


Activity.create(location_id:2, name:"OLD CUTLER TRAIL",image:'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/340000/340363-Old-Cutler-Trail-Miami.jpg', description:"Starting in Coco Plum, this historical trail comes out to a little over 13 miles total. Walk along one of the city’s oldest roads and veer into the many natural escapes along the way like Matheson Hammock and Fairchild Tropical Garden.", category:'walking', state:"Miami Beach", directions:'Miami Beach, Florida 33139')
Activity.create(location_id:2, name:"THE VENETIAN CAUSEWAY",image:'https://live.staticflickr.com/2179/2219623748_74d95bda24_b.jpg', description:"Did you know that there are 11 Venetian Islands? Thanks to this bridge built in 1927, you can wind and weave along this 12-bridge path and explore the many beautiful houses, breathtaking bay views, and connect downtown to Miami Beach.", category:'walking', state:"Miami Beach", directions:'Miami Beach, Florida 33139')
Activity.create(location_id:2, name:"MIAMI RIVERWALK",image:'https://upload.wikimedia.org/wikipedia/commons/e/ef/Miami_Riverwalk.jpg', description:"The Miami River is possibly one of the least admired landmarks that this city has to offer and the Miami", category:'walking', state:"Miami Beach", directions:'Miami Beach, Florida 33139')



###############Mexico
Activity.create(location_id:3, name:"Playa Delfines",image:'https://lp-cms-production.imgix.net/2019-06/975f02970d23690cbdf06c28ca6f5faf-playa-delfines.jpg', description:"Sandwiched on either side by sweeping stretches of resort-dominated beach, Playa Delfines is Cancun's largest, most popular, and arguably most beautiful public beach", category:'swimming', state:"Punta Nizuc", directions:'Cancun Mexico')
Activity.create(location_id:3, name:"Costa Mujeres",image:'https://images.dailyhive.com/20180622123132/shutterstock_1036052404.jpg', description:'Costa Mujeres has its own impressive natural landmarks to explore, as well, like the Isla Blanca beach, archaeological sites, the Chacmuchuc lagoon', category:'swimming', state:"Isla Blanca", directions:'Isla Blanca')
Activity.create(location_id:3, name:"Playa Norte",image:'https://www.worldbeachguide.com/photos/playa-norte-mujeres-mexico.jpg', description:"IThis beach is the one that postcards are made of, from crystalline, shallow waters to powder soft, sugary sand. Playa Norte is surely where visitors can go to make ", category:'swimming', state:"Playa Norte", directions:'Rueda Medina 130, SM 001')


Activity.create(location_id:3, name:"Canasta de La Abuela",image:'https://i.ytimg.com/vi/Q9AM2_FfGkc/maxresdefault.jpg', description:"Tacos de Canasta de La Abuela is owned and run by Arnulfo Serafin Hernandez, locally known as “La Abuela.” He delights people daily with the simplest yet most precisely prepared dish around: tacos de canasta.", category:'eating', state:"Río Lerma 59", directions:'Ciudad de México')
Activity.create(location_id:3, name:"Por Siempre Vegana",image:'https://images.happycow.net/venues/1024/45/85/hcmp45855_439531.jpeg', description:"Por Siempre Vegano is an all-vegan taco stand located at the corner of Manzanillo and Chiapas (no seating). The tacos are made with soy meat and cheese, but they still taste as authentic as any non-faux meat competitor.", category:'eating', state:"Cuauhtémoc", directions:'Ciudad de México')
Activity.create(location_id:3, name:"Los Panchos",image:'https://missiontimescourier.com/wp-content/uploads/2019/08/Los-Panchos-five-rolled-tacos.jpg', description:"The owner of NYC's Cosme and Mexico City native Santiago Gomez says this is the place to go for tacos de carnitas. While the restaurant itself isn't anything the write home about", category:'eating', state:"Calle Tolstoi 9", directions:'Ciudad de México')


###############RD
Activity.create(location_id:4, name:"Guayabal to Constanza",image:'https://cdn2.apstatic.com/photos/hike/7051981_smallMed_1555694051.jpg', description:"is a 23.1 mile moderately trafficked point-to-point trail located near Guayabal, Azua, Dominican Republic that features hot springs and is rated as difficult. ", category:'hiking', state:"Constanza", directions:'Constanza')
Activity.create(location_id:4, name:"Parque Nacional Montaña",image:'https://cdn-assets.alltrails.com/uploads/photo/image/33747838/large_51c78d6a2927cb8214fe593840ee3db3.jpg', description:'Explore the most popular trails in Parque Nacional Montaña La Humeadora with hand-curated trail maps and driving directions as well as detailed reviews and photos from hikers', category:'hiking', state:"Dominican Republic", directions:'DR')
Activity.create(location_id:4, name:"El Mogote",image:'https://cdn2.apstatic.com/photos/hike/7051247_medium_1555692419.jpg', description:"moderately trafficked out and back trail located near Jarabacoa, La Vega, Dominican Republic that features a great forest setting and is only recommended for very experienced adventurers.", category:'hiking', state:"Jarabacoa ", directions:'La vega')
Activity.create(location_id:4, name:"Saltos de la Jalda", image:'https://cdn-assets.alltrails.com/uploads/photo/image/20029241/extra_large_7bb8318048faa01a0e3e8c61c344ed12.jpg',description:"The Salto de la Jalda is the highest waterfall of the Caribbean, and it's located in the Dominican Republic. The trail is muddy, but can be walked easily.", category:'hiking', state:"Miches", directions:'El Seybo')
Activity.create(location_id:4, name:"Cienega Pica Duarte", image:'https://www.uncommoncaribbean.com/wp-content/uploads/2012/04/climibing-pico-duarte-scaled.jpg',description:"that features a river and is only recommended for very experienced adventurers.", category:'hiking', state:"Jarabacoa", directions:'La Vega')


Activity.create(location_id:4, name:"Bávaro Beach", image:'https://lh3.googleusercontent.com/proxy/xu2RM7aZXJKYhGlOoLfPKCk62fkyBuMZXZKXhykfOXHoaTHjYki1NXwdy3MeEeVA4i57_3yPPWPyQ57p-5aEnAZWMXn00yFKzkRCsi3LTvbyZFykFoOX3w', description:"he calm Caribbean waters are perfect for swimming or wading, and the water color is a typical Caribbean turquoise hue that stretches", category:'swimming', state:"Bavaro", directions:'Punta Cana')
Activity.create(location_id:4, name:"Playa Rincón", image:'https://afar-production.imgix.net/uploads/images/post_images/images/1Pda6vlg6r/original_2af984555731399af0bc96b18233843b.jpg?1544028654?ixlib=rails-0.3.0&auto=format%2Ccompress&crop=entropy&fit=crop&h=719&q=80&w=954',description:"Playa Rincón is the quintessential, postcard perfect, tropical white-sand beach. Glimmering aquamarine waves lap the shore. Huge palm trees line the sand and provide shade", category:'swimming', state:"Samana", directions:'Samana')
Activity.create(location_id:4, name:"Cayo Levantado", image:'https://www.godominicanrepublic.com/wp-content/uploads/2018/02/cayo-levantado.jpg',description:"This remote island off the coast of the Samaná Peninsula is surrounded by soft-sand beaches, with shallow turquoise waters", category:'swimming', state:"Samana", directions:'Samana')
Activity.create(location_id:4, name:"Playa Dorada", image:'https://images.visitarepublicadominicana.org/playa-dorada-puerto-plata.jpg',description:"The stunning mountain scenery; palm-lined beach; and clean, clear turquoise waters are exactly what draw tourists to this destination.", category:'swimming', state:"Puerto Plata", directions:'Puerto Plata')
Activity.create(location_id:4, name:"Kite Beach",image:'https://www.planetware.com/photos-large/DOM/dominican-republic-kiteboarding-kite-beach.jpg', description:"Cabarete's Kite Beach is one of the most internationally well-known beaches in the Caribbean when it comes to water sports", category:'swimming', state:"Cabarete", directions:'Sosua')
Activity.create(location_id:4, name:"Punta Rucia",image:'https://media.vrbo.com/lodging/41000000/40200000/40192600/40192533/4a715732.c10.jpg', description:"his small fishing village on the west end of the Amber Coast has a spectacular, long, curving beach with shallow, warm water backed by sea grape trees", category:'swimming', state:"Cabarete", directions:'Sosua')
Activity.create(location_id:4, name:"Playa Grande", image:'https://selectcaribbean.com/wp-content/uploads/2013/11/44-Playa-Grande-11-10.19.jpg',description:"Huge waves often roll in here, but calm days do exist, and the section closest to the parking area is somewhat sheltered by a headland", category:'swimming', state:"Rio San Juan", directions:'Rio San Juan')
Activity.create(location_id:4, name:"Bahia de Las Aguilas",image:'https://www.colonialtours.com/images/1bahiadelasaguilas1.jpg', description:" Located near the town of Pedernales on the Caribbean coast, not far from the border with Haiti, this glorious eight-kilometer", category:'swimming', state:"Pedernales", directions:'Pedernales')
Activity.create(location_id:4, name:"Playa Fronton",image:'https://media-cdn.tripadvisor.com/media/photo-s/13/41/8e/a5/encore-une-belle-plage.jpg', description:"Accessible only by boat or a four-hour round-trip guided hike, Playa Fronton is a completely undeveloped beach.", category:'swimming', state:"Rio San Juan", directions:'Rio San Juan')



Activity.create(location_id:4, name:"Samana Camping",image:'https://cf.bstatic.com/xdata/images/hotel/max500/209125689.jpg?k=20be1c24b11a5b20dd794c6f95f2b9e3cebc8c1ca3438ad27cccb9d73dfa889d&o=&hp=1', description:"The calm Caribbean waters are perfect for swimming or wading, and the water color is a typical Caribbean turquoise hue that stretches", category:'camping', state:"Samana", directions:'Las Terrenas 32000, Dominican Republic')
Activity.create(location_id:4, name:"Camping surf Bahoruco",image:'https://wetravelandblog.com/wp-content/uploads/2014/09/cabarete-camping-1.jpg', description:"The calm Caribbean waters are perfect for swimming or wading, and the water color is a typical Caribbean turquoise hue that stretches", category:'camping', state:"Mao", directions:'Santa Cruz de Mao')
Activity.create(location_id:4, name:"Afuera Camping Club",image:'https://cdn.shortpixel.ai/spai/w_613+q_lossy+ret_img+to_webp/https://www.mychemicalfreehouse.net/wp-content/uploads/2020/12/Camping1.jpg', description:"The calm Caribbean waters are perfect for swimming or wading, and the water color is a typical Caribbean turquoise hue that stretches", category:'camping', state:"Nagua", directions:'Nagua')


Activity.create(location_id:4, name:"Zona Colonial",image:'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/7d/71.jpg', description:" this city, where Christopher Columbus first landed in the America's, you'll find the hustle and bustle of modern day life being played out against the backdrop of centuries-old buildings.", category:'touring', state:"Santo Domingo", directions:'Santo Domingo')
Activity.create(location_id:4, name:"27 Waterfalls of Damajagua",image:'https://sea-horse-ranch.com/new/wp-content/uploads/2017/01/27-waterfalls-dominicanrepublic.jpg', description:"If you are looking for adventure, one of the most interesting things to do in the Dominican Republic, is to climb up a narrow gorge of waterfalls and then jump off the top of each one into the pools below.", category:'touring', state:"Damajagua", directions:'Damajagua')
Activity.create(location_id:4, name:"Altos de Chavon",image:'https://images.visitarepublicadominicana.org/alto-de-chavon-la-romana.jpg', description:"La Romana is one of the Dominican's resort destinations. This area has a number of large resorts, some of which are geared towards more independent travelers looking to self-cater.", category:'touring', state:"La Romana", directions:'La Romana')
Activity.create(location_id:4, name:"Cable car",image:'https://res.cloudinary.com/fleetnation/image/private/c_fit,w_1120/g_south,l_text:style_gothic2:%C2%A9%20robertharding,o_20,y_10/g_center,l_watermark4,o_25,y_50/v1505526758/eqhsxr3trmshtluucsv4.jpg', description:"Ascending nearly 800 meters from the steamy heat of sea level, the cable car whisks you up to the top of Pico Isabel de Torres where you'll find the air pleasantly cool.", category:'touring', state:"Puerto Plata", directions:'Puerto Plata')
Activity.create(location_id:4, name:"Los Pozos",image:'https://eecgoh7hgqo.exactdn.com/wp-content/uploads/2019/11/pozos-de-romeo-pedernales-866x1024.jpg?strip=all&lossy=0&quality=90&ssl=1', description:"They are a series of beautiful natural pools formed from underwater/open-air caves", category:'touring', state:"Puerto Plata", directions:'Puerto Plata')
Activity.create(location_id:4, name:"Bani: Sand Dunes",image:'https://eecgoh7hgqo.exactdn.com/wp-content/uploads/2019/11/pozos-de-romeo-pedernales-866x1024.jpg?strip=all&lossy=0&quality=90&ssl=1', description:"Unique tall sand dunes adjacent to a beach. You can try sandboarding", category:'touring', state:"Puerto Plata", directions:'Puerto Plata')
Activity.create(location_id:4, name:"Samana’s Limon Waterfall ",image:'https://fh-sites.imgix.net/sites/3808/2018/01/19225516/salto-el-limon.jpg?auto=compress%2Cformat&w=1000&h=1000&fit=max', description:"Although the Samana province is popular with tourists, there are still many places that are still well worth the visit to this area especially", category:'touring', state:"Puerto Plata", directions:'Puerto Plata')



###############Bahamas
Activity.create(location_id:5, name:"Cabbage Beach",image:'https://cruiseradio.net/wp-content/uploads/2014/08/3075486055_73e4664d72_k.jpg', description:"The beach stretches almost the entire length of the northern edge of Paradise Island and can be accessed through one of the many hotels along the beach, including Atlantis, Sunrise Beach Club", category:'swimming', state:"Bahamas", directions:'Bahamas')
Activity.create(location_id:5, name:"Tahiti Beach",image:'https://www.caribjournal.com/wp-content/uploads/2015/07/beach1.jpg', description:"he name Tahiti Beach instills images of swaying coconut palms in an exotic locale in the South Pacific. The beach on Elbow Cay with this namesake was not accidental.", category:'swimming', state:"Bahamas", directions:'Bahamas')
Activity.create(location_id:5, name:"Pink Sands Beach",image:'https://www.pandotrip.com/wp-content/uploads/2015/05/Pink-Sand4-980x651.jpg', description:"Eleuthera is home to a plethora of gorgeous pink sandy beaches, and you would be hard pressed to put one upon a pedestal above another because they each offer their own striking beauty", category:'swimming', state:"Bahamas", directions:'Bahamas')

###############Italy
Activity.create(location_id:6, name:"Via Krupp",image:'https://d1bv4heaa2n05k.cloudfront.net/user-images/1490100030289/4Italy-Fotolia-118914099_main_1490100038455.jpeg', description:" While the risk of tumbling rocks means you can no longer stroll the elegant switchback bends that make up Via Krupp, that doesn’t stop the view at the top from being any less spectacular.", category:'touring', state:"Italy", directions:'Italy')
Activity.create(location_id:6, name:"San Gimignano",image:'https://www.wantedinrome.com/i/preview/storage/uploads/2020/11/San_Gimignano.jpg', description:"The hilltop town provides a relaxed antidote to the bustle of Siena and with its enchanting views", category:'touring', state:"Italy", directions:'Italy')
Activity.create(location_id:6, name:"Praiano",image:'https://urbanistagirl.com/wp-content/uploads/2018/10/IMG_6152-compressor.jpg', description:"Delicately perched on the cliff face, equidistant from Amalfi and Positano and just a short drive from the effortless romance of Ravello, Praiano is my go-to whenever I visit this sun-drenched stretch of coastline.", category:'touring', state:"Italy", directions:'Italy')

############# UserCreate #########
User.create(name:"Carlos", last_name:'Polanco', email:'carlos@email.com', phone:"999-999-9999", password:"carlosPass", swimming:true, hiking:true, walking:true, eating:true, touring:true , camping:true)
User.create(name:"Jeff", last_name:'Bezos', email:'Jeff@email.com', phone:"999-999-9999", password:"jeffPass", swimming:false, hiking:true, walking:true, eating:false, touring:true , camping:true)


# #####UserActivities
UserActivity.create(user_id:1, activity_id:1 , date:'8/5/2022')
UserActivity.create(user_id:1, activity_id:2 , date:'8/5/2022')
UserActivity.create(user_id:2, activity_id:3 , date:'7/4/2022')
UserActivity.create(user_id:2, activity_id:4 , date:'7/4/2022')


###############ActivityReview
ActivityReview.create(activity_id:1,  user_id:1, comment:'Amazing place')
ActivityReview.create(activity_id:2,  user_id:1, comment:'Incredible place')



################UserFriends
UserFriend.create(user_id:1, friend_id:2)
UserFriend.create(user_id:2, friend_id:1)



########### FriendsGoing
FriendsGoing.create(user_activity_id:1 , user_friend_id:1)


###############
ChatRoom.create(user_id:1 , user_id2:2)

Message.create(chat_room_id:1 , user_id:1 , message:'KLK Bezos')
Message.create(chat_room_id:1 , user_id:2 , message:'KLK Manito')
Message.create(chat_room_id:1 , user_id:2 , message:'Aqui en el Espacio')
