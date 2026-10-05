/*
=============================================================
Initialize Sales Data Warehouse
=============================================================
Platform:
    Microsoft Fabric

Purpose:
    Create the Bronze, Silver, and Gold schemas
    inside the existing SalesDataWarehouse.

Architecture:
    Bronze → Silver → Gold
=============================================================
*/

CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
