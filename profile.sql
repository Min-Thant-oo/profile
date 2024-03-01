-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 05:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `creator` varchar(150) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `display_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `slug`, `date`, `creator`, `title`, `subtitle`, `banner`, `thumbnail`, `content`, `display_order`) VALUES
(1, 'solar_ecom', '2023-12-17', 'Min Thant Oo', 'Solar Ecommerce Project', '', '', '/assets/images/preview/ecom_preview.png', '<div class=\"btom-cont1 pt-4\">\n    <h2 class=\"py-3\">Project\'s Info</h2>\n    <p class=\"p-l-3\">\n    <ul class=\"px-4\">\n        <li><span class=\"project-detail-span\">Name</span> : Solar Ecommerce Project</li>\n        <li><span class=\"project-detail-span\">Team Members</span> : Min Thant Oo</li>\n        <li><span class=\"project-detail-span\">Duration</span> : around 3 Months</li>\n        <li><span class=\"project-detail-span\">Programming Languages & Frameworks</span> : HTML, CSS, Tailwind, JavaScript, Next.js, Laravel, MySQL, Nginx Deployment</li>\n        <li><span class=\"project-detail-span\">Platforms</span> : Web</li>\n        <li><span class=\"project-detail-span\">Links</span> :\n            <a target=\"_blank\"\n               href=\"https://github.com/Min-Thant-oo/ecom-frontend\">GitHub(frontend)\n</a>,\n<a target=\"_blank\"\n               href=\"https://github.com/Min-Thant-oo/ecom-backend\">GitHub(backend)\n</a>,\n            <a target=\"_blank\" href=\"https://www.solarecom.minthantoo.com\">Live</a>\n        </li>\n    </ul>\n    </p>\n    <h2 class=\"py-3\">Abstract</h2>\n    <p class=\"text-justify\">\n        In this project, users can come and sign up for their account, add the products to the favourite cart or shopping cart and make the purchase via Stripe. Users can view their order details in the Order tab. Users can also view and download the receipt of each purchase. In the case where users forget their password, an email will be sent to their email address and user will be able to reset the password by clicking on the link provided in the email. Users are able to update their personal information(name, email, profile picture, password) in the Account & Settings tab as well. If the users have any questions, they can send an email to the admins via Contact Us form. Once a purchase is made, an email with purchased order details is sent to the user email and a message with order details is sent to the admin only telegram channel group. Admins can join admin only telegram channel <a href=\"https://t.me/+-Y6VOgp-kHEyNTU1\" target=\"_blank\">here</a>. <br /><br /> \n        demo user email - minthantoo.ardil@gmail.com <br /> \n        password - password\n    </p>\n\n    <h2 class=\"py-3\">Please Click Image for More Information About Page</h2>\n    <div class=\"row justify-content-center\">\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/ecom/fyp_1.JPG\" data-lightbox=\"fyp\"\n               data-title=\"This is registration page.\">\n                <img src=\"/assets/images/ecom/fyp_1.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/ecom/fyp_2.JPG\" data-lightbox=\"fyp\" data-title=\"This is sign-in page.\">\n                <img src=\"/assets/images/ecom/fyp_2.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/ecom/fyp_3.JPG\" data-lightbox=\"fyp\" data-title=\"home page\">\n                <img src=\"/assets/images/ecom/fyp_3.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/ecom/fyp_4.JPG\" data-lightbox=\"fyp\" data-title=\"You can see your favourite list here.\">\n                <img src=\"/assets/images/ecom/fyp_4.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/ecom/fyp_5.JPG\" data-lightbox=\"fyp\" data-title=\"You can update your personal information here.\">\n                <img src=\"/assets/images/ecom/fyp_5.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/ecom/fyp_6.JPG\" data-lightbox=\"fyp\"\n               data-title=\"This is the checkout page.\">\n                <img src=\"/assets/images/ecom/fyp_6.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/ecom/fyp_7.JPG\" data-lightbox=\"fyp\" data-title=\"You can pay for the products via Stripe.\">\n                <img src=\"/assets/images/ecom/fyp_7.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/ecom/fyp_8.JPG\" data-lightbox=\"fyp\"\n               data-title=\"You can view your order list in order tab.\">\n                <img src=\"/assets/images/ecom/fyp_8.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n    </div>\n</div>', 1),
(3, 'stand_blog', '2024-01-01', 'Min Thant Oo', 'Stand Blog', '', '', '/assets/images/preview/stand_blog_preview.png', '<div class=\"btom-cont1 pt-4\">\n    <h2 class=\"py-3\">Project\'s Info</h2>\n    <p class=\"p-l-3\">\n    <ul class=\"px-4\">\n        <li><span class=\"project-detail-span\">Name</span> : Stand Blog</li>\n        <li><span class=\"project-detail-span\">Team Members</span> : Min Thant Oo</li>\n        <li><span class=\"project-detail-span\">Duration</span> : 2-3 days</li>\n        <li><span class=\"project-detail-span\">Programming Languages & Frameworks</span> : HTML, CSS, Bootstrap, JavaScript, Laravel, PHP, MySQL, Nginx Deployment</li>\n        <li><span class=\"project-detail-span\">Platforms</span> : Web</li>\n        <li><span class=\"project-detail-span\">Links</span> :\n            <a target=\"_blank\"\n               href=\"https://github.com/Min-Thant-oo/Stand_Blog\">GitHub\n</a>,\n            <a target=\"_blank\" href=\"https://standblog.minthantoo.com/\">Live</a>\n        </li>\n    </ul>\n    </p>\n    <h2 class=\"py-3\">Abstract</h2>\n    <p class=\"text-justify\">\n        In this blog website, users can come and check out the blogs posted by the admin. User can search using multi filters. Users can comment their thoughts on the blog as well. Users are able to sent the message to the admins should they have any inquiry about the website. <br /> <br />\n        demo use email - minthantoo.ardil@gmail.com <br />\n        password - password \n    </p>\n\n    <h2 class=\"py-3\">Please Click Image for More Information About Page</h2>\n    <div class=\"row justify-content-center\">\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/standblog/fyp_1.JPG\" data-lightbox=\"fyp\"\n               data-title=\"This is the home page where carousel of the blogs is shown.\">\n                <img src=\"/assets/images/standblog/fyp_1.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/standblog/fyp_2.JPG\" data-lightbox=\"fyp\" data-title=\"home page 2 and as shown in the picture, user can search for blogs using filters\">\n                <img src=\"/assets/images/standblog/fyp_2.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/standblog/fyp_3.JPG\" data-lightbox=\"fyp\" data-title=\"home page 3 and as shown in the picture, user can search for blogs using filters\">\n                <img src=\"/assets/images/standblog/fyp_3.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/standblog/fyp_4.JPG\" data-lightbox=\"fyp\" data-title=\"Pagination\">\n                <img src=\"/assets/images/standblog/fyp_4.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/standblog/fyp_5.JPG\" data-lightbox=\"fyp\" data-title=\"Comment Form\">\n                <img src=\"/assets/images/standblog/fyp_5.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/standblog/fyp_6.JPG\" data-lightbox=\"Contact form\"\n               data-title=\"This is the checkout page.\">\n                <img src=\"/assets/images/standblog/fyp_6.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        \n    </div>\n</div>', 3),
(2, 'admin_solar_ecom', '2024-01-01', 'Min Thant Oo', 'Admin Dashboard (Solar Ecom)', '', '', '/assets/images/preview/admin_ecom_preview.png', '<div class=\"btom-cont1 pt-4\">\n    <h2 class=\"py-3\">Project\'s Info</h2>\n    <p class=\"p-l-3\">\n    <ul class=\"px-4\">\n        <li><span class=\"project-detail-span\">Name</span> : Admin Dashboard - Solar Ecom</li>\n        <li><span class=\"project-detail-span\">Team Members</span> : Min Thant Oo</li>\n        <li><span class=\"project-detail-span\">Duration</span> : 2-3 days</li>\n        <li><span class=\"project-detail-span\">Programming Languages & Frameworks</span> : HTML, CSS, Bootstrap, JavaScript, Laravel, PHP, MySQL, Nginx Deployment</li>\n        <li><span class=\"project-detail-span\">Platforms</span> : Web</li>\n        <li><span class=\"project-detail-span\">Links</span> :\n            <a target=\"_blank\"\n               href=\"https://github.com/Min-Thant-oo/ecom-admin\">GitHub\n</a>,\n            <a target=\"_blank\" href=\"https://www.adminsolarecom.minthantoo.com/admin/login\">Live</a>\n        </li>\n    </ul>\n    </p>\n    <h2 class=\"py-3\">Abstract</h2>\n    <p class=\"text-justify\">\n        In this admin dashboard, admin can view the total amount of purchase made by the users, total number of users, total number of products and total number of orders. Admin can also create, update and delete the categories too. Admin can create, update and delete the products in product tab. Admin can view each user total spending amount in user tab. Admin can view the contact messages sent by the users. Admins can also update the admin info. <br /> \n        \n        \n        <br />\n        demo use email - minthantoo.ardil@gmail.com <br />\n        password - password \n    </p>\n\n    <h2 class=\"py-3\">Please Click Image for More Information About Page</h2>\n    <div class=\"row justify-content-center\">\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_1.JPG\" data-lightbox=\"fyp\"\n               data-title=\"This is the home page where admin view the overview of the site including the bar chart of most spending user and pie chart of the categories.\">\n                <img src=\"/assets/images/adminsolarecom/fyp_1.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_2.JPG\" data-lightbox=\"fyp\" data-title=\"Product lists\">\n                <img src=\"/assets/images/adminsolarecom/fyp_2.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_3.JPG\" data-lightbox=\"fyp\" data-title=\"Viewing specific product by clicking on the image\">\n                <img src=\"/assets/images/adminsolarecom/fyp_3.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_4.JPG\" data-lightbox=\"fyp\" data-title=\"Product create page\">\n                <img src=\"/assets/images/adminsolarecom/fyp_4.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_5.JPG\" data-lightbox=\"fyp\" data-title=\"Product edit page\">\n                <img src=\"/assets/images/adminsolarecom/fyp_5.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_6.JPG\" data-lightbox=\"fyp\"\n               data-title=\"Category list\">\n                <img src=\"/assets/images/adminsolarecom/fyp_6.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_7.JPG\" data-lightbox=\"fyp\"\n               data-title=\"Category create page\">\n                <img src=\"/assets/images/adminsolarecom/fyp_7.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_8.JPG\" data-lightbox=\"fyp\"\n               data-title=\"Purchased order list\">\n                <img src=\"/assets/images/adminsolarecom/fyp_8.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_9.JPG\" data-lightbox=\"fyp\"\n               data-title=\"Contact message list\">\n                <img src=\"/assets/images/adminsolarecom/fyp_9.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminsolarecom/fyp_10.JPG\" data-lightbox=\"fyp\"\n               data-title=\"Admin info page\">\n                <img src=\"/assets/images/adminsolarecom/fyp_10.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        \n    </div>\n</div>', 2),
(4, 'admin_stand_blog', '2024-01-01', 'Min Thant Oo', 'Admin Dashboard (Stand Blog)', '', '', '/assets/images/preview/admin_stand_blog_preview.png', '<div class=\"btom-cont1 pt-4\">\n    <h2 class=\"py-3\">Project\'s Info</h2>\n    <p class=\"p-l-3\">\n    <ul class=\"px-4\">\n        <li><span class=\"project-detail-span\">Name</span> : Admin Dashboard - Stand Blog</li>\n        <li><span class=\"project-detail-span\">Team Members</span> : Min Thant Oo</li>\n        <li><span class=\"project-detail-span\">Duration</span> : 2-3 days</li>\n        <li><span class=\"project-detail-span\">Programming Languages & Frameworks</span> : HTML, CSS, Bootstrap, JavaScript, Laravel, PHP, MySQL, Nginx Deployment</li>\n        <li><span class=\"project-detail-span\">Platforms</span> : Web</li>\n        <li><span class=\"project-detail-span\">Links</span> :\n            <a target=\"_blank\"\n               href=\"https://github.com/Min-Thant-oo/Stand_Blog\">GitHub\n</a>,\n            <a target=\"_blank\" href=\"https://standblog.minthantoo.com/login\">Live</a>\n        </li>\n    </ul>\n    </p>\n    <h2 class=\"py-3\">Abstract</h2>\n    <p class=\"text-justify\">\n        In this admin dashboard, admin can view the total number of blogs, total numbers of comments, total number of tags and total numbers of comments. Admin can create, update and delete the blog in blogs tab. Admin can also view or delete the comments posted by the users on each blogs. Admin can create, update and delete the category and tags too. Admin can view the contact messages sent by the users. Admins can also update the site config as well. <br /> \n        \n        \n        <br />\n        demo use email - minthantoo.ardil@gmail.com <br />\n        password - password \n    </p>\n\n    <h2 class=\"py-3\">Please Click Image for More Information About Page</h2>\n    <div class=\"row justify-content-center\">\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminstandblog/fyp_1.JPG\" data-lightbox=\"fyp\"\n               data-title=\"This is the home page where admin view the overview of the site.\">\n                <img src=\"/assets/images/adminstandblog/fyp_1.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminstandblog/fyp_2.JPG\" data-lightbox=\"fyp\" data-title=\"Blog lists\">\n                <img src=\"/assets/images/adminstandblog/fyp_2.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminstandblog/fyp_3.JPG\" data-lightbox=\"fyp\" data-title=\"Blog create page\">\n                <img src=\"/assets/images/adminstandblog/fyp_3.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminstandblog/fyp_4.JPG\" data-lightbox=\"fyp\" data-title=\"Comment lists\">\n                <img src=\"/assets/images/adminstandblog/fyp_4.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminstandblog/fyp_5.JPG\" data-lightbox=\"fyp\" data-title=\"Category lists\">\n                <img src=\"/assets/images/adminstandblog/fyp_5.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminstandblog/fyp_6.JPG\" data-lightbox=\"Category create page\"\n               data-title=\"This is the checkout page.\">\n                <img src=\"/assets/images/adminstandblog/fyp_6.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminstandblog/fyp_7.JPG\" data-lightbox=\"Contact message lists\"\n               data-title=\"This is the checkout page.\">\n                <img src=\"/assets/images/adminstandblog/fyp_7.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminstandblog/fyp_8.JPG\" data-lightbox=\"Viewing specific contact message\"\n               data-title=\"This is the checkout page.\">\n                <img src=\"/assets/images/adminstandblog/fyp_8.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/adminstandblog/fyp_9.JPG\" data-lightbox=\"Admin can also update site config.\"\n               data-title=\"This is the checkout page.\">\n                <img src=\"/assets/images/adminstandblog/fyp_9.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        \n    </div>\n</div>', 4),
(5, 'mtube', '2023-10-01', 'Min Thant Oo', 'Video Searching Platform', '', '', '/assets/images/preview/m_tube_preview.png', '<div class=\"btom-cont1 pt-4\">\n    <h2 class=\"py-3\">Project\'s Info</h2>\n    <p class=\"p-l-3\">\n    <ul class=\"px-4\">\n        <li><span class=\"project-detail-span\">Name</span> : Video Searching Platform (m-tube)</li>\n        <li><span class=\"project-detail-span\">Team Members</span> : Min Thant Oo</li>\n        <li><span class=\"project-detail-span\">Duration</span> : 2-3 days</li>\n        <li><span class=\"project-detail-span\">Programming Languages & Frameworks</span> : HTML, CSS, Material UI, JavaScript, Netlify </li>\n        <li><span class=\"project-detail-span\">Platforms</span> : Web</li>\n        <li><span class=\"project-detail-span\">Links</span> :\n            <a target=\"_blank\"\n               href=\"https://github.com/Min-Thant-oo/m-tube\">GitHub\n</a>,\n            <a target=\"_blank\" href=\"https://mtube.minthantoo.com/\">Live</a>\n        </li>\n    </ul>\n    </p>\n    <h2 class=\"py-3\">Abstract</h2>\n    <p class=\"text-justify\">\n        In this project, user can search for a video and watch it. Since I am using the free api version, there is a limit number of video that people can watch online.\n    </p>\n\n    <h2 class=\"py-3\">Please Click Image for More Information About Page</h2>\n    <div class=\"row justify-content-center\">\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/mtube/fyp_1.JPG\" data-lightbox=\"fyp\"\n               data-title=\"This is the home page that the user see when they click on the link.\">\n                <img src=\"/assets/images/mtube/fyp_1.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/mtube/fyp_2.JPG\" data-lightbox=\"fyp\" data-title=\"User can search for the videos as well.\">\n                <img src=\"/assets/images/mtube/fyp_2.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        <div class=\"col-xl-2 col-lg-2 col-md-4 col-sm-6 py-1\">\n            <a href=\"/assets/images/mtube/fyp_3.JPG\" data-lightbox=\"fyp\" data-title=\"User can view the video.\">\n                <img src=\"/assets/images/mtube/fyp_3.JPG\" class=\"img-responsive img-fluid\"\n                     alt=\"\">\n            </a>\n        </div>\n        \n        \n    </div>\n</div>', 5);

-- --------------------------------------------------------

--
-- Table structure for table `project_tag`
--

CREATE TABLE `project_tag` (
  `id` int(11) NOT NULL,
  `project` int(11) NOT NULL,
  `tag` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `project_tag`
--

INSERT INTO `project_tag` (`id`, `project`, `tag`) VALUES
(3, 1, 13),
(1, 1, 12),
(2, 1, 1),
(6, 1, 3),
(9, 1, 4),
(7, 1, 5),
(8, 1, 2),
(10, 2, 1),
(11, 2, 2),
(12, 2, 5),
(14, 2, 7),
(20, 2, 12),
(15, 2, 13),
(48, 5, 16),
(47, 5, 4),
(46, 4, 13),
(45, 4, 12),
(44, 4, 7),
(43, 4, 5),
(42, 4, 2),
(41, 4, 1),
(40, 3, 13),
(39, 3, 12),
(38, 3, 7),
(37, 3, 5),
(34, 3, 1),
(33, 3, 2),
(49, 5, 17),
(50, 5, 12),
(51, 5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `web_title` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `sub_title` text NOT NULL,
  `profile_image` text NOT NULL,
  `skill_intro` text NOT NULL,
  `hire_content` text NOT NULL,
  `github` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `dribble` varchar(100) NOT NULL,
  `behance` varchar(100) NOT NULL,
  `copyright` text NOT NULL,
  `address` text NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `resume` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `web_title`, `title`, `sub_title`, `profile_image`, `skill_intro`, `hire_content`, `github`, `facebook`, `instagram`, `linkedin`, `dribble`, `behance`, `copyright`, `address`, `phone_no`, `contact_email`, `resume`) VALUES
(1, 'Min Thant Oo', 'Min Thant Oo ', '<h3 class=\"banner-text mt-5\">Hello, I’m Min Thant Oo</h3>', '<p class=\"my-4 mb-5\">Full-Stack Developer\n\n</p><br>', '/assets/images/3.jpg', 'I\'m a Full Stack Web Developer originally from Myanmar, based in Turkey. Specializing in both backend development and frontend design, I create dynamic and user-friendly web applications. Committed to staying updated with the latest tech trends, I strive to deliver tailored, high-quality solutions for my clients.', 'Available for clients ranging from individuals and\r\n                    small-businesses all the way to large enterprise corporations.', 'https://github.com/Min-Thant-oo', 'https://www.facebook.com/MinLwink/', 'https://www.instagram.com/min.lwin.kyaw/', 'https://www.linkedin.com/in/min-thant-oo-701198213/', 'https://dribbble.com/minlwin', 'https://www.behance.net/minlwinkyadc1f', '<p class=\"copy-footer-29\">© 2020 My Website. All rights reserved </p>', 'Istanbul, Turkey', '+905524716379', 'minthantoo.ardil@gmail.com', 'http://minthantoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `percentage` int(11) NOT NULL,
  `skill_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `name`, `percentage`, `skill_order`, `status`) VALUES
