-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2018 a las 06:44:41
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cerveza`
--

CREATE TABLE `cerveza` (
  `idCerveza` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `calorias` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `imagen` text NOT NULL,
  `idCerveza_api` int(11) NOT NULL,
  `idEstilo` int(11) NOT NULL,
  `idFabricante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cerveza`
--

INSERT INTO `cerveza` (`idCerveza`, `nombre`, `descripcion`, `calorias`, `nota`, `imagen`, `idCerveza_api`, `idEstilo`, `idFabricante`) VALUES
(1, 'Stronzo Butcher\'s Choice', 'Danish: Imperial Red Ale. Vi kender det alle sammen. Man står i baren og skal til at foretage aftenens sværeste valg – humle eller malt? Det har vi heldigvis løsningen på: Potent rødt øl med en fyldig maltsmag og en solid dosis amerikansk  humle. Tørhumlet med Tomahawk og Chinook.', 225, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_170835.jpg', 170835, 1, 1),
(2, 'Hop the Brewer', 'With Hop, The Brewer we would like to show you how we interpret a Belgian IPA. Its goal is to let you enjoy its nice bitterness combined with a sensitive hoppy aroma and a great finishing, balanced hop bite. Belgian style IPA. \r\n\n\n\r\n Note: first batch brewed at Brouwerij Alvinne.', 195, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_261755.jpg', 261755, 2, 2),
(3, 'Kissmeyer Red IPA', 'Danish. Mørk kobberfarvet, ufiltreret klassisk IPA i den mørke ende. Meget fyldig og tør med frugtig maltkarakter og markant, afbalanceret bitterhed. Intens og unik krydret duft og smag af både amerikansk og New Zealandsk humle.\r\nMalte: Pilsnermalt, Pale Ale malt, CaraHell/Lys Munich, Mørk karamelmalt og havregryn.\r\n\n\n\r\nHumler: Bitterhumlet med tysk Perle, og aromahumlet med Simcoe, Citra, Cascade og Pacific Gem.\r\n\n\n\r\nGær og gæring: Gæret ved 20 – 22 C med WLP001 – California Ale Yeast.\r\n\n\n\r\nEnglish. A deep copper coloured IPA with a distinct bitternes. Dry, but quite malty body with a hint of caramel and a rich, fruity hop aroma and flavour. Think a maltier and bolder version of the new classic Kissmeyer Pale Ale!', 210, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_164405.jpg', 164405, 2, 1),
(4, 'Bell\'s Larry\'s Latest Sour Ale', 'Kettle soured ale with a dry hop burst. The name “Larry’s Latest” is a nod to the spirit of innovation and experimentation that Larry started in 1985 and continues within the brewery to this day. Our latest sour recipe has a refreshingly bright, citrusy tartness combined with pungent tropical aromas.', 150, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_497949.jpg', 497949, 4, 4),
(5, 'Pelican Nestucca ESB', 'Golden-hued and medium-bodied, Nestucca ESB features a floral, herbal aroma character balanced with a toffee-like toasted malt flavor. A tangerine-and-pineapple-like fruitiness merges with caramel flavors and a clean, hoppy finish to make this beer both refreshing and full of character. Dry hopped with Goldings hops for an even bigger fresh hop aroma!!', 162, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_8793.jpg', 8793, 5, 4),
(6, 'Potosi Wee Stein Wit', 'A Belgian Style ale that’s very pale and cloudy in appearance due to it being unfiltered and the high level of wheat that’s used in the mash. Always spiced, generally with coriander, orange peel and other spices or herbs in the back ground. The crispness and slight twang comes from the wheat and the lively level of carbonation.  Often referred to as \"white beers\" (witbieren) due to the cloudiness / yeast in suspension.', 165, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_146827.jpg', 146827, 6, 4),
(7, 'Wylam Bliss 332K', 'A White IPA... Pilsner malt, wheat heavy White IPA fermented out with a Belgian wit strain. Dangerously deep murk implosions of Simcoe, Centennial, Amarillo and Loral drag you way out of your depth into unknown fathoms of eternal bliss.', 204, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_546722.jpg', 546722, 2, 7),
(8, 'Hedonis Excuse Me While I Kiss My Stout (... - 2016)', 'Ingredients: pale ale malt, flaked oat, candy sugar, caramel malt, smoked malt, roasted malt, Target hop, UK Golding hop, yeast.', 198, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_363037.jpg', 363037, 8, 2),
(9, 'Shoreline Big Bourbon Series Sum Nug IPA', 'Aged for a year in the barrel that contained 15 year old Elijia Craig Kentucky Straight Bourbon Whiskey. On sale for limited time in 750ml bottles at the brewery and sealed with an yellow wax.', 201, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_107221.jpg', 107221, 2, 4),
(10, 'Fat Head\'s Holly Jolly Christmas Ale', 'Once upon a frozen evening way up north, a sweet local honey named Holly inspired our Jolly Fat Man (as only Holly can) to create this festive spiced holiday ale. We think you will enjoy his holiday creation with it’s aromas and flavors of Christmas day. Sweet malt, ginger, honey and cinnamon spice. Sip this by the fire with your significant other. Who knows, maybe it will lead to a little inspiration of your own. From our Jolly Fat Man to yours, Happy Holidays.', 225, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_107316.jpg', 107316, 10, 4),
(11, 'Le Cheval Blanc Oktoberfest', 'Deep golden-orange lager brewed with pils and munich malts to celebrate the fall arrival. Dry hopped with czech Saaz hop.', 150, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_39579.jpg', 39579, 11, 11),
(12, 'Lazy Boy Red Head Imperial Red', '', 264, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_100233.jpg', 100233, 1, 4),
(13, 'Franklins Ludicrous', 'Our most ambitious beer to date utilized an anaerobic sour mash procedure that spanned three days to finish...ludicrous idea right?  After which it was fermented with our Belgian Saison yeast at nearly 87 degrees Fahrenheit.  The end result is a Sour Rye Saison that attacks you with the character of white wine and grapefruit juice.', 189, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_152576.jpg', 152576, 4, 4),
(14, 'Tap East IPA', 'Cask, Occasional;\n', 174, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_203540.jpg', 203540, 2, 7),
(15, 'Austin Beer Garden Hell Yes', 'Our Bavarian-style lager, with German malt and Hallertau and Saaz hops, is simple and elegant.', 135, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_234657.jpg', 234657, 15, 4),
(16, 'Woodland Empire Moon Dog', '', 159, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_295186.jpg', 295186, 16, 4),
(17, 'Apis Trójniak Wawelski', 'This type of mead is produced from nectar honey. 1 litre of mead contains 420 g of natural honey. Trójniak contains 13% of alcohol. The maturation period is 2 years. This is a medium sweet type of mead enriched with rowanberry juice, mineral salts and microelements.', 390, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_310795.jpg', 310795, 17, 17),
(18, 'Delhaize Ben\'s Belgian Saison (Ben Vinken)', 'Cette bière houblonnée à sec est pleine en bouche, faite avec des houblons américains et fortement fermentée. Idéale avec un fromage de chèvre sec ou un petit plat relevé.', 195, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_329399.jpg', 329399, 18, 2),
(19, 'Drygate Dark Skies', 'Draught.', 150, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_409949.jpg', 409949, 8, 19),
(20, 'Prancing Pony Pagan\'s Empire', 'An ’Imperial’ pale ale brewed with spelt and rye, and hopped with three varieties of U.S hops.', 198, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_488567.jpg', 488567, 2, 20),
(21, 'Fermentoren Dad Joke', '', 171, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_492189.jpg', 492189, 21, 1),
(22, 'Karuzela Stare Bielany', '18 Blg', 216, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_502655.jpg', 502655, 22, 17),
(23, 'Uiltje Uilskuikentje', 'Session / Lente bier', 87, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_595240.jpg', 595240, 24, 21),
(24, 'Stone Unfiltred Go to IPA', 'Unfiltred version of the Go to IPA', 141, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_613885.jpg', 613885, 2, 4),
(25, 'Loka Polly India Pale Ale Chinook Mosaic', 'IPA brewed with Chinook & Mosaic.', 186, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_622825.jpg', 622825, 2, 23),
(26, 'New Belgium Lips of Faith - Paardebloem', 'Using dandelion greens to bitter a Belgian-style ale blossomed from our brewers collaborating with Red Rock Brewing.  This being our sixth interpretation together since 2008, expect a wonderfully complex ale fermented with wild Belgian yeast and blended with just a touch of wood-aged beer.  Bitterness imparted from dandelion greens and grains of paradise will have you blowing wishes for sips.', 270, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_211668.jpg', 211668, 27, 4),
(27, 'Stronzo Scottish Monk', 'Belgian Barley Wine, aged in a single scottish whisky barrel with wood chips from old sherry casks. Only 620 bottles total.\r\n\r\nNot all beers are as fortunate as this one. Normally a beer will be brewed, bottled, shipped, bought and then drunk. Not necesarily a long lifespan. But this belgian style barleywine was lucky. Is was the chosen one. Specificaly selected for a priviliged life, it was moved to an oak barrel and was able to hide there for seven months. Nobody would disturbe it as it reveled in its luck. Now though, it has been bottled and bought, but it has had the time to get ready to be drunk by you.', 300, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_191158.jpg', 191158, 28, 1),
(28, 'Brewski / Brekeriet From Skåne With Love', '', 180, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_353248.jpg', 353248, 18, 26),
(29, 'Walhalla Wuldor UK Barley Wine', '', 294, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_409523.jpg', 409523, 28, 21),
(30, 'Jacob Bodenwöhrer Jacobator', 'Herzhaft, würziger, dunklen Jacobator Doppelbock. Der Geschmack ist fein, mild und lieblich. Stammwürze: 18.7%.', 225, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_21765.jpg', 21765, 31, 27),
(31, 'Thurston\'s Milk Stout', 'Cask; Status uncertain.\n\n\r\nSweet milk stout with chocolate and dark malt flavours combining with a dry finish.', 135, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_204953.jpg', 204953, 32, 7),
(32, 'Green Bench 1903 Berliner Weisse', '', 120, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_270024.jpg', 270024, 33, 4),
(33, 'Chandeleur Curlew\'s Toasted Coconut Porter', 'This brown porter base is loaded with tons of roasted malts giving it a plethora of flavors from coffee to chocolate to toffee.  Coconut is added to the boil and to the aging tanks putting a tropical twist on this traditional style.  Curlew is a mostly sand island secluded just far enough away from the main Chandeleur Island chain that it is almost untouched.  There have been many a coconut found on the surfside of this little piece of heaven.', 174, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_310738.jpg', 310738, 34, 4),
(34, 'Warpigs Gose (T)', '', 132, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_439720.jpg', 439720, 23, 1),
(35, 'Redhook Bicoastal IPA', '', 213, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_461209.jpg', 461209, 2, 4),
(36, 'Lost+Found R22 APA Fomosaic', 'A modern American Pale Ale with a robust malt profile and full hop hit of tropical fruit and citrus from the Mosaic, Simcoe and Ekuanot hops.\n', 156, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_592119.jpg', 592119, 37, 7),
(37, 'Sixpoint Sweet Re-Action', 'Original Sweet Action recipe from 2005. Similar to a Belgian Pale Ale, this offering deviates from the\r\nnorm with generous Pacific Northwest hop additions. Also, look for orange peel in the nose and on the palate towards the finish.', 201, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_92626.jpg', 92626, 38, 4),
(38, 'Alvinne Málaga Red', '', 270, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_238644.jpg', 238644, 39, 2),
(39, 'Dark Star Old Chestnut', 'Cask.\n\r\nPreviously known as Old Ale.', 120, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_99227.jpg', 99227, 22, 7),
(40, 'Wasatch Polygamy Nitro Porter', '6%abv Nitro in bottles \n\n\r\nShe’s on Nitro! Meet the sister-wife of our classic brew. The nitrogenated version is as chocolatey and easy drinkin’ as the original but even softer and creamier. It’s OK to love them both.', 180, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_312464.jpg', 312464, 34, 4),
(41, 'Brussels Beer Project / Weird Beard Churchill\'s Delusion', 'A Nicaraguan Cigar Mild.', 171, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_428658.jpg', 428658, 42, 2),
(42, 'Central City / Garrison \'New\' Scottish Ale', 'In Latin, Nova Scotia literally means \"New Scotland\". To celebrate Canada’s Scottish roots, we have brewed up a lightly peated Scottish ale.', 165, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_508409.jpg', 508409, 43, 11),
(43, 'Capital Garten Bräu Munich Dark', 'Styled after a traditional European Dunkel lager with dark caramel malt flavor with a smooth, dry finish. One of our original Garten Bräu beers, Capital Dark is our most award winning beer and still remains an all-time favorite.', 162, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_328361.jpg', 328361, 44, 4),
(44, 'Cigar City Oktoberfest', 'With malt flavors of bread crust and herbaceous hop notes familiar to generations of revelers, our Märzen-style lager is full bodied and complex but finishes as smooth as a fresh pair of lederhosen.', 174, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_153706.jpg', 153706, 11, 4),
(45, 'Firebrand Graffiti IPA', 'Graffiti IPA is one of our 2 core beers. A session IPA, brewed with a malt backbone of Maris Otter Pale Malt, hopped with Summit, Centennial and Amarillo. The beer is then dry hopped with Amarillo for extra hop character.', 156, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_259811.jpg', 259811, 24, 7),
(46, 'Granite Brewery Peculiar', 'Peculiar is a dark ale with a slightly sweet but dry palate.', 168, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_1540.jpg', 1540, 22, 11),
(47, 'Laurelwood Gearhead IPA', 'Gearhead IPA is brewed in the Northwest tradition of generous amounts of aroma hops, creating layers of citrus and piney aromatics and flavors, while managing to strike a balance with moderate malt body. This crisp and refreshing beer will provide you with complex and resinous aromas', 195, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_154610.jpg', 154610, 2, 4),
(48, 'Legenda Brutal Bitter IPA', 'Brutal Bitter – India Pale Ale: Ahogyan a nevében is benne van egy igen markánsan keserű amerikai stílusú India Pale Ale, de nem csak a keserűségében jeleskedik, hanem az Amarillo komló erősen gyümölcsös ízvilágából is sokat kapunk.A komlóforralás alatt hozzáadott komló mellett, még hidegkomlózáson is átesik a sör, ami még jobban előtérbe hozza az Amarillo komló stílusjegyeit. Egy igen keserű, de annál többrétűbb felsőerjesztésű sör. 21°', 246, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_209557.jpg', 209557, 49, 44),
(49, 'Hawkshead ITI (Little) NZPA', 'Cask & keg; Regular.\n\n\r\nNamed after the Maori word for ‘little’ this is NZPA’s little brother. Brewed with low colour Maris Otter pale malt and several NZ hops including; Nelson Sauvin, Motueka and Green Bullet.\n\r\nCrisp with citrus and floral aromas on the nose and huge flavours of gooseberry, grapefruit & tropical fruit.', 105, 3, 'https://res.cloudinary.com/ratebeer/image/upload/w_120,c_limit,d_beer_icon_default.png,f_auto/beer_268235.jpg', 268235, 37, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idCerveza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `idEstado_api` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idEstado`, `nombre`, `idEstado_api`) VALUES
(1, 'Oregon', 37),
(2, 'Wisconsin', 50),
(3, 'Tyne & Wear', 104),
(4, 'Indiana', 13),
(5, 'Ohio', 35),
(6, 'Quebec', 61),
(7, 'Washington', 47),
(8, 'Maryland', 20),
(9, 'Texas', 43),
(10, 'Idaho', 12),
(11, 'California', 5),
(12, 'Ontario', 59),
(13, 'Colorado', 6),
(14, 'Massachusetts', 21),
(16, 'Surrey', 103),
(17, 'Florida', 9),
(18, 'Mississippi', 24),
(20, 'East Sussex', 76),
(21, 'New York', 32),
(22, 'West Sussex', 105),
(23, 'British Columbia', 53),
(25, 'Cornwall', 70),
(339, 'Michigan', 22),
(348, 'Greater London', 79),
(353, 'Bavaria', 112),
(361, 'Utah', 44),
(366, 'Nova Scotia', 57),
(368, 'Cumbria', 71);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estilo`
--

CREATE TABLE `estilo` (
  `idEstilo` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `idTipo_api` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estilo`
--

INSERT INTO `estilo` (`idEstilo`, `nombre`, `descripcion`, `idTipo_api`) VALUES
(1, 'American Strong Ale', 'Not a style per se but a catch-all category to incorporate the plethora of strong, stylistically vague beers coming from American microbreweries today. Some are related to English Strong Ales but with a higher hop rate while others are ultra-strong variants on the IPA or red ale themes. No matter how varied their origins or characters might be, all are intense, potent, and with generous quantities of hops and malt.', 64),
(2, 'IPA', 'India Pale Ale, the modern version of which has largely been formed in the US, has an intense hop flavor, a golden to copper color, and a medium malty body. The aroma is moderate to very strong. IPAs work especially well at cutting the heat of chili, vindaloo or Sichuan cuisine.  In England, IPA is often just another name for bitter although some micros are doing their own versions of an American IPA as well.', 17),
(4, 'Sour / Wild Ale', 'Sour/Wild is a category encompassing a myriad of non-traditional sour ales which are typically brewed with an ale yeast and then inoculated with souring bacteria and yeasts &#045&#045 typically Lactobacillus, often Brettanomyces and Pediococcus, and sometimes Acetobacter.', 52),
(5, 'Premium Bitter / ESB', 'In England, many breweries have a number of bitters in their range. The style that has come to be known as Premium or Special Bitter generally includes the stronger &#40 4.6%-6.0%&#41 examples. These are mostly served in the traditional way from the cask, but some are also found in bottle form where the extra malt allows them to stand up better than the more delicate ordinary Bitter. In the US, the designation ESB is common for this style, owing to the influence of Fuller’s ESB, the London brew that was among the first to be exported to the States. In the US, some ESBs are made with American hops and a clean yeast, but the alcohol range is the same, as is the range of bitterness, usually between 25 and 35 but occasionally creeping higher.', 101),
(6, 'Witbier', 'Witbier, also known as Belgian White, is a style of Belgian-style wheat beers that are generally pale and opaque with a crisp wheat character and  citric refreshment of orange peel and coriander. Ingredients sometimes include oats for smoothness, and other spices such as grains of paradise. Serve with light cheeses or mussels.', 48),
(8, 'Stout', 'A stout is made with dark roasted malts which results in a dark color and a roasted malt flavor. In mainland Europe they are usually termed noir, or black. The word stout means strong and was applied to strong Porter in the 18th century - most typically by Guinness - who were one of the few breweries to continue making such beers into the 20th century. Guinness is today the template for Irish or Dry Stout. Other stout variations are Imperial Stout, Foreign Stout,  Sweet, or Milk Stout - as well as Porter, Imperial Porter, and Baltic Porter - and the related Mild and Schwarzbier.', 6),
(10, 'Spice / Herb / Vegetable', 'A catch-all category for ale or lager made with herbs, spices or vegetables. The additive should be distinctive in the aroma. Body, color, hop character and strength vary depending on the type of spice, herb or vegetable used.', 57),
(11, 'Oktoberfest / Märzen', 'Oktoberfest is a German festival dating from 1810, and Oktoberfestbiers are the beers that have been served at the festival since 1818, and are supplied by 6 breweries: Spaten, Lowenbrau, Augustiner, Hofbrau, Paulaner and Hacker-Pschorr.\r\nTraditionally Oktoberfestbiers were the lagers of around 5.5 to 6 abv called Marzen - brewed in March and allowed to ferment slowly during the summer months.\r\n\r\n\r\nOriginally these would have been dark lagers, but from 1872 a strong March brewed version of an amber-red Vienna lager made by Josef Sedlmayr became the favourite Oktoberfestbier.\r\n\r\nSince the 1990s European brewed versions have tended to be golden in colour, while American versions have remained dark or amber.', 37),
(15, 'Helles', 'Meaning \"light or \"pale\", a traditional German pale lager produced primarily in Bavaria.', 127),
(16, 'Amber Ale', 'A style without definition, amber ales range from bland, vaguely caramelly beers to products with a fairly healthy malt and hop balance. Often the differentiation between a quality amber and an American Pale is that the amber might have more dark malt character, or a less assertive hop rate.', 53),
(17, 'Mead', 'Honey wine, which tends to be quite strong and alcoholic-tasting, as honey ferments very well. Mead is often made with other ingredients for flavour, be they fruit or grain. The latter is known as braggot.', 44),
(18, 'Saison', 'Fruity esters dominate the aroma. Clarity is good with a large foamy head on top. The addition of several spices and herbs create a complex fruity or citrusy flavor. Light to medium bodied with very high carbonation. Alcohol level is medium to high.', 45),
(21, 'Brown Ale', 'Color ranges from reddish-brown to dark brown. Beers termed brown ale include sweet low alcohol beers such as Manns Original Brown Ale medium strength amber beers of moderate bitterness such as Newcastle Brown Ale and malty but hoppy beers such as Sierra Nevada Brown Ale.', 15),
(22, 'Old Ale', 'Old Ale is a simple enough style to figure out. At least, once you\r\nunderstand that there are three or four beer styles called Old Ale.\r\nThe first is the best known - the strong dark Old Peculier style. The second type of Old Ale is a blended dark ale. At least one of the beers comprising the blend will be aged for a couple of years in wood casks. The third version of Old Ale is a form of mild – a low-gravity dark ale. Another version of Old Ale is closely related to the first. For me, these\r\nare robustly malty beers, akin to a top-fermented version of a doppelbock.', 76),
(23, 'Grodziskie/Gose/Lichtenhainer', 'Sour wheat beers were common in many parts of medieval and early Industrial Europe. Two styles – lambic and Berliner weisse – survived, but many others did not. Gose and Lichtenhainer are historic styles of sour wheat beer.  Grodzisk is sometimes tart, sometimes not. Gose is seasoned with salt, Grodziskie and Lichtenhainer contain smoked malt. Historical sources are mixed about Lichtenhainer containing wheat, so modern interpretations may vary. Grätzer is an alternative name for Grodziskie. All three will be relatively low alcohol, with a strong wheat character, but will be distinct from classic examples of Berliner Weisse or lambic. As all we have are historical recreations, substantial differences may exist between interpretations.', 117),
(24, 'IPA - Session', 'The term Session IPA describes a category of beers marketed for their hop-dominant flavor profiles at &#39sessionable&#39 levels of alcohol. While this is typically 3.2-4.6% ABV, a few have stretched the definition. This class of beers arose c. 2010 out of the Craft Beer Tradition as a reaction to the trend of increasingly strong beers and greater public appreciation for hoppier profiles around the globe. It is differentiated from American Pale Ale by typically being lower in alcohol and usually having more hop-dominant profiles. While hops used are typically American Pacific Northwest and New Zealand, proprietary/experimental and South African and other hops may also factor into a Session IPA hop bill.', 121),
(27, 'Belgian Strong Ale', 'Belgian Strong Ales can vary from pale to dark brown in color, darker ales may be colored with dark candy sugar. Hop flavor can range from low to high, while hop aroma is low. The beers are medium to full-bodied and have a high alcoholic character. Types of beers included here include tripels, dubbels and ultra-strong abbey ales.', 13),
(28, 'Barley Wine / Wheat Wine', 'A Barley Wine is a strong, top-fermenting ale, with an alcohol content of at least 9% and up to 13% &#40or more&#41 by volume. Hops may be hardly noticeable at all or very noticeable. Sip them out of a glass that will concentrate the aroma, such as a snifter. Barley wines often pair well with desserts. Includes Wheat Wines.', 11),
(31, 'Bock - Doppelbock', 'Doppel means double and while these are stronger brews than the traditional German bocks, they are typically not twice the strength. They should have at least 18&deg Plato to be called Doppelbock. There are pale and dark beers of this style, so color can vary from light amber to dark brown. Very full body with a high alcoholic flavor. Low hop flavor and aroma.', 26),
(32, 'Stout - Sweet', 'Dark brown to black in colour. Sweet stouts come in two main varieties - milk stout and oatmeal stout. Milk stouts are made with the addition of lactose, and are sweet and generally low in alcohol. Oatmeal lends a smooth fullness of body to stouts. All of the sweet stouts are noted for their restrained roastiness in comparison with other stouts, and their low hop levels.', 23),
(33, 'Berliner Weisse', 'Very wheaty, very sour style of Berlin. Berliner weissebier has a barely perceptible hop content, low alcohol, and a sharp character. Often these are laced with syrups to cut the intense acidity, but purists will want to take them neat to enjoy the multi-faceted complexity and thirst-quenching character.', 61),
(34, 'Porter', 'Black or chocolate malt gives the porter its dark brown color. Porters are often well hopped and somewhat heavily malted. This is a medium-bodied beer and may show some sweetness usually from the light caramel to light molasses range. Hoppiness can range from bitter to mild. Porters, in relation to stouts of the same region, are typically more mild and less aggressively hopped.', 5),
(37, 'Pale Ale - American', 'American Pale Ales are light in color, ranging from golden to a light copper color. The style of this beer is typically defined by a balance between pale malts and hop presence - although without the hop intensity or alcohol strength of an IPA. American Pale Ales generally range in strength from c. 4.5% to 6.5% &#40although there are examples outside of this range&#41.\r\n\r\nThis is a perfect beer for big fare like grilled burgers or combination pizzas, as well as lighter fare like sushi and green salads.', 18),
(38, 'Belgian Ale', 'Belgian-style ales seldom fit neatly into classic beer styles, but this category represents those ales under approximately 7% abv that do not fit other categories. Colour ranges from golden to deep amber, with the occasional example coming in darker. Body tends to be light to medium, with a wide range of hop and malt levels. Yeastiness and acidity may also be present.', 12),
(39, 'Sour Red / Brown', 'The sour red/brown beers of Flanders can be considered as two different styles, or two ends of a single style continuum, depending on how you choose to view the issue. They are a clearly–defined sour ale subtype, one with strong historical traditions. Their character blends rich malt with tartness, and usually some fruity character as well. Oak aging is common in the traditional production of the style and therefore is often evident in the character. Many examples are also aged on fruit. At the red end of the style, the classic is Rodenbach at the brown end it is Liefmans, and there are several very good examples in between.', 118),
(42, 'Mild Ale', 'Malt accented, typically little or no hop flavour or aroma. Usually medium to dark brown in colour though many English examples are almost black with caramel often added for colouring as well as favouring purposes. Mild refers to no or limited  hop bitterness/  aroma. Still very popular in the North- West and Midland areas of England where it is usually between 3 to 4% ABV and preferred with a good head. There are examples of stronger versions of the style,  but rarely over  5-6%.', 55),
(43, 'Scotch Ale / Wee Heavy', 'Scotch Ale was the name given to a strong pale ale from Edinburgh in the 19th century. This was typical of the strong pale ales brewed in Britain at that time - mainly pale barley malt and moderate hopping, and were not that stylistically different to English Strong Ales or Barley Wines. The name however became regionalised so that a strong pale ale from Scotland became known as a Scotch Ale or Wee Heavy. Beers using the designation Scotch Ale are popular in the USA where most examples are brewed locally. Examples of beers brewed in the USA under the name Wee Heavy tend to be 7%25 abv and higher, while Scottish brewed examples, such as Belhavens Wee Heavy, are typically between 5.5%25 and 6.5%25 abv.', 102),
(44, 'Dunkel / Tmavy', 'Copper to dark brown lager common in Germany and the Czech Republic but made worldwide. Medium body. Nutty toasted chocolate-like malty sweetness in aroma and flavor. Medium bitterness. Low &quotnoble-type&quot hop flavor and aroma. In both Germany and Czech dark lagers span a wide range of characters from sweet to dry forming more of a category than a specific style with considerable leeway for the brewer with regards to the character of the beer.  This is the biggest reason why they are grouped together despite coming from different traditions and each being made with local ingredients.', 28),
(49, 'IPA - Imperial / Double', 'Imperial IPA, also called Double or Triple IPA, is a strong often sweet intensely hoppy version of the traditional India Pale Ale. Bitterness units range tend to be 100 IBUs and above. The ABV level for DIPAs generally begins at 7.5% but is more commonly in the 8.0%+ range.  The flavour profile is intense all around.  Unlike barley wines, the balance is heavily towards the hops, with crystal and other malts providing support.', 81);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricante`
--

CREATE TABLE `fabricante` (
  `idFabricante` int(11) NOT NULL,
  `idFabricante_api` int(11) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `idEstado` int(11) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fabricante`
