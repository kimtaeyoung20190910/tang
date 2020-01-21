drop table board;

create table board (
	no number primary key, --번호
	poster    varchar2(20), --작성자
	subject   varchar2(100), --제목
	contents  varchar2(2000),  --내용
	lastpost  date, --작성일자
	views     number(5) --조회수
	);
	
	insert into 
	
	commit