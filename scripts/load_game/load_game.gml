function load_game(){

    ini_open("savegame.ini");

    var _names = variable_instance_get_names(store);
    var _len = array_length(_names);

    for (var i = 0; i < _len; i++)
    {
        var _varname = _names[i];
        var _default = variable_instance_get(store, _varname);

        // NUMBER
        if (is_real(_default))
        {
            var _val = ini_read_real("save1", _varname, _default);
            variable_instance_set(store, _varname, _val);
        }

        // STRING
        else if (is_string(_default))
        {
            var _val = ini_read_string("save1", _varname, _default);
            variable_instance_set(store, _varname, _val);
        }

        // ARRAY
        else if (is_array(_default))
        {
            var _alen = ini_read_real("save1", _varname + "_length", array_length(_default));

            var _new_array = array_create(_alen);

            for (var j = 0; j < _alen; j++)
            {
                var _key = _varname + "_" + string(j);

                if (array_length(_default) > j && is_string(_default[j]))
                    _new_array[j] = ini_read_string("save1", _key, _default[j]);
                else
                    _new_array[j] = ini_read_real("save1", _key, _default[j]);
            }

            variable_instance_set(store, _varname, _new_array);
        }
    }

    ini_close();
}
