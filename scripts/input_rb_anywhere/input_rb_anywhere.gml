function input_rb_anywhere() {
    // Controller click
    if (gamepad_button_check_pressed(0, gp_shoulderrb))
    {
        return true;
    }
}