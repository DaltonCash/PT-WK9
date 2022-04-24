create table user(
	user_id int(11) not null auto_increment,
    username varchar(20) not null,
    password varchar(30) not null,
    email varchar(50) not null,
    primary key (user_id)
);

create table comment(
	comment_id int(11) not null auto_increment,
    comment varchar(500) not null,
    comment_timestamp timestamp default current_timestamp not null ,
    user_id int(11) not null,
    primary key (comment_id),
    foreign key (user_id) references user(user_id)
);

create table post(
	post_id int(11) not null auto_increment,
	post varchar(500) not null,
    post_timestamp timestamp default current_timestamp not null,
    user_id int(11) not null,
    comment_id int(11) not null,
    primary key (post_id),
    foreign key (user_id) references user(user_id),
    foreign key (comment_id) references comment(comment_id)
);