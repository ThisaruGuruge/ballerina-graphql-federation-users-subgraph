public isolated function getUsers() returns readonly & User[] {
    lock {
        return from User user in users select user;
    }
}
