select * from User_Table
select * from Content
select * from Reactions
select * from Reaction_Types


select UT.UserID,CT.ContentID,CT.Type,CT.Category,RT.Type,RT.Datetime,RTT.Sentiment,RTT.Score
from Content CT
right join User_table UT on UT.UserID = CT.UserID
left join Reactions RT on CT.ContentID = RT.ContentID
Left join Reaction_Types RTT on RT.Type = RTT.Type


create table final_data (
	UserID varchar(45), 
	ContentID varchar(45),
	ContentType varchar(45),
	Category varchar(45),
	ReactionType varchar(45),
	DateAndTime DateTime,
	ReactionSentiment varchar(45),
	ReactionScore int
)
select * from final_data

