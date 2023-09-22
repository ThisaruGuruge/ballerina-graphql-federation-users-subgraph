public isolated function getUsers() returns readonly & User[] {
    lock {
        return from User user in users select user.cloneReadOnly();
    }
}

public isolated function getUser(string id) returns User? {
    lock {
        if users.hasKey(id) {
            return users.get(id);
        }
    }
    return;
}
