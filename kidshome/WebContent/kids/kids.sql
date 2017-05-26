select toy_serial from (select toy_serial, count(*) as num from toyrent group by toy_serial order by num desc) where toyrent.toy_serial = toyinfo.toy_serial and rownum between 1 and 4
select toy_image from (select toy_serial, count(*) as num from toyrent group by toy_serial order by num desc), toyinfo where rownum between 1 and 4;
insert into toyrent()
insert into toyrent values(rent_seq.nextval, 'k1234','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1235','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1235','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1236','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1236','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1236','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1237','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1237','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1237','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1237','mk', sysdate, sysdate, 'n');
insert into toyrent values(rent_seq.nextval, 'k1237','mk', sysdate, sysdate, 'n');