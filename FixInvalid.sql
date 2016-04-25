/*
  
  Script:       FixInvalid.sql
  Purpose:      Microsoft Transact SQL Script that will fix any invalid geometries in described geomerty data.  
                Data and tables in script based off tutorial information
                from here: http://www.gisdoctor.com/site/2011/11/15/spatial-sql-geographer-part-1-spatial-sql/
  
  Instructions: Set proper table and field names and run the script.
  Author: Ben Spaulding - 2016
  
*/

update dbo.States_Provinces
set geom = geometry::STGeomFromWKB(geom.MakeValid().STAsBinary(),geom.STSrid)
