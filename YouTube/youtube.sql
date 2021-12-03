
DROP DATABASE IF EXISTS youtube;
DROP USER IF EXISTS  youtube@localhost;
create user youtube@localhost identified by 'youtube';
create database youtube;
grant all privileges on youtube.* to youtube@localhost with grant option;

USE youtube;

CREATE TABLE IF NOT EXISTS Youtube_Channel (
  ch_id VARCHAR(100) NOT NULL,
  ch_name VARCHAR(45) NOT NULL,
  url_address VARCHAR(45),
  profile_pic_tag TEXT,
  subscriber_num INT DEFAULT 0,
  sign_up_date DATE,
  PRIMARY KEY (ch_id)
);

CREATE TABLE IF NOT EXISTS Videos (
  video_id VARCHAR(100) NOT NULL,
  ch_id VARCHAR(100) NOT NULL,
  title VARCHAR(100) NOT NULL,
  uploaddate DATE NOT NULL,
  explains VARCHAR(1000),
  views INT DEFAULT 0,
  likes INT DEFAULT 0,
  dislikes INT DEFAULT 0,
  vid_length TIME,
  max_quality INT DEFAULT 144,
  PRIMARY KEY (video_id, ch_id),
  FOREIGN KEY (ch_id) REFERENCES Youtube_Channel (ch_id)
);

CREATE TABLE IF NOT EXISTS Video_comments (
  comment_id VARCHAR(100) NOT NULL,
  video_id VARCHAR(100) NOT NULL,
  reply_date DATE NOT NULL,
  commenter VARCHAR(45),
  profile_pic_tag TEXT,
  comments VARCHAR(1000),
  likes INT DEFAULT 0,
  PRIMARY KEY (comment_id, video_id),
  FOREIGN KEY (video_id) REFERENCES Videos (video_id)
);

CREATE TABLE IF NOT EXISTS Other_videos (
  othervid_id VARCHAR(100) NOT NULL,
  video_id VARCHAR(100) NOT NULL,
  title VARCHAR(100) NOT NULL,
  uploaddate DATE NOT NULL,
  channel_name VARCHAR(45),
  views INT DEFAULT 0,
  PRIMARY KEY (othervid_id, video_id),
  FOREIGN KEY (video_id) REFERENCES Videos (video_id)
);

CREATE TABLE IF NOT EXISTS Posts (
  comm_id VARCHAR(100) NOT NULL,
  ch_id VARCHAR(100) NOT NULL,
  postdate DATE NOT NULL,
  views INT DEFAULT 0,
  likes INT DEFAULT 0,
  dislikes INT DEFAULT 0,
  contents VARCHAR(1000),
  PRIMARY KEY (comm_id, ch_id),
  FOREIGN KEY (ch_id) REFERENCES Youtube_Channel (ch_id)
);

CREATE TABLE IF NOT EXISTS Post_comments (
  comment_id VARCHAR(100) NOT NULL,
  comm_id VARCHAR(100) NOT NULL,
  reply_date DATE NOT NULL,
  commenter VARCHAR(45),
  profile_pic_tag TEXT,
  comments VARCHAR(1000),
  likes INT DEFAULT 0,
  PRIMARY KEY (comment_id, comm_id),
  FOREIGN KEY (comm_id) REFERENCES Posts (comm_id)
);

CREATE TABLE IF NOT EXISTS Pictures (
  picture_id VARCHAR(100) NOT NULL,
  comm_id VARCHAR(100) NOT NULL,
  picture_tag TEXT,
  PRIMARY KEY (picture_id, comm_id),
  FOREIGN KEY (comm_id) REFERENCES Posts (comm_id)
);

CREATE TABLE IF NOT EXISTS Subscribers (
  subscriber_ch_id VARCHAR(45) NOT NULL,
  ch_id VARCHAR(100) NOT NULL,
  channel_name VARCHAR(100) NOT NULL,
  subscriber_num INT DEFAULT 0,
  video_num INT DEFAULT 0,
  profile_pic_tag TEXT,
  PRIMARY KEY (subscriber_ch_id, ch_id),
  FOREIGN KEY (ch_id) REFERENCES Youtube_Channel (ch_id)
);
