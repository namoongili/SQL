create table  acorntbl (
    id  varchar2(10) primary key,
    pw  varchar2(10) ,
    name varchar2(10));

 
insert into acorntbl values('kdhyun', '4482', '�赵��');
insert into acorntbl values('kmg','1234', '�蹫��');
insert into acorntbl  values('ksjoong' ,'0000' , '�輼��');
insert into acorntbl  values('kimsh','6666','�輼��');
insert into acorntbl values('ksol', '1127', '���');
insert into acorntbl values('kimjs', '0317', '������');
insert into acorntbl values('kimcw','9876','��ä��');
insert into acorntbl values('backbw', '1111', '��ٿ�'); 
insert into acorntbl values('sbhak', '4482', '�Һ���');
insert into acorntbl values('sbyoungH','0117','�ۺ�ȭ'); 
insert into acorntbl values('ssb','1126','�ۼ���');
insert into acorntbl values('yjmin','0625','������');
insert into acorntbl values('Leesmin','6789','�̻��');
insert into acorntbl  values('LeeHjin', '1234', '��ȿ��');
insert into acorntbl values('Jangkho','1234','���ȣ');
insert into acorntbl values('Junws', '7777', '���켱');
insert into acorntbl values('Junjh', '9999', '������');
insert into acorntbl values('Jungbr', '2344', '������');
insert into acorntbl values('jooSg', '1009', '�ֻ��');
insert into acorntbl values('jooHJ', '3456', '������');
insert into acorntbl values('Choimgil', '9898', '�ֹ���');
insert into acorntbl values('ChoiHj', '5589', '������');
insert into acorntbl values('HYJin', '1234', '�Ͽ���');
insert into acorntbl values('Hjyoung', '9099', 'Ȳ����');
commit;

select * from acorntbl;

-- 1����
-- ������ ��ȸ�ϱ� SELECT

-- * : ��� �÷� ��ȸ�ϱ�
select * from acorntbl;

-- ���ϴ� �÷� ��ȸ�ϱ�
select id, name from acorntbl;

-- �����ϱ� ||
select id || name from acorntbl;

-- �÷� ��Ī(alias) �ֱ�
-- ��ȸ�� ����� �÷��� ����� (���� �����ͺ��̽� ���̺��� �÷��� ����Ǵ� ���� �ƴϴ�)
select id || name as name from acorntbl;

select id as userid, name as username from acorntbl;

--��Ī�� ������ �ִ� ��� "" �� ���ξ� �Ѵ�
select id as "user id", name from acorntbl;

-- ��Ī�� �� as ����������
select id userid, name username from acorntbl;

-- �ߺ��� ���� �����ϰ� ��ȸ�ϱ� distinct
-- emp ���̺� ���
select * from emp;
select job from emp;
--12�� ������ (��, ���ڵ�) �߿��� �ߺ��� ���� �����ϰ� ��ȸ�� �� �ִ�.
select distinct job from emp;

-- ������ �л���� ��ȸ�ϱ�
-- ��� �� (��� ���ڵ尡 ��ȸ�ȴ�)
select * from acorntbl;

-- ���ϴ� ���Ǹ� ��ȸ�ϱ�
-- where �� ����ϱ�

-- �达 �л� ��ȸ�ϱ�
select *
from acorntbl
where name like '��%'

-- �������� �� �� �ִ� ������
-- ���� =
select *
from acorntbl
where name = '�赵��';

-- �����ʴ� !=
select *
from acorntbl
where name != '�赵��';

--> , >= , < , <=
select * from emp;

-- ���̺� �� Ȯ���ϱ�(���̺�Ű��)
desc emp;

select ename, job, sal, comm
from emp
where sal > 2500;

select ename, job, sal, comm
from emp
where sal <= 2500;

select ename, job, sal, comm
from emp
where sal >=3000;

-- between a and b (a���� b����, a�� ������ b�� ū��, a,b�� ����)
select *
from emp
where sal between 2000 and 3000;

-- ������ �������� ��� AND, OR
-- �����ͺ��̽����� ���ڸ� ǥ���� ���� ' ' ���
-- ����� ������ ������ ���� ���� ��ҹ��� ������
select *
from emp
where job = 'SALESMAN' and sal >= 1500;

select*
from emp
where job = 'SALESMAN' or sal >= 1500;

-- in ( a,b,c )
-- job�� 'CLERK' �̰ų� 'MANAGER' ��ȸ
select *
from emp
where job = 'CLERK' or job = 'MANAGER';

select *
from emp
where job in('CLERK', 'MANAGER');

-- not in (a,b,c)
select *
from emp
where job not in ('CLERK', 'MANAGER');

-- not ����
select *
from emp
where not sal > 2000;

-- like ������
-- Ư�� ������ ������ ������ �˻��� �� ( %, _ )
-- % : ���� ���� ������ ����,     : �� ���ڸ�

select *
from acorntbl
where name like '��%';

-- �ڿ� �ѱ��ڸ� ���;���
select *
from acorntbl
where name like '��_';

-- ������ �����ϰ� �ڿ� 2�ڸ��� ������
select *
from acorntbl
where name like '��__';

-- null   �÷��� ������ �Էµ��� ���� ���¸� �ǹ��� ��(�������� ������, ������ ��), ����� �����ؾ� �Ѵ�
-- null   is null, is not null�� ���ؼ� null ���� Ȯ���� �� �ִ� ( =�����ڸ� ������ )

-- null �� �� ��ȸ
select *
from emp
where comm is null;

-- null �� �ƴѰ� ��ȸ
select *
from emp
where comm is not null;

-- �󿩱ݿ� 100��ŭ ������ ������ ��ȸ( ���� �����Ͱ� ����Ǵ°��� �ƴ϶� ��ȸ�� ������� �ݿ� )
select ename, comm + 100
from emp;

-- ������ ����
-- null + 100 => 100 ����
-- null + 100 => null ���� (o)
-- null ���� �ǹ� : ���� �������������� �ǹ� +100 => ���� ������������


-- �����ϱ�
-- �������� asc (��������)
-- �������� desc

-- ��������
select *
from emp;
order by sal desc;

-- ��������
select *
from emp;
order by sal;

select*
from emp
order by job;

select*
from emp
order by job, sal desc; --�������� �޿����������

-- ���Ľ� �÷��� ������ ����� �� �ִ� ( ��ȸ�� ���� ) 15:18
select empno, ename, job
from emp
order by ename;