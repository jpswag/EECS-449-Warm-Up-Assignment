walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

2 new walkers for part 1
walker get_day_of_week {
    has weekday: int;  # Weekday number where Sunday = 0, Monday = 1, ..., Saturday = 6

    can return_message with `root entry {
        let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
        let day_of_week = days[self.weekday];

        report {
            "response": "The day of the week is " + day_of_week + "."
        };
    }
}



walker calculate_age {
    has birth_year: int;
    has current_year: int;

    can return_message with `root entry {
        let age = str(self.current_year - self.birth_year);

        report {
            "response": "You are " + age + " years old."
        };
    }
}
