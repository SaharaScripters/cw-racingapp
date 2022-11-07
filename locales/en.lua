local Translations = {
    error = {
        name_too_short = 'The name is too short.',
        name_too_long = 'The name is too long.',
        unowned_dongle = "It doesn't seem to respond do you.",
        id_not_found = "Citizen by that ID was not found.",
        invalid_fob_type = "Invalid fob type.",
        not_in_race = "You are not in a race.",
        race_already_started = "The race has already started!",
        race_doesnt_exist = "This race does not exist :(",
        race_timed_out = "The race timed out and was canceled.",
        race_name_exists = "There is already a race with that name.",
        no_permission = "You do not have permission to do that.",
        already_making_race = "You are already making a race.",
        already_in_race = "You are already in a race.",
        return_to_start = "Return to the start or you will be kicked from the race: ",
        slow_down = "You can't go that fast!",
        no_checkpoints_to_delete = "You have not placed any checkpoints to delete.",
        not_enough_checkpoints = "You need a minimum number of checkpoints to save",
        max_tire_distance = "The max distance allowed is ",
        min_tire_distance = "The min distance allowed is ",
        editor_confirm = "Press [9] again to confirm.",
        editor_canceled = "You canceled the editor.",
    },
    primary = {
        race_last_person = "You were the last person in that race so it was canceled.",
        race_someone_joined = "Someone has joined the race.",
        race_someone_left = "Someone has left the race.",
        race_joined = "You joined the race.",
        race_will_start = "The race will start in 10 seconds.",
        racer_finished_place = " finished in place: ",
        no_pending_races = "There are no pending races at the moment.",
        no_races_exist = "No times have been set on this track",
        no_available_tracks = "There are no available tracks at the moment to use.",
    },
    success = {
        race_created = "The race was created!",
        race_saved = "The race was saved",
        race_record = "You now hold the record in %s with a time of: %s!",
        race_go = "GO!",
        race_finished = "You finished the race in ",
        race_best_lap = "You got a best lap of ",
        new_pb = "You got a new personal best!",
        time_added = "Your time has been added to the leaderboard"
    },
    commands = {
        create_racing_fob_command = 'createracingfob',
        create_racing_fob_description = 'Create a Racing Fob (Admin)',
    },
    text = {
        checkpoint_left = "Left Checkpoint",
        checkpoint_right = "Right Checkpoint",
        get_in_vehicle = "Get in a vehicle to start!",
    },
    menu = {
        ready_to_race = "Ready to Race, ",
        current_race = "Current Race",
        current_race_txt = "Options for your currently entered race.",
        available_races = "Available Races",
        available_races_txt = "See all the currently available races right now.",
        race_records = "Race Records",
        race_records_txt = "See all records for races.",
        setup_race = "Setup a Race",
        create_race = "Create a Track",
        no_tracks_exist = "There are no tracks yet",
        close = "✗ Close Menu",
        racers = " racer(s)",
        start_race = "Start Race",
        leave_race =  "Leave Race",
        go_back = "← Go Back",
        race_info = "%s lap(s) | %sm | %s racer(s)",
        unclaimed = "Unclaimed Record!",
        choose_a_track = "Choose a Track",
        choose_a_class = "Coose a Class",
        racing_setup = "Racing - Setup",
        select_track = "Select Your Track",
        number_laps = "Number of Laps (0 is Sprint)",
        name_track_question = "What do you want your track to be named?",
        name_track = "Name your track",
        all = 'All Classes'
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})