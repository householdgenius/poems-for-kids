--1
Select g.id, g.Name 'Grade'
From Grade g
--grades 1-5--

--2
select e.id, e.Name 'Emotion'
From Emotion e
--Anger, fear, sadness, joy--

--3
Select Count(*) 'Poem Count'
from Poem
--32842--

--4
Select a.name
from Author a 
--works but not writing out all author names--

--5
Select a.name, g.name 'Grade'
from Author a 
join Grade g on g.id=GradeId

--6
Select a.name, g.name 'Grade', ge.name 'Gender'
from Author a 
join Grade g on g.id=GradeId
join Gender ge on ge.id=GenderId

--7
Select sum(p.WordCount) 'Poem Word Count'
from Poem p

--8
Select p.title, p.TEXT, p.CharCount
from poem p
order by CharCount

--9
Select Count(*) '3rd Grade Authors'
from Author a 
join Grade g on g.id=GradeId
where g.id = 3

--10
Select Count(*) '1st, 2nd, and 3rd Grade Authors'
from Author a 
join Grade g on g.id=GradeId
where (g.id =1)
or (g.id =2)
or (g.id=3)

--11
Select Count(*) 'Poems by 4th Graders'
from Poem p
join Author a on a.id=AuthorId
join Grade g on g.id=GradeId
where g.id=4

--12
select Count(*) 'Poems per Grade', g.id 'Grade'
from Poem p
join Author a on a.id=AuthorId
join Grade g on g.id=GradeId
group by g.id
order by g.id

--13
select Count(*) 'Authors per Grade', g.id 'Grade'
from Author a
join Grade g on g.id=GradeId
group by g.id
order by g.id

--14
select p.Title, p.WordCount
from Poem p
order by p.WordCount DESC

--15
select Count(*) 'number of poems', a.Name
from Poem p
join Author a on a.id=AuthorId
group by a.Name, a.id
order by 'number of poems' desc

--16
select  Count(*) 'number of poems', e.Name 'Emotion'
from Poem p
join PoemEmotion pe on poemId=p.id
join Emotion e on e.id=EmotionId
group by e.Name, e.id

--17
select  Count(*) 'number of poems', e.Name 'Emotion'
from Poem p
left join PoemEmotion pe on poemId=p.id
left join Emotion e on e.id=EmotionId
group by e.Name, e.id

--18
select  Count(*) 'number of poems', e.Name 'Emotion'
from Poem p
join PoemEmotion pe on poemId=p.id
join Emotion e on e.id=EmotionId
group by e.Name, e.id
order by 'Emotion' asc

--19
select  g.Name 'Grade', Count(*) 'number of poems', e.Name 'Emotion'
from Poem p
join PoemEmotion pe on poemId=p.id
join Emotion e on e.id=EmotionId
join Author a on a.id=AuthorId
join Grade g on g.id=GradeId
where e.name = 'Joy'
Group by g.id, g.Name, e.Name
order by 'number of poems' desc

--20
select  g.Name 'Gender', Count(*) 'number of poems', e.Name 'Emotion'
from Poem p
join PoemEmotion pe on poemId=p.id
join Emotion e on e.id=EmotionId
join Author a on a.id=AuthorId
join Gender g on g.id=GenderId
where e.name = 'Fear'
Group by g.id, g.Name, e.Name
order by 'number of poems' asc
