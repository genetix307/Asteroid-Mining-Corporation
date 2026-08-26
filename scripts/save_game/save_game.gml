function save_game(){

    ini_open("savegame.ini");

    var _names = variable_instance_get_names(store);
    var _len = array_length(_names);

    for (var i = 0; i < _len; i++)
    {
        var _varname = _names[i];
        var _value = variable_instance_get(store, _varname);

        // NUMBER
        if (is_real(_value))
        {
            ini_write_real("save1", _varname, _value);
        }

        // STRING
        else if (is_string(_value))
        {
            ini_write_string("save1", _varname, _value);
        }

        // ARRAY
        else if (is_array(_value))
        {
            var _alen = array_length(_value);
            ini_write_real("save1", _varname + "_length", _alen);

            for (var j = 0; j < _alen; j++)
            {
                var _entry = _value[j];

                if (is_real(_entry))
                    ini_write_real("save1", _varname + "_" + string(j), _entry);
                else if (is_string(_entry))
                    ini_write_string("save1", _varname + "_" + string(j), _entry);
            }
        }
    }

    ini_close();
}
