-------------------------------------------------------------------------------
--
-- PLEASE NOTE
-- 
-- No warranty, no liability, no support.
--
-- This script is 100% at your own risk to use.
--
-------------------------------------------------------------------------------
col text format a120
select line, text
from user_source
where name like nvl(upper('&name'),name)||'%'
and line between &start_line and &end_line
and type = 'PACKAGE BODY'
order by type, line;
