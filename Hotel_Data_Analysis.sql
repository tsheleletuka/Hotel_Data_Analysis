
with hotels as (
SELECT * from dbo.['2018$']
union
SELECT * from dbo.['2019$']
union
SELECT * from dbo.['2020$']
)

SELECT * from hotels
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal