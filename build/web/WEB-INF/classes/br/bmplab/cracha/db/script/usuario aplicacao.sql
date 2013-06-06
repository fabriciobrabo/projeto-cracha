CREATE USER 'cracha_adm'@'localhost' IDENTIFIED BY 'cracha_adm';
CREATE USER 'cracha_adm'@'%' IDENTIFIED BY 'cracha_adm';

GRANT ALL PRIVILEGES ON cracha.* TO 'cracha_adm'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON cracha.* TO 'cracha_adm'@'%' WITH GRANT OPTION;
