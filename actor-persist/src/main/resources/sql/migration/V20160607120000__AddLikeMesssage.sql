CREATE TABLE IF NOT EXISTS likemessage (
  fmsgid varchar(36)  NOT NULL,
  fmsgcontent varchar(8096) ,
  fmsgtype varchar(36)  NOT NULL,
  fmsgfileurl varchar(2048) ,
  fdialogid int4 NOT NULL,
  fdialogtype varchar(36)  NOT NULL,
  fdialogname varchar(255) ,
  fdialogpid varchar(36) ,
  fsenderid int4 NOT NULL,
  fsendername varchar(255) ,
  fsenderpid varchar(36)  NOT NULL,
  flikerid int4 NOT NULL,
  flikerpid varchar(36)  NOT NULL,
  fcreatetime timestamp(6),
  version int4,
  PRIMARY KEY(fmsgid, fdialogid, flikerid)
);

CREATE INDEX liker ON likemessage USING btree (flikerid);