  SELECT distinct aloha_nutrition.hospcode,   
         aloha_nutrition.pid,   
         aloha_nutrition.seq,   
         aloha_nutrition.date_serv - 5430000 as date_serv,   
         aloha_nutrition.nutritionplace,   
         round(aloha_nutrition.weight,1) as weight,   
         round(aloha_nutrition.height,1) as height,   
         round(aloha_nutrition.headcircum,1) as headcircum,   
         aloha_nutrition.childdevelop,   
         aloha_nutrition.food,   
         aloha_nutrition.bottle,   
         aloha_nutrition.provider,   
         aloha_nutrition.d_update - 5430000000000  as d_update
    FROM aloha_nutrition  where date_serv between 25571101 and 25571110;
