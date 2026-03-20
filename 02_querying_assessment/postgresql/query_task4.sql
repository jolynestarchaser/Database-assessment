-- Task 4: Supplier Dependency Check
-- The manager has just heard that 'Freshest Farm Produce' may be delayed on their next delivery.
-- Before deciding whether to source from an alternative supplier, they need to know exactly
-- which ingredients depend on that supplier, so they can assess the impact on the menu.
--
-- Hint: Write a query to find the names of all ingredients supplied by 'Freshest Farm Produce'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task4_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- I read a hint and they need to find name of all ingredients by 'Freshest Farm Produce'
-- I will query to see list of ingredients first then I will sort them specific
-- And found that it's not work so I decide to look at supplier that show 'Freshest Farm Produce'
-- Then I see supplier_ID 3 that's stand for Freshest Farm Produce so I deciding to show name and stock level
-- For make manager can be manage supplier easily

select name, stock_level from ingredients
where supplier_id = '3'
