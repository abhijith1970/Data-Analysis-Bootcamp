SELECT * FROM Products

-- WE need to group the data  based on columns category & price into  diffrent  categories i.e affordable & premimum

SELECT 
*,
CASE 
	WHEN Category =' Electronics' then
		case when Price>=300 then 'Premium elecronics'
		else'Affordable elecronics'
		end
	WHEN Category = 'Furniture' then
		CASE when Price>=250 then  'premium furniture'
		else 'Afoordabel furniture'
		end
else 

	case when price >=25 then 'Premium accesoories'
		else 'Affordable accessories'
	end

end as [Groups]
FROM Products