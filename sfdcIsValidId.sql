CREATE FUNCTION sfdcIsValidId (id TEXT) RETURNS TEXT AS
 $$
    return (id.length === 15 || id.length === 18) ? true:false;
$$
    LANGUAGE plv8 IMMUTABLE STRICT;

SELECT sfdcIsValidId ('1231231');