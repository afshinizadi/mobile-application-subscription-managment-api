use in_app_purchase_managment_db;

CREATE TABLE devices (
  id int(11) NOT NULL, 
  u_id int(11) NOT NULL, 
  language varchar(35) NOT NULL,
  os varchar(10) NOT NULL,
  api_token varchar(80) NOT NULL,
  INDEX (u_id),
  UNIQUE KEY(u_id),
  PRIMARY KEY (id)
) ENGINE=InnoDB CHARACTER SET utf8;

	
CREATE TABLE applications (
  id int(11) NOT NULL,
  name varchar(60) NOT NULL, 
  PRIMARY KEY (id)
) ENGINE=InnoDB CHARACTER SET utf8;


/* create pivot table */
CREATE TABLE devices_applications (
  device_id int(11) NOT NULL,
  application_id int(11) NOT NULL,
  purchased boolean not null default 0,
  FOREIGN KEY (device_id) REFERENCES devices (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (application_id) REFERENCES applications (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  PRIMARY KEY (device_id, application_id)
) ENGINE=InnoDB CHARACTER SET utf8;