--

INSERT INTO `fabricante` (`idFabricante`, `idFabricante_api`, `pais`, `idEstado`, `direccion`, `nombre`) VALUES
(1, 213, 'United States', 339, '8690 Krum Ave.', 'Bell\'s Brewery'),
(4, 240, 'England', 3, 'Palace of Arts Exhibition Park, Claremont Rd', 'Wylam'),
(7, 39, 'Canada', 6, '809, Rue Ontario Est', 'Le Cheval Blanc - Brasseur Artisan & Bar'),
(15, 79, 'Germany', 353, 'Ludwigsheide 2', 'Familienbrauerei Jacob'),
(331, 58, 'Denmark', NULL, 'Borupvej 80', 'Stronzo Brewing Co.'),
(332, 23, 'Belgium', NULL, 'Ardooisestraat 130', 'd\'Oude Maalderij'),
(347, 163, 'Poland', NULL, 'Ul.Diamentowa 23', 'Spóldzielnia Pszczelarska Apis'),
(349, 241, 'Scotland', NULL, '85 Drygate', 'Drygate Brewing Co'),
(350, 14, 'Australia', NULL, '42 Mt Barker Road', 'Prancing Pony Brewery'),
(351, 144, 'Netherlands', NULL, 'Bingerweg 25', 'Uiltje Brewing Co.'),
(353, 239, 'Wales', NULL, 'Holland Farm, Black Brook', 'Loka Polly Beer (Prev Black Brook)'),
(356, 190, 'Sweden', NULL, 'Cindersgatan 8', 'Brewski'),
(374, 94, 'Hungary', NULL, 'Szlovák út 116.', 'Legenda Sörfozde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idPago` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `imagen` blob NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `password`, `email`, `nombre`, `apellidos`, `imagen`, `usuario`, `token`) VALUES
(1, 21232, 'admin@admin.com', 'admin', 'admin', '', 'admin', ''),
(2, 70000, 'pablo@pablo', 'pablo', 'pablo', '', 'pablo', 'b6589fc6ab0dc82cf12099d1c2d40ab994e8410c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `idZona` int(11) NOT NULL,
  `idZona_api` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cerveza`
--
ALTER TABLE `cerveza`
  ADD PRIMARY KEY (`idCerveza`),
  ADD UNIQUE KEY `idCerveza_api` (`idCerveza_api`),
  ADD KEY `FK_estilo_en_cerveza` (`idEstilo`),
  ADD KEY `FK_idFabricante_cerveza` (`idFabricante`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idEstado`),
  ADD UNIQUE KEY `idEstado_api` (`idEstado_api`);

--
-- Indices de la tabla `estilo`
--
ALTER TABLE `estilo`
  ADD PRIMARY KEY (`idEstilo`),
  ADD UNIQUE KEY `idTipo_api` (`idTipo_api`);

--
-- Indices de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`idFabricante`),
  ADD UNIQUE KEY `idFabricante_api` (`idFabricante_api`),
  ADD KEY `FK_idEstado_fabricante` (`idEstado`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`idZona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cerveza`
--
ALTER TABLE `cerveza`
  MODIFY `idCerveza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `idEstado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT de la tabla `estilo`
--
ALTER TABLE `estilo`
  MODIFY `idEstilo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `idFabricante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `idPago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `zona`
--
ALTER TABLE `zona`
  MODIFY `idZona` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cerveza`
--
ALTER TABLE `cerveza`
  ADD CONSTRAINT `FK_estilo_en_cerveza` FOREIGN KEY (`idEstilo`) REFERENCES `estilo` (`idEstilo`),
  ADD CONSTRAINT `FK_idFabricante_cerveza` FOREIGN KEY (`idFabricante`) REFERENCES `fabricante` (`idFabricante`);

--
-- Filtros para la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD CONSTRAINT `FK_idEstado_fabricante` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
