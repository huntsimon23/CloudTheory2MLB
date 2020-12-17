CREATE or replace FUNCTION sfdc15to18 (id15 TEXT) RETURNS TEXT AS
 $$
    function reverseString(str) {
        return (str === '') ? '' : reverseString(str.substr(1)) + str.charAt(0);
      }

    var suffixChars = "ABCDEFGHIJKLMNOPQRSTUWXYZ012345"

    function blockConvert(block) {
        var blockA = reverseString(block)
        var blockB = blockA.replace(/[a-z0-9]/g, "0");
        var blockC = blockB.replace(/[A-Z]/g, "1")
        var blockD = parseInt(blockC, 2)
        var blockE = suffixChars.charAt(blockD);
        return blockE
    }

    try{
    if (id15.length === 15) {
        var block1 = id15.slice(0, 5);
        var block2 = id15.slice(5, 10);
        var block3 = id15.slice(10, 15);

        var x = blockConvert(block1)
        var y = blockConvert(block2)
        var z = blockConvert(block3)

        var id18 = id15 + x + y + z;
        return id18;
    }
    if (id15 == '') throw "empty string";
    if (id15 == null) throw "null";
    }
    catch(err) {
    return err;
    }
$$
    LANGUAGE plv8 IMMUTABLE STRICT;

SELECT sfdc15to18 ('001E000000iPAg7');