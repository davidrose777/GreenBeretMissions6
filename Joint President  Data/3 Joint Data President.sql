Delete ExecOrdersPresidents
Delete Presidents1
Delete InfoPresidentParty1
insert InfoPresidentParty1(Party1,YearEstablished,ColorOfParty)
select 'Republican', 1854 ,'Red' 
union select 'Democrat', 1828, 'Blue'
union select 'Federalist', 1791, 'Orange'  
union select 'Whig', 1833, 'Yellow' 
union select 'None, Federalist', 1789, 'White' 
union select 'National Union', 1864, 'Green'  
union select 'Democratic-Republican', 1792, 'Purple'  
GO
insert Presidents1(i.InfoPresidentParty1Id,Num, FirstName, LastName, DateBorn, DateDied,TermStart, TermEnd) 
      select  i.InfoPresidentParty1Id, 1, 'George', 'Washington', '1732-02-22', '1799-12-14', 1789, 1797 from InfoPresidentParty1 i where colorofparty='Orange'
union select  i.InfoPresidentParty1Id, 2, 'John', 'Adams', '1735-10-30', '1826-07-04', 1797, 1801  from InfoPresidentParty1 i where colorofparty='Ornage'
union select  i.InfoPresidentParty1Id, 3, 'Thomas', 'Jefferson', '1743-04-13', '1826-07-04', 1801, 1809 from InfoPresidentParty1 i where colorofparty='Purple'
union select  i.InfoPresidentParty1Id, 4, 'James', 'Madison', '1751-03-16', '1836-06-28', 1809, 1817 from InfoPresidentParty1 i where colorofparty='Purple'
union select  i.InfoPresidentParty1Id, 5, 'James', 'Monroe', '1758-04-28', '1831-07-04', 1817, 1825 from InfoPresidentParty1 i where colorofparty='Purple'
union select  i.InfoPresidentParty1Id, 6, 'John Quincy', 'Adams', '1767-07-11', '1848-02-23', 1825, 1829 from InfoPresidentParty1 i where colorofparty='Purple'
union select  i.InfoPresidentParty1Id, 7, 'Andrew', 'Jackson', '1767-03-15', '1845-06-08', 1829, 1837 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 8, 'Martin', 'van Buren', '1782-12-05', '1862-07-24', 1837, 1841 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 9, 'William H.', 'Harrison', '1773-02-09', '1841-04-04', 1841, 1841 from InfoPresidentParty1 i where colorofparty='Yellow'
union select  i.InfoPresidentParty1Id, 10, 'John', 'Tyler', '1790-03-29', '1862-01-18', 1841, 1845 from InfoPresidentParty1 i where colorofparty='Yellow'
union select  i.InfoPresidentParty1Id, 11, 'James K.', 'Polk', '1795-11-02', '1841-06-15', 1845, 1849 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 12, 'Zachary', 'Taylor', '1784-11-24', '1850-07-09', 1849, 1850 from InfoPresidentParty1 i where colorofparty='Yellow'
union select  i.InfoPresidentParty1Id, 13, 'Millard', 'Fillmore', '1800-01-07', '1874-03-08', 1850, 1853 from InfoPresidentParty1 i where colorofparty='Yellow'
union select  i.InfoPresidentParty1Id, 14, 'Franklin', 'Pierce', '1804-11-23', '1869-10-08', 1853, 1857 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 15, 'James', 'Buchanan', '1791-04-23', '1868-06-01', 1857, 1861 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 16, 'Abraham', 'Lincoln', '1809-02-12', '1865-04-15', 1861, 1865 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 17, 'Andrew', 'Johnson', '1808-12-29', '1875-07-31', 1865, 1869 from InfoPresidentParty1 i where colorofparty='Green'
union select  i.InfoPresidentParty1Id, 18, 'Ulysses S.', 'Grant', '1822-04-27', '1885-07-23', 1869, 1877 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 19, 'Rutherford', 'Hayes', '1822-10-04', '1893-01-17', 1877, 1881 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 20, 'James', 'Garfield', '1831-11-19', '1881-09-19', 1881, 1881 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 21, 'Chester', 'Arthur', '1829-10-05', '1886-11-18', 1881, 1885 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 22, 'Grover', 'Cleveland', '1837-03-18', '1908-06-24', 1885, 1889 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 23, 'Benjamin', 'Harrison', '1833-08-20', '1901-03-13', 1889, 1893 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 24, 'Grover', 'Cleveland', '1837-03-18', '1908-06-24', 1893, 1897 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 25, 'William', 'McKinley', '1843-01-29', '1901-09-14', 1897, 1901 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 26, 'Theodore', 'Roosevelt', '1858-10-27', '1919-01-06', 1901, 1909 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 27, 'William', 'Taft', '1857-09-15', '1930-03-08', 1909, 1913 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 28, 'Woodrow', 'Wilson', '1856-12-28', '1924-02-03', 1913, 1921 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 29, 'Warren', 'Harding', '1865-11-02', '1923-08-02', 1921, 1923 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 30, 'Calvin', 'Coolidge', '1872-07-04', '1933-01-05', 1923, 1929 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 31, 'Herbert C.', 'Hoover', '1874-08-10', '1964-10-20', 1929, 1933 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 32, 'Franklin Delano', 'Roosevelt', '1882-01-30', '1945-04-12', 1933, 1945 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 33, 'Harry S', 'Truman', '1884-05-08', '1972-12-26', 1945, 1953 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 34, 'Dwight David', 'Eisenhower', '1890-10-14', '1969-03-28', 1953, 1961 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 35, 'John Fitzgerald', 'Kennedy', '1917-05-29', '1963-11-22', 1961, 1963 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 36, 'Lyndon Baines', 'Johnson', '1908-08-27', '1973-01-22', 1963, 1969 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 37, 'Richard Milhous', 'Nixon', '1913-01-09', '1994-04-22', 1969, 1974 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 38, 'Gerald R.', 'Ford', '1913-07-14', '2006-12-26', 1974, 1977 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 39, 'James Earl', 'Carter', '1924-10-01', null, 1977, 1981 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 40, 'Ronald Wilson', 'Reagan', '1911-02-06', '2004-06-05', 1981, 1989 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 41, 'George H. W.', 'Bush', '1924-06-12', '2018-11-30', 1989, 1993 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 42, 'William Jefferson', 'Clinton', '1946-08-19', null, 1993, 2001 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 43, 'George W.', 'Bush', '1946-07-06', null, 2001, 2009 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 44, 'Barack', 'Obama', '1961-08-04', null, 2009, 2017 from InfoPresidentParty1 i where colorofparty='Blue'
union select  i.InfoPresidentParty1Id, 45,'Donald','Trump','1946-6-14',null,2017,2021 from InfoPresidentParty1 i where colorofparty='Red'
union select  i.InfoPresidentParty1Id, 46,'Joe','Biden','1942-11-20',null,2021,null from InfoPresidentParty1 i where colorofparty='Blue'
GO                                                   
insert ExecOrdersPresidents(Presidents1Id,OrderNum,VolumeNum,NameCode,PageNum,YearOrdered,NameOfOrder,WasorderUpheld,DateRecordCreated)
select p.Presidents1Id,95,3,'C.F.R.', 3456, 1863,' "Emancipation Proclomation" was the abolishment of slavey in the confederate statses' , 1, '1-1-1863'
from Presidents1 p 
where FirstName='Abraham' 
and Lastname='Lincoln'
union select p.Presidents1Id,8807,3,'C.F.R.', 8912, 1941,
'The "Mahhattan Project" was when American and British physicists worked to achieve nuclear fission with uranium to win world war 2' , 1, '6-28-1941'
from Presidents1 p 
where FirstName='Franklin Delano' 
and Lastname='Roosevelt'
union select p.Presidents1Id,10448,3,'C.F.R.', 4567, 1853,'Establishing the "National Defense Service Medal"' , 1, '4-22-1953'
from Presidents1 p 
where FirstName='Dwight David' 
and Lastname='Eisenhower'
union select p.Presidents1Id,10865,3,'C.F.R.', 9123, 1960,'Safeguarding classified information within industry' , 1, '2-20-1960'
from Presidents1 p 
where FirstName='Dwight David' 
and Lastname='Eisenhower'
union select p.Presidents1Id,10730,3,'C.F.R.', 5678, 1957,'National guard(and active military)deployed to desegregate public schools' , 1, '9-23-1957'
from Presidents1 p 
where FirstName='Dwight David' 
and Lastname='Eisenhower'
union select p.Presidents1Id,13228,3,'C.F.R.', 1234, 2001,'Creation of the department of homeland security' , 1, '10-8-2001'
from Presidents1 p 
where FirstName='George W.' 
and Lastname='Bush'




