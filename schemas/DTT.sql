-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 21, 2019 at 07:58 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DTT`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `summary` varchar(500) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `summary`, `content`, `date`) VALUES
(1, 'Almost 300,000 people say they’re gonna storm area 51', 'A Facebook event called “Storm Area 51, They Can’t Stop All of Us” has amassed an army of memers, schemers and tinfoil hat-wearing conspirators to raid the top-secret Air Force military base in the middle of Nevada’s desert.', 'Over 289,000 users confirmed they’re planning to come along, while 314,000 are “interested.” It’s gotten so big that the event is grabbing the attention of local and even international media.\r\n\r\nNeedless to say, the event itself is a joke, hosted by a Facebook group called “Shitposting cause im [sic] in shambles” made up of some 20,000 meme-loving netizens. The group classifies itself as a “religious organization” on the platform.\r\n\r\n“We will all meet up at the Area 51 Alien Center tourist attraction and coordinate our entry,” reads the event description. “If we [N]aruto run, we can move faster than their bullets. Lets see them aliens.”\r\n\r\nArea 51 has long been the subject of wild speculation and alien conspiracy theories since it was set up in 1955. The 5,000 square mile base has hosted hundreds of nuclear weapons tests and has served as testing grounds for a range of new stealth aircraft.\r\n\r\nThe event might be a tongue-in-cheek joke, but storming Area 51 is a terrible idea — guards are authorized to “use deadly force” according to a sign that warns would-be trespassers at the outskirts of the base.\r\n\r\nWhether “Naruto running” will be enough to successfully dodge their bullets remains to be seen.', '2019-07-11'),
(2, '3D-printed human skin and bone could save astronauts on mars', 'Scientists from the University Hospital of Dresden Technical University (TUD) in Germany just 3D printed skin and bone samples to see if astronauts on Mars could use the technology in low-gravity environments.', 'The research is part of the European Space Agency’s 3D Printing of Living Tissue for Space Exploration project, a mission to explore different ways astronauts could recover from injuries in distant places in our solar system — like Mars or deep space.\r\n\r\nThe team of scientists used “bio-ink” made out of human blood plasma to minimize the chances of body rejection. To stop the ink from flying off in droplets, they mixed in algae-based materials to increase viscosity — a material that could be grown in the spacecraft of the future.\r\n\r\n“Astronauts could obtain these [algae-based] substances from plants and algae respectively, a feasible solution for a self-contained space expedition,” said Nieves Cubo from TUD in a statement.\r\n\r\nEventually, the idea is that the new tools with let astronauts treat injuries when they’re millions of miles from the nearest hospital.\r\n\r\n“Instead, a 3D bioprinting capability will let them respond to medical emergencies as they arise,” said project leader Tommaso Ghidini. “In the case of burns, for instance, brand new skin could be bio-printed instead of being grafted from elsewhere on the astronaut’s body, doing secondary damage that may not heal easily in the orbital environment.”', '2019-07-10'),
(3, 'Expert: future robots could steal your children', 'Unlike the average parent, a robot is never tired. It’s never annoyed, or distracted, or impatient — and, according to author and AI ethics expert John C. Havens, that means bots might one day steal the right to raise children away from humans.', '“When it comes to roles that could be replaced by machines, the job of parenting is often not discussed,” Havens wrote in a fascinating new Quartz story. “But if a focus on efficiency is valued above human caregiving in our future, it’s possible that AI toys, personal assistants, or companion robots could someday replace humans as parents.”\r\n\r\nIn Quartz, Havens details how various artificial intelligences are already taking over parenting tasks, arguing that machines will “inevitably” outperform human parents eventually in at least some ways.\r\n\r\n\r\nHe also points to growing evidence that children can form bonds with parental proxies, including smart assistants like Amazon’s Alexa — sometimes at the expense of the parent/child relationship.\r\n\r\nIn other words, we could be headed toward a future in which robots are not only better than humans at the practical aspects of parenting, but also preferred by children over mom and dad.\r\n\r\nAt that point, the question of whether parents should have a legal right to raise their children will come into play, so humans need to act now to preserve that right to parent, according to Havens, “before they lose the chance.”', '2019-07-10'),
(4, 'New laser can identify people from a distance by their heartbeat', 'The U.S. Special Forces are developing a device that can detect a person’s unique cardiac signature using an IR laser from a distance. The Pentagon’s special project nicknamed “Jetson” can work from a 200 meter distance — improved versions could enable even longer distances.', 'Steward Remaly, of the Pentagon’s Combatting Terrorism Technical Support Office who worked on the project, claims that the device is accurate over 95 percent of the time according to MIT Technology Review — that is, if the conditions are right.\r\n\r\nInfrared — like the heart rate sensor on an Apple Watch — can pick up on the changes in how much light is reflected in a blood stream and can infer a person’s pulse from that. Jetson, however, analyzes tiny vibrations on the surface of the skin to detect a heartbeat — and that works just as well through a layer of clothing.\r\n\r\nThat means it’s useful in situations when a biometric facial recognition system fails to get a good view of a target’s face. “Compared with face, cardiac biometrics are more stable and can reach more than 98% accuracy, Remaly told MIT Technology Review.\r\n\r\nWhile the technology is impressive, the device takes about 30 seconds to get a good read. That means a target needs to be either sitting or standing still.\r\n\r\nThe U.S. armed forces would also need to start creating a cardiac signature database from scratch for the device to be of any use.', '2019-06-27'),
(5, 'Startup unveils world’s first long-range “solar car”', 'The fact that the newly unveiled Lightyear One electric car has a better range than any other EV on the market is enough to set it apart. That it’s also solar-powered makes it one of a kind.', 'Dutch startup Lightyear unveiled the Lightyear One prototype on Tuesday, and according to the company, the solar-powered EV boasts a range of 725 kilometers on a single charge — far more than the 595 kilometers of Tesla’s market-leading Model S.\r\n\r\n“This moment represents a new era of driving,” Lightyear CEO Lex Hoefsloot said during the unveiling. “Two years of dreaming, thinking and working hard have led to this milestone, which is a giant leap towards achieving our mission of making clean mobility available to everyone.”\r\n\r\nThe body of the Lightyear One is covered in five square meters of solar cells, which Lightyear claims can charge the car at a rate of 12 kilometers (7.4 miles) per hour.\r\n\r\nAs pointed out by Electrek, that means a person could drive the solar car 30 kilometers (18.6 miles) to work in the morning, leave it parked in the sunlight for the day, and have it fully charged by the time they finish work eight hours later.\r\n\r\nIn addition to the solar cells, the Lightyear One is also capable of pulling energy from typical EV charging stations or even regular outlets, though, so overcast weather wouldn’t mean you’d be stuck at home with a depleted battery.\r\n\r\nThe company is now taking orders for the $170,000 vehicle, with deliveries expected to begin in early 2021.', '2019-06-25'),
(6, 'Astronauts are planning to bake cookies on the space station', 'Next year, astronauts on the International Space Station will be tasked with their tastiest mission to date: bake a batch of chocolate chip cookies.', 'It’s unlikely that space agencies are particularly interested in figuring out how to bake dessert, as Popular Science reports that all the experimental batches will immediately be sent down to Earth for analysis. But the lessons learned while sorting out the challenges of baking in microgravity could also apply to future missions — in which astronauts could need to fabricate their own tools and perhaps even transplantable organs.\r\n\r\nThe inherent silliness of space cookies, much like space beer and coffee, is a PR rep’s dream. With an oven made by collaborating companies called Zero G Kitchen and NanoRacks, and a cookie recipe — and bizarre PR statement about orbital hotels — from Hilton’s DoubleTree, PopSci reports that the whole endeavor is probably a bit of a publicity stunt.\r\n\r\nBut that doesn’t make it worthless — the orbital bakers will experiment with a modified oven where individual cookies will bake inside pockets that hold them in place. Getting the cookies to resemble something baked on Earth, and preventing the leftover particles of ingredients from creating problems with other space station equipment, are both important puzzles to solve.\r\n\r\nAnd hey, maybe someday when they perfect the recipe, NASA will actually let the astronauts take a bite.', '2019-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'thelegend27', '$2y$08$UWEzQTMyVzNkQlJ3bHQxcOPu20MF4T0/Op6TdnRcvZ3q2xJGhV4um');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
