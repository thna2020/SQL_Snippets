select W.id, WP.age, W.coins_needed, W.power
from Wands W
    join Wands_Property WP
    on W.code = WP.code
where WP.is_evil = 0 and
        W.coins_needed = (
            select min(W1.coins_needed)
            from Wands W1
                join Wands_Property WP1
                on W1.code = WP1.code
            where W.power = W1.power and WP.age = WP1.age
        )
order by W.power desc, age desc;