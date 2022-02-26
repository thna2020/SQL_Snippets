SELECT BST.N,
(CASE
    WHEN BST.P IS NULL THEN 'Root'
    WHEN EXISTS (
        SELECT BT.P 
        FROM BST AS BT
        WHERE BT.P = BST.N
    ) THEN 'Inner'     
    ELSE 'Leaf'
END)
FROM BST
ORDER BY BST.N;