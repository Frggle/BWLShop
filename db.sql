-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Erstellungszeit: 16. Mai 2015 um 14:57
-- Server-Version: 5.5.42
-- PHP-Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Datenbank: `WebShop_development`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` float DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `price`, `deleted_at`, `created_at`, `updated_at`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`) VALUES
(10, 'Serious Rockaway 26"', 'Das smarte Rockaway ist ein Freizeitbike, das überall zu Hause ist - von Alltagsstrecken in der Stadt bis auf Ausflugstouren übers Land. Ob auf Feld- und Waldwegen, auf Schotterstraßen oder asphaltierten Radwegen, das Rockaway bringt seinen Fahrer zuverlässig und flott ans Ziel. Auf kleinen Anstiegen findet sich mit der zuverlässigen Shimano Altus 21 Gang Schaltung schnell die passende Übersetzung. In Kombination mit Shimano Umwerfer und Shimano Zahnkranz sorgt dieser Antrieb für nachhaltigen Fahrspaß.', 279.95, NULL, '2015-05-16 08:41:00', NULL, 'Serious_Rockaway_26_01.jpg', 'jpg', NULL, NULL),
(11, 'Ortler van Dyck Black', 'Nostalgie pur - zeitlos schönes Design und solides Handwerk ergeben ein Hollandrad, wie es klassischer nicht sein könnte. Gefertigt in traditioneller Muffenbauweise aus belastbarem Stahl und ausgestattet mit dem Blick für das Wesentliche. Reduziert, aber höchst funktional und langlebig - ein echtes Ortler Qualitätsrad.', 299, NULL, '2015-05-16 08:43:00', NULL, 'Ortler_Van_Dyck_black_01.jpg', 'jpg', NULL, NULL),
(12, 'Ortler Monet Herren', 'In der Stadt und über Land sitzen Sie souverän im Sattel mit dem Ortler Monet. Mal eben ein paar Einkäufe erledigen oder ins nächste Cafe ohne die lästige Suche nach einem Parkplatz? Mit dem hochwertigen 7-Gang Monet Cityrad können alltägliche Kurzstrecken in der Stadt schnell und ökologisch vertretbar bewältigt werden.', 449.99, NULL, '2015-05-16 08:47:00', NULL, 'Ortler_Monet_Herren_01.jpg', 'jpg', NULL, NULL),
(13, 'Kreisler Raise RT5 LTD Damen 24"', 'Schicks Damenfahrrad', 499.99, NULL, '2015-05-16 08:50:00', NULL, 'Kreidler_Raise_RT5_LTD_Damen_24G_Deore_schwarz_glanz_01.jpg', 'jpg', NULL, NULL),
(14, 'Dartmoor Two6Player Rahmen', 'Material: Aluminium\r\nTyp: Hardtail', 209.95, NULL, '2015-05-16 10:36:00', NULL, 'T6P_grey_rahmen.jpg', 'jpg', NULL, NULL),
(15, 'VOTEC VE160 Rahmen', 'Das VE160 ist unsere Antwort auf jede Endurobike-Herausforderung: Lang, tief, mit flachem Lenkwinkel und steilem Sitzwinkel. Dank 160mm vollaktivem Federweg Heck jagt es sicher über Steinfelder und Wurzelteppiche - kompromisslos auf der Abfahrt und dynamisch-druckvoll im Gegenanstieg. Der VOTEC-eigene Viergelenk-Hinterbau  mit Horst Link entkoppelt wirkungsvoll Bremseinflüsse von der Federung für noch mehr Traktion genau dann, wenn sie dringend gebraucht wird.', 249, NULL, '2015-05-16 10:38:00', NULL, 'VOTEC_VE160_Rahmen.jpg', 'jpg', NULL, NULL),
(16, 'Mavic Crossone VR 650b Reifen', 'Viele Jahre Erfahrung in der Laufrad-Entwicklung lassen sich auch in ein preisgünstiges Laufrad packen. Sämtliche Komponenten sind auf perfektes Zusammenspiel ausgelegt - für maximale Langlebigkeit und das Fahrgefühl eines echten Systemlaufrades. Einfach, zuverlässig, Crossone.', 87.7, NULL, '2015-05-16 10:41:00', NULL, 'mavic_crossone_reifen.jpg', 'jpg', NULL, NULL),
(17, 'Mavic V-Rad 26x1.75 Deore', 'Material: Aluminium\r\nBauart: Hohlkammer', 65.95, NULL, '2015-05-16 10:44:00', NULL, 'Deore_LX.jpg', 'jpg', NULL, NULL),
(18, 'Cube GTS Sattel', 'Silikonkissen mit unterschiedlicher Stärke.', 39.95, NULL, '2015-05-16 10:57:00', NULL, 'cube_gts_sattel.jpg', 'jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `article_structures`
--

CREATE TABLE `article_structures` (
  `amount` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `upper_part_id` int(11) NOT NULL DEFAULT '0',
  `lower_part_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `article_structures`
--

INSERT INTO `article_structures` (`amount`, `deleted_at`, `upper_part_id`, `lower_part_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 10, 14, '2015-05-16 11:29:00', NULL),
(2, NULL, 10, 16, '2015-05-16 11:28:00', NULL),
(1, NULL, 11, 15, '2015-05-16 11:27:00', NULL),
(2, NULL, 11, 16, '2015-05-16 11:26:00', NULL),
(1, NULL, 12, 15, '2015-05-16 11:25:00', NULL),
(2, NULL, 12, 16, '2015-05-16 11:24:00', NULL),
(1, NULL, 13, 14, '2015-05-16 11:23:00', NULL),
(2, NULL, 13, 16, '2015-05-16 11:22:00', NULL),
(1, NULL, 14, 18, '2015-05-16 11:30:00', NULL),
(1, NULL, 15, 18, '2015-05-16 11:31:00', NULL),
(1, NULL, 16, 17, '2015-05-16 11:32:00', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `article_to_tags`
--

CREATE TABLE `article_to_tags` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bill_entries`
--

CREATE TABLE `bill_entries` (
  `amount` int(11) DEFAULT NULL,
  `bill_id` int(11) NOT NULL DEFAULT '0',
  `article_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shopping_cart_entries`
--

CREATE TABLE `shopping_cart_entries` (
  `amount` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `article_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `article_structures`
--
ALTER TABLE `article_structures`
  ADD PRIMARY KEY (`upper_part_id`,`lower_part_id`),
  ADD KEY `fk_article_structures_articles1_idx` (`lower_part_id`);

--
-- Indizes für die Tabelle `article_to_tags`
--
ALTER TABLE `article_to_tags`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `fk_article_to_tags_articles_idx` (`article_id`),
  ADD KEY `fk_article_to_tags_tags1_idx` (`tag_id`);

--
-- Indizes für die Tabelle `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bills_users1_idx` (`user_id`);

--
-- Indizes für die Tabelle `bill_entries`
--
ALTER TABLE `bill_entries`
  ADD PRIMARY KEY (`bill_id`,`article_id`),
  ADD KEY `fk_bill_entries_articles1_idx` (`article_id`);

--
-- Indizes für die Tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `shopping_cart_entries`
--
ALTER TABLE `shopping_cart_entries`
  ADD PRIMARY KEY (`user_id`,`article_id`),
  ADD KEY `fk_shopping_cart_entries_articles1_idx` (`article_id`);

--
-- Indizes für die Tabelle `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT für Tabelle `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `article_structures`
--
ALTER TABLE `article_structures`
  ADD CONSTRAINT `fk_article_structures_articles1` FOREIGN KEY (`lower_part_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_article_structures_articles2` FOREIGN KEY (`upper_part_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `article_to_tags`
--
ALTER TABLE `article_to_tags`
  ADD CONSTRAINT `fk_article_to_tags_articles` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_article_to_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `fk_bills_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `bill_entries`
--
ALTER TABLE `bill_entries`
  ADD CONSTRAINT `fk_bill_entries_bills1` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bill_entries_articles1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `shopping_cart_entries`
--
ALTER TABLE `shopping_cart_entries`
  ADD CONSTRAINT `fk_shopping_cart_entries_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_shopping_cart_entries_articles1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
