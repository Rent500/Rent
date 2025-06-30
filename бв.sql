use ремонтбытовойтехники;
CREATE TABLE клиенты (
    id INT AUTO_INCREMENT PRIMARY KEY,
    фамилия VARCHAR(255),
    имя VARCHAR(255),
    отчество VARCHAR(255) NOT NULL,
    номер_телефона VARCHAR(20)
);
CREATE TABLE заявки_на_ремонт (
    id_заказа INT AUTO_INCREMENT PRIMARY KEY,
    id_клиента INT ,
    id_тех_специалиста INT ,
    id_модели INT ,
    дата DATE ,
    итоговая_стоимость DECIMAL(10, 2) 
);
CREATE TABLE тех_специалисты (
    id_тех_специалиста INT AUTO_INCREMENT PRIMARY KEY,
    фамилия VARCHAR(255),
    имя VARCHAR(255),
    отчество VARCHAR(255) NOT NULL,
    телефон VARCHAR(20)
);
CREATE TABLE модели (
    id_модели INT AUTO_INCREMENT PRIMARY KEY,
    название VARCHAR(255) ,
    цвет VARCHAR(255),
    id_типа INT 
);
CREATE TABLE типы_моделей (
    id_типа INT AUTO_INCREMENT PRIMARY KEY,
    название VARCHAR(255) 
);
CREATE TABLE услуги (
    id_услуги INT AUTO_INCREMENT PRIMARY KEY,
    название VARCHAR(255),
    стоимость DECIMAL(10, 2) 
);
CREATE TABLE Список_заявок (
    id_списка INT AUTO_INCREMENT PRIMARY KEY,
    id_заявки INT NOT NULL,
    id_услуги INT NOT NULL
);
