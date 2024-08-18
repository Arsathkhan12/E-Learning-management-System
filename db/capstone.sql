-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2024 at 02:22 PM
-- Server version: 8.3.0
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(14, 'admin', '2024-06-12 12:33:21', 'Add School Year 2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int NOT NULL,
  `class_id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(32, 'admin/uploads/4658_File_String Lights and Watercolor Floral Wedding Card.pdf', '2024-06-13 00:49:52', 'on time set the CW', 9, 187, 'wedding card'),
(33, 'admin/uploads/5269_File_2552_File_sample.pdf', '2024-06-16 12:29:15', 'Submitted the Assignment.', 9, 187, 'Law ASS_1');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(7, 'BSIS-4A'),
(8, 'BSIS-4B'),
(12, 'BSIS-3A'),
(13, 'BSIS-3B'),
(14, 'BSIS-3C'),
(15, 'BSIS-2A'),
(16, 'BSIS-2B'),
(17, 'BSIS-2C'),
(18, 'BSIS-1A'),
(19, 'BSIS-1B'),
(20, 'BSIS-1C'),
(21, 'BSED-1A'),
(22, 'AB-1C'),
(23, 'BSIT-2B'),
(24, 'BSIT-1A');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

DROP TABLE IF EXISTS `class_quiz`;
CREATE TABLE IF NOT EXISTS `class_quiz` (
  `class_quiz_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `quiz_time` int NOT NULL,
  `quiz_id` int NOT NULL,
  PRIMARY KEY (`class_quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

DROP TABLE IF EXISTS `class_subject_overview`;
CREATE TABLE IF NOT EXISTS `class_subject_overview` (
  `class_subject_overview_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `content` varchar(10000) NOT NULL,
  PRIMARY KEY (`class_subject_overview_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(2, 187, '<p><strong>Overview</strong><br />\r\n<br />\r\nThe LL.B Degree programme is a four-year academic programme. Under the programme, a student studies nineteen (19) law subjects within a span of four academic years. The four academic years of the LL.B Degree programme are called the Bachelor of Laws Degree Year I, Year II, Year III, and Year IV respectively.</p>\r\n\r\n<p>Revision of the current curriculum is in progress and will be introduced in the near future. However, the programme which was revised in 1996 has the following features:</p>\r\n\r\n<ul>\r\n	<li>Several new subjects were introduced and the total number of lecture hours for certain subjects was reduced in order to enable undergraduates to carry out independent research and study.</li>\r\n	<li>A subject called Legal Method was introduced in Year I to familiarise undergraduates with areas such as legal history, the legal profession, how to carry out research, how to read cases, and how to write a research paper. Undergraduates are strongly advised to make use of the study skills and opportunities provided by this subject and to actively interact with the lecturer concerned.</li>\r\n	<li>Another change was that Public International Law was made compulsory for Year III law undergraduates.</li>\r\n	<li>To provide knowledge in the area of Commercial Law, new subjects such as International Investment Law, Business Law and Intellectual Property Law have been introduced under this programme.</li>\r\n</ul>\r\n\r\n<p>Interpretation of Statutes and Documents, and Evidence and Procedure were made compulsory electives in the Year III; and Human Rights Law and Environmental Law have been made compulsory electives in the 4<span style=\"font-size:11.25px\">th</span>&nbsp;Year. Accordingly, in the 3<span style=\"font-size:11.25px\">rd</span>&nbsp;Year you must study either Interpretation of Statutes and Documents&nbsp;<u>or</u>&nbsp;Evidence and Procedure; and in the 4<span style=\"font-size:11.25px\">th</span>&nbsp;Year you must study Human Rights Law&nbsp;<u>or</u>&nbsp;Environmental Law. The idea was that all undergraduates must study a course which has a practical basis in the 3<span style=\"font-size:11.25px\">rd</span>&nbsp;Year and that all undergraduates in the 4<span style=\"font-size:11.25px\">th</span>&nbsp;Year should study a course which will make them socially responsible citizens. Please refer the section on &ldquo;<a href=\"https://law.cmb.ac.lk/2016/?page_id=117\" style=\"box-sizing: border-box; background: transparent; color: rgb(52, 52, 52); text-decoration-line: none; transition: color 0.2s ease 0s; margin-bottom: 0px;\">Subjects Offered.</a>&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>New optional subjects were introduced and teaching methodology was revised to encourage more student participation in class and to reduce the dependence on lecture notes.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(15, 'History', '<p>First developed by Sidney L. Pressey, the Teaching Machine offered various kinds of practical exercises and multiple-choice questions (MCQs). Resembling a typewriter, the machine required learners to drill in answers, which were recorded. The learner could only advance if their response to the previous question was correct&mdash;a feature most of the modern LMSs still use.</p>\r\n\r\n<p>Milton Ezra LeZerte created the Problem Cylinder, a device that provided instruction without the need for an instructor&rsquo;s intervention. One of the great features of the problem cylinder was that it not only tested learners&rsquo; knowledge with MCQs but also checked their responses&mdash;whether right or wrong, thereby saving the instructor&rsquo;s time</p>\r\n\r\n<p>The University of Houston, USA, televised the first for-credit college course for people to learn right from the comfort of their homes. Video lectures/lessons were aired every evening so everyone &mdash; including full-time workers &mdash; could benefit from the lessons, ensuring learning was not compromised because of work commitments</p>\r\n\r\n<p>SAKI, in a way, was the first machine to offer learning that felt mildly personal. Short for Self-Adaptive Keyboard Instructor, SAKI was pioneered by Gordon Pask and McKinnon Wood, offering personalized practice questions based on the learner&rsquo;s performance. As their performance improved over time, SAKI would &lsquo;learn&rsquo; and increase the complexity of subsequent questions.</p>\r\n\r\n<p>The next big thing in LMS history was the invention of PLATO (Programmed Logic for Automatic Teaching Operation) by Dr. Donald Bitzer. PLATO was a computer-based training program that facilitated self-paced learning, allowing learners to monitor their own learning progress. It also gave the learning community its first taste of social/ collaborative learning. Thanks to its host of networks, learners could interact with other learners using instant chat/messaging, email, and chat rooms.</p>\r\n\r\n<p>The HP-9100A was Hewlett-Packard&rsquo;s first calculator, packed with never before seen computational abilities. It could process and solve engineering problems 10 times faster than existing machines. The HP-9100 laid the foundation for the way connections are established today via the Internet, and essentially paved the way for the everyday use of the LMS.</p>\r\n\r\n<p>Almost a forerunner to the LMS, MIT&rsquo;s Project Athena at</p>\r\n'),
(16, 'mission', '<p>he suspension of in-school learning caused by the&nbsp;<a href=\"https://en.wikipedia.org/wiki/COVID-19_pandemic\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\" title=\"COVID-19 pandemic\">COVID-19 pandemic</a>&nbsp;started a dramatic shift in the way teachers and students at all levels interact with each other and learning materials.&nbsp;<a href=\"https://en.wikipedia.org/wiki/UNESCO\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\" title=\"UNESCO\">UNESCO</a>&nbsp;estimated that as of May 25, 2020, approximately 990,324,537 learners, or &nbsp;56.6% of the total enrolled students have been affected by COVID-19 related school closures.<sup><a href=\"https://en.wikipedia.org/wiki/Learning_management_system#cite_note-40\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\">[40]</a></sup>&nbsp;In many countries,&nbsp;<a class=\"mw-redirect\" href=\"https://en.wikipedia.org/wiki/Online_education\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\" title=\"Online education\">online education</a>&nbsp;through the use of Learning Management Systems became the focal point of teaching and learning. For example, statistics taken from a university&rsquo;s LMS during the initial school closure period (March to June 2020) indicate that student submissions and activity nearly doubled from pre-pandemic usage levels.<sup><a href=\"https://en.wikipedia.org/wiki/Learning_management_system#cite_note-41\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\">[41]</a></sup></p>\r\n\r\n<p>Student satisfaction with LMS usage during this period is closely tied to the information quality contained within LMS modules and maintaining student&nbsp;<a href=\"https://en.wikipedia.org/wiki/Self-efficacy\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\" title=\"Self-efficacy\">self-efficacy</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Learning_management_system#cite_note-42\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\">[42]</a></sup>&nbsp;From the teacher perspective, a study of&nbsp;<a href=\"https://en.wikipedia.org/wiki/K%E2%80%9312\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\" title=\"K–12\">K-12</a>&nbsp;teachers in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Finland\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\" title=\"Finland\">Finland</a>&nbsp;reported high levels of acceptance for LMS technology, however, training support and developing methods for maintaining student engagement are key to long-term success.<sup><a href=\"https://en.wikipedia.org/wiki/Learning_management_system#cite_note-43\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\">[43]</a></sup>&nbsp;In developing nations, the transition to LMS usage faced many challenges, which included a lower number of colleges and universities using LMSs before the pandemic, technological infrastructure limitations, and negative attitudes toward technology amongst users.<sup><a href=\"https://en.wikipedia.org/wiki/Learning_management_system#cite_note-44\" style=\"text-decoration-line: none; color: var(--color-progressive,#36c); background: none; overflow-wrap: break-word;\">[44]</a></sup></p>\r\n'),
(17, 'Directories', '<ul>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/academy-of-mine/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_hover_color);\">Academy of Mine</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/accessplanit/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">accessplanit (Course Manager)</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/aktiv-mind/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">Aktiv Mind</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/blackboard/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">Blackboard</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/classe365/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">Classe365</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/classroom24-7/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">Classroom24-7</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/commpartners/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">CommPartners (Elevate LMS)</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/quizworks/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"\">Easy LMS</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/ethink-education/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">eThink Education</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/ethosce-learning-management-system/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">EthosCE Learning Management System</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/examination-online-lms/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">Examination Online</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/uzity-learning-management-system/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">Foradian Technologies (Uzity LMS)</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/grovo/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">Grovo</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/instancy/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">Instancy</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/iqualify/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">iQualify</a></li>\r\n	<li><a href=\"https://talentedlearning.com/ispring-ispring-learn-lms/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">iSpring (iSpring Learn LMS)</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/itslearning/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">itslearning</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/joomlalms/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">JoomlaLMS</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/knoitall/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">Knoitall</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/lambda-solutions/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">Lambda Solutions (ZOOLA Analytics)</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/learndash/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">LearnDash</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/lucid-lms/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">Lucid LMS</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/neo-lms-cypher-learning/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">NEO LMS by CYPHER LEARNING</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/nextthought/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">NextThought</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/oxagile/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">Oxagile</a></li>\r\n	<li><a href=\"https://talentedlearning.com/thimpress-learnpress-lms/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">ThimPress (LearnPress LMS)</a></li>\r\n	<li><a href=\"https://talentedlearning.com/lms-vendor-directory/tutorpro/\" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\">TutorPro</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/unleesh/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">Unleesh</a></li>\r\n	<li><a href=\"https://talentedlearning.com/directory/wiziq-inc/\" rel=\"noopener \" style=\"box-sizing: border-box; text-decoration-line: none; transition-property: color, background-color, border-color; transition-duration: 0.2s; transition-timing-function: linear; color: var(--link_color);\" target=\"_blank\">WizIQ Inc.</a></li>\r\n</ul>\r\n'),
(18, 'Campuses', '<ul>\r\n	<li><a href=\"https://lms.eduhub.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">EduHub Online Academy</a></li>\r\n	<li><a href=\"https://exams.edulankans.com/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Edulankans Exam System</a></li>\r\n	<li><a href=\"https://edurase.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Edurase</a>&nbsp;</li>\r\n	<li><a href=\"https://www.enenapiyasa.lk/lms\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Enenapiyasa</a></li>\r\n	<li>EnglishSL</li>\r\n	<li><a href=\"https://erevision.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">eRevision.lk</a></li>\r\n	<li><a href=\"https://www.estudy.lk/physics\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">eStudy.lk</a></li>\r\n	<li><a href=\"https://exam.sci.cmb.ac.lk/lms\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Examinations - Faculty of Science</a></li>\r\n	<li><a name=\"F\"></a>Faculty of Applied Science-VLE</li>\r\n	<li><a href=\"https://feels.pdn.ac.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Faculty of Engineering e-Learning System (FEeLS)</a></li>\r\n	<li><a href=\"http://192.248.48.157/fgslms\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Faculty of Graduate Studies - LMS</a></li>\r\n	<li>Faculty of Management &amp; Finance - Learning Management System</li>\r\n	<li><a href=\"https://fbs.pixalogy.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Farmer Business School</a></li>\r\n	<li>Fellowship 2021</li>\r\n	<li><a name=\"G\"></a><a href=\"http://lms.gatewayworldwide.com/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Gateway College</a></li>\r\n	<li><a href=\"https://global-languages.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">global-languages</a></li>\r\n	<li><a href=\"http://gsd.seweasy.biz/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">gsd.seweasy.biz</a></li>\r\n	<li><a name=\"H\"></a>Heading for the Future</li>\r\n	<li>Henegama LMS</li>\r\n	<li><a href=\"https://lms.horizoncampus.edu.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Horizon Learning Management System</a></li>\r\n	<li><a href=\"https://acbt.moodlecloud.com/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">https://acbt.moodlecloud.com</a></li>\r\n	<li><a name=\"I\"></a><a href=\"https://ilearn.igate.edu.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">i-GATE College E-Learning Platform</a></li>\r\n	<li><a href=\"https://ibslguide.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">IBSL Guide</a></li>\r\n	<li>ICT</li>\r\n	<li><a href=\"https://academic.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">ICT with Tharindu Dissanayake</a></li>\r\n	<li><a href=\"https://icthub.gnomio.com/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">icthub.gnomio.com</a></li>\r\n	<li>IDMNC Gampaha</li>\r\n	<li><a href=\"https://learning.iit.ac.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Informatics Institute of Technology (IIT LMS)</a></li>\r\n	<li>Inspiration of Chemistry&nbsp;</li>\r\n	<li>Institute for Research &amp; Development in Health &amp; Social Care</li>\r\n	<li><a href=\"https://my.iahs.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Institute of Archaeology and Heritage Studies</a></li>\r\n	<li>Institute of Human Resource Advancement</li>\r\n	<li><a href=\"https://language-teacher.org/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">International Association of Language Teachers (IALT)</a></li>\r\n	<li><a href=\"https://ishanlakshitha.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">Ishan Lakshitha Information Communication Technology</a></li>\r\n	<li><a href=\"https://lms.iteach.lk/\" style=\"box-sizing: border-box; color: rgb(15, 108, 191); text-decoration-line: none; background-color: transparent;\">iTeach</a></li>\r\n	<li>Itutor sl</li>\r\n</ul>\r\n'),
(19, 'Events', '<p><span style=\"color:rgb(26, 26, 26); font-family:euclidcircularb,-apple-system,blinkmacsystemfont,segoe ui,roboto,helvetica neue,arial,noto sans,sans-serif,apple color emoji,segoe ui emoji,segoe ui symbol,noto color emoji; font-size:21px\">Find, choose and compare Learning Management Systems with calendar settings functionality in the Top LMS Software directory of eLearning Industry. Organize your events, schedule your modules and webinars, and share your calendar with your users to keep them up to date with your eLearning plan.</span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(5, 'School of Arts and Science', 'DR.'),
(10, 'Sample Department', 'DR. John Smith'),
(11, 'College of Industrial Technology', ''),
(12, 'College of Industrial Technology', 'N.M.Nuhman ');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(21, 'law subject', 187, '06/11/2024', '07/14/2024'),
(22, 'Final project', 0, '06/11/2024', '07/14/2024'),
(23, 'Nations song party', 0, '06/21/2024', '08/14/2024'),
(24, 'end of Assignments', 187, '06/11/2024', '07/14/2024');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int NOT NULL,
  `class_id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `reciever_id` int NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(33, 9, 'Hello sir,\r\n\r\nI am Arsathkhan, a student of your class law. My fever has increased and the doctor has advised me to take rest for a week. Therefore, I will be absent from class [class number]. Please ', '2024-06-19 19:19:08', 76, 'N.M Nuhman', 'mohamed Arsathkhan', ''),
(34, 76, 'ok noted.', '2024-06-19 19:28:17', 9, 'mohamed Arsathkhan', 'N.M Nuhman', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

DROP TABLE IF EXISTS `message_sent`;
CREATE TABLE IF NOT EXISTS `message_sent` (
  `message_sent_id` int NOT NULL AUTO_INCREMENT,
  `reciever_id` int NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  PRIMARY KEY (`message_sent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(15, 76, 'hi', '2024-06-13 01:22:10', 9, 'mohamed Arsathkhan', 'N.M Nuhman'),
(16, 9, 'hi sir ', '2024-06-13 01:25:53', 76, 'N.M Nuhman', 'mohamed Arsathkhan'),
(17, 9, 'hi\r\n', '2024-06-18 10:25:42', 9, 'N.M Nuhman', 'N.M Nuhman'),
(18, 9, 'Hello sir,\r\n\r\nI am Arsathkhan, a student of your class law. My fever has increased and the doctor has advised me to take rest for a week. Therefore, I will be absent from class [class number]. Please ', '2024-06-19 19:19:08', 76, 'N.M Nuhman', 'mohamed Arsathkhan'),
(19, 76, 'ok noted.', '2024-06-19 19:28:17', 9, 'mohamed Arsathkhan', 'N.M Nuhman');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(24, 187, 'Add Assignment file name <b>wedding card</b>', '2024-06-13 00:49:52', 'assignment_student.php'),
(25, 187, 'Add Assignment file name <b>Law ASS_1</b>', '2024-06-16 12:29:15', 'assignment_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

DROP TABLE IF EXISTS `notification_read`;
CREATE TABLE IF NOT EXISTS `notification_read` (
  `notification_read_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int NOT NULL,
  PRIMARY KEY (`notification_read_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15),
(6, 76, 'yes', 24),
(7, 76, 'yes', 25);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

DROP TABLE IF EXISTS `notification_read_teacher`;
CREATE TABLE IF NOT EXISTS `notification_read_teacher` (
  `notification_read_teacher_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int NOT NULL,
  PRIMARY KEY (`notification_read_teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

DROP TABLE IF EXISTS `question_type`;
CREATE TABLE IF NOT EXISTS `question_type` (
  `question_type_id` int NOT NULL,
  `question_type` varchar(150) NOT NULL,
  PRIMARY KEY (`question_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
CREATE TABLE IF NOT EXISTS `quiz_question` (
  `quiz_question_id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int NOT NULL,
  `points` int NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`quiz_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

DROP TABLE IF EXISTS `school_year`;
CREATE TABLE IF NOT EXISTS `school_year` (
  `school_year_id` int NOT NULL AUTO_INCREMENT,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`school_year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2022-2023'),
(5, '2023-2024'),
(6, '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(76, 'mohamed', 'Arsathkhan', 22, '17268', '123', 'uploads/xyz.jpg', 'Registered'),
(220, 'Amhar', 'Atheef', 22, '17269', '123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

DROP TABLE IF EXISTS `student_assignment`;
CREATE TABLE IF NOT EXISTS `student_assignment` (
  `student_assignment_id` int NOT NULL AUTO_INCREMENT,
  `assignment_id` int NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY (`student_assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(2, 32, 'admin/uploads/4227_File_Wedding card.docx', '2024-06-13 00:52:04', '1234', 'wedding card', 76, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

DROP TABLE IF EXISTS `student_backpack`;
CREATE TABLE IF NOT EXISTS `student_backpack` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
(2, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(3, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(4, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

DROP TABLE IF EXISTS `student_class_quiz`;
CREATE TABLE IF NOT EXISTS `student_class_quiz` (
  `student_class_quiz_id` int NOT NULL AUTO_INCREMENT,
  `class_quiz_id` int NOT NULL,
  `student_id` int NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY (`student_class_quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 219, '3600', '1 out of 3');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(22, 'IS 221', 'Application Development', '', '', 3, '', '2nd'),
(23, 'IS 222', 'Network and Internet Technology', '', '', 3, '', '2nd'),
(24, 'IS 223', 'Business Process', '', '', 3, '', '2nd'),
(25, 'IS 224', 'Discrete Structures', '', '', 3, '', '2nd'),
(26, 'IS 227', 'IS Programming 2', '', '', 3, '', '2nd'),
(27, 'SS POL GOV', 'Politics and Governance with Philippine Constitution', '', '', 3, '', '2nd'),
(28, 'LIT 1', 'Philippine  Literature', '', '', 3, '', '2nd'),
(29, 'ACCTG 2', 'Fundamentals of Accounting 2', '', '', 3, '', '2nd'),
(30, 'PE 4', 'Team Sports', '', '', 3, '', '2nd'),
(31, 'IS 302', 'Survey of Programming Languages', '', '', 3, '', '2nd'),
(32, 'IS 303', 'Structured Query Language', '', '', 3, '', '2nd'),
(33, 'IS 321', 'Information System Planning', '', '', 3, '', '2nd'),
(34, 'IS 322', 'Management of Technology', '', '', 3, '', '2nd'),
(35, 'IS 323', 'E-commerce Strategy Architectural', '', '', 3, '', '2nd'),
(36, 'IS 324', 'System Analysis and Design', '', '', 3, '', '2nd'),
(37, 'Law 1', 'Law on Obligation and Contracts', '', '', 3, '', '2nd'),
(38, 'Philo 1', 'Social Philosophy & Logic', '', '', 3, '', '2nd'),
(39, 'MQTB', 'Quantitative Techniques in Business', '', '', 3, '', '2nd'),
(41, 'IS 411B', 'Senior Systems Project 2', '', '', 3, '', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(9, '1001', 'test', 'N.M', 'Nuhman', 5, 'uploads/Screenshot 2024-06-13 012414.jpg', '', 'Registered', 'Deactivated'),
(20, '1002', '123', 'mohamed', 'sajath', 5, 'uploads/user.jpg', '', 'Registered', ''),
(21, '1003', '1234', 'Ahamed', 'Ansaf', 5, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

DROP TABLE IF EXISTS `teacher_backpack`;
CREATE TABLE IF NOT EXISTS `teacher_backpack` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

DROP TABLE IF EXISTS `teacher_class`;
CREATE TABLE IF NOT EXISTS `teacher_class` (
  `teacher_class_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `class_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(187, 9, 22, 37, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(188, 20, 22, 37, 'admin/uploads/thumbnails.jpg', '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

DROP TABLE IF EXISTS `teacher_class_announcements`;
CREATE TABLE IF NOT EXISTS `teacher_class_announcements` (
  `teacher_class_announcements_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`teacher_class_announcements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

DROP TABLE IF EXISTS `teacher_class_student`;
CREATE TABLE IF NOT EXISTS `teacher_class_student` (
  `teacher_class_student_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `student_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`teacher_class_student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(31, 165, 141, 134),
(32, 165, 134, 134),
(54, 167, 113, 12),
(55, 167, 112, 12),
(57, 167, 108, 12),
(58, 167, 105, 12),
(59, 167, 106, 12),
(60, 167, 103, 12),
(61, 167, 104, 12),
(62, 167, 100, 12),
(63, 167, 101, 12),
(64, 167, 102, 12),
(65, 167, 97, 12),
(66, 167, 98, 12),
(67, 167, 95, 12),
(68, 167, 94, 12),
(69, 167, 76, 12),
(70, 167, 107, 12),
(71, 167, 110, 12),
(72, 167, 109, 12),
(73, 167, 99, 12),
(74, 167, 96, 12),
(75, 167, 75, 12),
(76, 167, 74, 12),
(77, 167, 73, 12),
(78, 167, 72, 12),
(79, 167, 71, 12),
(80, 168, 135, 12),
(81, 168, 140, 12),
(82, 168, 162, 12),
(83, 168, 164, 12),
(84, 168, 165, 12),
(85, 168, 166, 12),
(86, 168, 167, 12),
(87, 168, 168, 12),
(88, 168, 169, 12),
(89, 168, 172, 12),
(90, 168, 171, 12),
(91, 168, 173, 12),
(92, 168, 174, 12),
(93, 168, 175, 12),
(94, 168, 176, 12),
(95, 168, 177, 12),
(96, 168, 178, 12),
(97, 168, 179, 12),
(98, 168, 180, 12),
(99, 168, 181, 12),
(100, 168, 182, 12),
(101, 168, 183, 12),
(102, 168, 206, 12),
(103, 168, 207, 12),
(127, 172, 113, 18),
(128, 172, 112, 18),
(129, 172, 111, 18),
(130, 172, 108, 18),
(131, 172, 105, 18),
(132, 172, 106, 18),
(133, 172, 103, 18),
(134, 172, 104, 18),
(135, 172, 100, 18),
(136, 172, 101, 18),
(137, 172, 102, 18),
(138, 172, 97, 18),
(139, 172, 98, 18),
(140, 172, 95, 18),
(141, 172, 94, 18),
(142, 172, 76, 18),
(143, 172, 107, 18),
(144, 172, 110, 18),
(145, 172, 109, 18),
(146, 172, 99, 18),
(147, 172, 96, 18),
(148, 172, 75, 18),
(149, 172, 74, 18),
(150, 172, 73, 18),
(151, 172, 72, 18),
(152, 172, 71, 18),
(153, 173, 135, 18),
(154, 173, 140, 18),
(155, 173, 162, 18),
(156, 173, 164, 18),
(157, 173, 165, 18),
(158, 173, 166, 18),
(159, 173, 167, 18),
(160, 173, 168, 18),
(161, 173, 169, 18),
(162, 173, 172, 18),
(163, 173, 171, 18),
(164, 173, 173, 18),
(165, 173, 174, 18),
(166, 173, 175, 18),
(167, 173, 176, 18),
(168, 173, 177, 18),
(169, 173, 178, 18),
(170, 173, 179, 18),
(171, 173, 180, 18),
(172, 173, 181, 18),
(173, 173, 182, 18),
(174, 173, 183, 18),
(175, 173, 206, 18),
(176, 173, 207, 18),
(177, 174, 134, 13),
(178, 174, 142, 13),
(179, 174, 143, 13),
(180, 174, 144, 13),
(181, 174, 145, 13),
(182, 174, 146, 13),
(183, 174, 147, 13),
(184, 174, 148, 13),
(185, 174, 149, 13),
(186, 174, 150, 13),
(187, 174, 151, 13),
(188, 174, 152, 13),
(189, 174, 153, 13),
(190, 174, 154, 13),
(191, 174, 155, 13),
(192, 174, 156, 13),
(193, 174, 157, 13),
(194, 174, 158, 13),
(195, 174, 159, 13),
(196, 175, 113, 13),
(197, 175, 112, 13),
(198, 175, 111, 13),
(199, 175, 108, 13),
(200, 175, 105, 13),
(201, 175, 106, 13),
(202, 175, 103, 13),
(203, 175, 104, 13),
(204, 175, 100, 13),
(205, 175, 101, 13),
(206, 175, 102, 13),
(207, 175, 97, 13),
(208, 175, 98, 13),
(209, 175, 95, 13),
(210, 175, 94, 13),
(211, 175, 76, 13),
(212, 175, 107, 13),
(213, 175, 110, 13),
(214, 175, 109, 13),
(215, 175, 99, 13),
(216, 175, 96, 13),
(217, 175, 75, 13),
(218, 175, 74, 13),
(219, 175, 73, 13),
(220, 175, 72, 13),
(221, 175, 71, 13),
(222, 176, 135, 13),
(223, 176, 140, 13),
(224, 176, 162, 13),
(225, 176, 164, 13),
(226, 176, 165, 13),
(227, 176, 166, 13),
(228, 176, 167, 13),
(229, 176, 168, 13),
(230, 176, 169, 13),
(231, 176, 172, 13),
(232, 176, 171, 13),
(233, 176, 173, 13),
(234, 176, 174, 13),
(235, 176, 175, 13),
(236, 176, 176, 13),
(237, 176, 177, 13),
(238, 176, 178, 13),
(239, 176, 179, 13),
(240, 176, 180, 13),
(241, 176, 181, 13),
(242, 176, 182, 13),
(243, 176, 183, 13),
(244, 176, 206, 13),
(245, 176, 207, 13),
(246, 177, 134, 14),
(247, 177, 142, 14),
(248, 177, 143, 14),
(249, 177, 144, 14),
(250, 177, 145, 14),
(251, 177, 146, 14),
(252, 177, 147, 14),
(253, 177, 148, 14),
(254, 177, 149, 14),
(255, 177, 150, 14),
(256, 177, 151, 14),
(257, 177, 152, 14),
(258, 177, 153, 14),
(259, 177, 154, 14),
(260, 177, 155, 14),
(261, 177, 156, 14),
(262, 177, 157, 14),
(263, 177, 158, 14),
(264, 177, 159, 14),
(265, 178, 113, 14),
(266, 178, 112, 14),
(267, 178, 111, 14),
(268, 178, 108, 14),
(269, 178, 105, 14),
(270, 178, 106, 14),
(271, 178, 103, 14),
(272, 178, 104, 14),
(273, 178, 100, 14),
(274, 178, 101, 14),
(275, 178, 102, 14),
(276, 178, 97, 14),
(277, 178, 98, 14),
(278, 178, 95, 14),
(279, 178, 94, 14),
(280, 178, 76, 14),
(281, 178, 107, 14),
(282, 178, 110, 14),
(283, 178, 109, 14),
(284, 178, 99, 14),
(285, 178, 96, 14),
(286, 178, 75, 14),
(287, 178, 74, 14),
(288, 178, 73, 14),
(289, 178, 72, 14),
(290, 178, 71, 14),
(291, 179, 135, 14),
(292, 179, 140, 14),
(293, 179, 162, 14),
(294, 179, 164, 14),
(295, 179, 165, 14),
(296, 179, 166, 14),
(297, 179, 167, 14),
(298, 179, 168, 14),
(299, 179, 169, 14),
(300, 179, 172, 14),
(301, 179, 171, 14),
(302, 179, 173, 14),
(303, 179, 174, 14),
(304, 179, 175, 14),
(305, 179, 176, 14),
(306, 179, 177, 14),
(307, 179, 178, 14),
(308, 179, 179, 14),
(309, 179, 180, 14),
(310, 179, 181, 14),
(311, 179, 182, 14),
(312, 179, 183, 14),
(313, 179, 206, 14),
(314, 179, 207, 14),
(315, 180, 113, 19),
(316, 180, 112, 19),
(317, 180, 111, 19),
(318, 180, 108, 19),
(319, 180, 105, 19),
(320, 180, 106, 19),
(321, 180, 103, 19),
(322, 180, 104, 19),
(323, 180, 100, 19),
(324, 180, 101, 19),
(325, 180, 102, 19),
(326, 180, 97, 19),
(327, 180, 98, 19),
(328, 180, 95, 19),
(329, 180, 94, 19),
(330, 180, 76, 19),
(331, 180, 107, 19),
(332, 180, 110, 19),
(333, 180, 109, 19),
(334, 180, 99, 19),
(335, 180, 96, 19),
(336, 180, 75, 19),
(337, 180, 74, 19),
(338, 180, 73, 19),
(339, 180, 72, 19),
(340, 180, 71, 19),
(341, 181, 209, 12),
(342, 181, 210, 12),
(345, 183, 213, 12),
(346, 183, 214, 12),
(347, 183, 215, 12),
(348, 183, 216, 12),
(349, 184, 184, 12),
(350, 184, 185, 12),
(351, 184, 186, 12),
(352, 184, 187, 12),
(353, 184, 188, 12),
(354, 184, 189, 12),
(355, 184, 190, 12),
(356, 184, 191, 12),
(358, 184, 193, 12),
(359, 184, 194, 12),
(360, 184, 195, 12),
(361, 184, 196, 12),
(362, 184, 197, 12),
(363, 184, 198, 12),
(364, 184, 199, 12),
(365, 184, 200, 12),
(366, 184, 201, 12),
(367, 184, 202, 12),
(368, 184, 203, 12),
(369, 184, 204, 12),
(370, 184, 205, 12),
(371, 184, 217, 12),
(372, 184, 192, 12),
(373, 185, 93, 12),
(374, 185, 136, 12),
(375, 185, 138, 12),
(376, 185, 139, 12),
(377, 185, 211, 12),
(378, 186, 213, 9),
(379, 186, 214, 9),
(380, 186, 215, 9),
(381, 186, 216, 9),
(382, 186, 219, 9),
(383, 187, 76, 9),
(384, 187, 220, 9),
(385, 188, 76, 20),
(386, 188, 220, 20);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

DROP TABLE IF EXISTS `teacher_notification`;
CREATE TABLE IF NOT EXISTS `teacher_notification` (
  `teacher_notification_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int NOT NULL,
  `assignment_id` int NOT NULL,
  PRIMARY KEY (`teacher_notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(19, 187, 'Submit Assignment file name <b>wedding card</b>', '2024-06-13 00:52:04', 'view_submit_assignment.php', 76, 32);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

DROP TABLE IF EXISTS `teacher_shared`;
CREATE TABLE IF NOT EXISTS `teacher_shared` (
  `teacher_shared_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `shared_teacher_id` int NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_shared_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(86, 'admin', '2024-06-11 21:57:57', '2024-06-18 10:27:56', 15),
(87, 'admin', '2024-06-12 11:01:40', '2024-06-18 10:27:56', 15),
(88, 'admin', '2024-06-12 12:20:12', '2024-06-18 10:27:56', 15),
(89, 'admin', '2024-06-12 13:04:17', '2024-06-18 10:27:56', 15),
(90, 'admin', '2024-06-13 00:22:09', '2024-06-18 10:27:56', 15),
(91, 'admin', '2024-06-13 00:50:43', '2024-06-18 10:27:56', 15),
(92, 'admin', '2024-06-13 00:55:42', '2024-06-18 10:27:56', 15),
(93, 'admin', '2024-06-13 01:00:58', '2024-06-18 10:27:56', 15),
(94, 'admin', '2024-06-13 01:38:45', '2024-06-18 10:27:56', 15),
(95, 'admin', '2024-06-13 01:43:19', '2024-06-18 10:27:56', 15),
(96, 'admin', '2024-06-13 01:47:02', '2024-06-18 10:27:56', 15),
(97, 'admin', '2024-06-13 01:51:20', '2024-06-18 10:27:56', 15),
(98, 'admin', '2024-06-15 00:43:11', '2024-06-18 10:27:56', 15),
(99, 'admin', '2024-06-15 09:31:47', '2024-06-18 10:27:56', 15),
(100, 'admin', '2024-06-16 11:11:02', '2024-06-18 10:27:56', 15),
(101, 'admin', '2024-06-16 11:22:37', '2024-06-18 10:27:56', 15),
(102, 'admin', '2024-06-16 12:34:31', '2024-06-18 10:27:56', 15),
(103, 'admin', '2024-06-16 12:47:21', '2024-06-18 10:27:56', 15),
(104, 'admin', '2024-06-18 10:27:24', '2024-06-18 10:27:56', 15),
(105, 'admin', '2024-06-19 19:31:30', '', 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
