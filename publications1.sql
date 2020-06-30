select authors.au_id,au_lname,au_fname,title,pub_name
from authors
inner join titleauthor on authors.au_id=titleauthor.au_id
inner join titles on titles.title_id=titleauthor.title_id
inner join publishers on titles.pub_id=publishers.pub_id;

select authors.au_id,au_lname,au_fname,count(title),pub_name
from authors
inner join titleauthor on authors.au_id=titleauthor.au_id
inner join titles on titles.title_id=titleauthor.title_id
inner join publishers on titles.pub_id=publishers.pub_id
group by authors.au_id,publishers.pub_name;


select authors.au_id,au_lname,au_fname,distinct(count(title)),pub_name
from authors
inner join titleauthor on authors.au_id=titleauthor.au_id
inner join titles on titles.title_id=titleauthor.title_id
inner join publishers on titles.pub_id=publishers.pub_id
group by authors.au_id,publishers.pub_name;

select authors.au_id,au_lname,au_fname,sum(titles.ytd_sales) as total, titles.title
from authors
inner join titleauthor on authors.au_id=titleauthor.au_id
inner join titles on titles.title_id=titleauthor.title_id
group by authors.au_id,titles.title
order by total desc
limit 3


select authors.au_id,au_lname,au_fname,sum(titles.ytd_sales) as total, titles.title
from authors
inner join titleauthor on authors.au_id=titleauthor.au_id
inner join titles on titles.title_id=titleauthor.title_id
group by authors.au_id,titles.title
order by total desc;