(4, 'JavaScript', 85, 4, 1),
(6, 'PHP', 85, 60, 1),
(10, 'SQL', 70, 100, 1),
(12, 'HTML, CSS', 85, 120, 1),
(17, 'React.js', 85, 18, 1),
(19, 'Laravel', 85, 19, 1),
(20, 'JQuery, Bootstrap, TailWindCSS', 75, 21, 1),
(22, 'Git', 75, 22, 1),
(401, 'Next.js', 65, 2, 1),
(24, 'Interpersonal Skills', 75, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `slug`, `title`, `status`) VALUES
(1, 'laravel', 'Laravel', 1),
(2, 'php', 'PHP', 1),
(3, 'tailwind', 'Tailwind', 1),
(4, 'nextjs', 'Nextjs', 1),
(5, 'nginx_deployment', 'Nginx Deployment', 0),
(7, 'mysql', 'MySQL', 0),
(17, 'Material-UI', 'Material UI', 1),
(12, 'javascript', 'JavaScript', 0),
(13, 'html_css', 'HTML, CSS', 1),
(16, 'reactjs', 'Reactjs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(75) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `api_token` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `status`, `created_at`, `api_token`) VALUES
(3, 'Min Lwin Kyaw', 'minlwinkyaw307@gmail.com', '$2y$10$njh/sTiPF55kgQ3RZHmhNOwo5YDzDMwfqwAkIUdN3RCeJrFdiDNci', 'ADMIN', 'Active', '2020-05-04 05:29:48', '9379f4ed4af3ea6e614be7aac5a73198e69c0567d627f18f66308fc1f917631b'),
(4, 'test', 'test1@gmail.com', '$2y$10$pIJLZU/nJ2KebnGHAW3Wn.jEl1yYJMqqC3xJSnoWQKLT0ppqRksby', 'USER', 'Active', '2020-05-04 05:53:22', '80527f2e51af9542a4ad3953520cae29d701d526de52d8f37ff83979264988bc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_tag`
--
ALTER TABLE `project_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_tag_constraint` (`project`,`tag`),
  ADD KEY `project` (`project`),
  ADD KEY `tag` (`tag`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `project_tag`
--
ALTER TABLE `project_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
