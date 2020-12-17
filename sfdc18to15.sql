CREATE or replace FUNCTION sfdc18to15 (id18 TEXT) RETURNS TEXT AS
 $$
    try {
    if (id18.length === 18) return id18.substr(0, 15);
    if (id18 == '') throw "empty string";
    if (id18 == null) throw "null";
    }
    catch(err) {
    return err;
    }
$$
    LANGUAGE plv8 IMMUTABLE STRICT;

SELECT sfdc18to15('001E000000iPAg7IAG');