CREATE TABLE `virtual_domains` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `virtual_users` (
  `id` int(11) NOT NULL auto_increment,
  `domain_id` int(11) NOT NULL,
  `password` varchar(106) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `virtual_aliases` (
  `id` int(11) NOT NULL auto_increment,
  `domain_id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO mailserver.virtual_domains (name) VALUES ('l2-7.ephec-ti.be');

INSERT INTO mailserver.virtual_users (domain_id, password , email) VALUES ('1', 'user1234', 'directeur@l2-7.ephec-ti.be'), ('1', 'user1234', 'secretariat@l2-7.ephec-ti.be'), ('1', 'user1234', 'robin@l2-7.ephec-ti.be');
INSERT INTO mailserver.virtual_users (domain_id, password , email) VALUES ('1', '$6$lNVvne360YGWBs6q$q8MtM90jqrM31l9AntyQ.mGU2y6.oLQcA.TXY1Nncf/MsS7YQcRa7AJuowsVF4UyV00znjySKaO6uyh0WFtWP', 'atelier@l2-7.ephec-ti.be');

INSERT INTO mailserver.virtual_aliases (domain_id, source, destination) VALUES ('1', 'robin@l2-7.ephec-ti.be', 'robin@l2-7.ephec-ti.be');
