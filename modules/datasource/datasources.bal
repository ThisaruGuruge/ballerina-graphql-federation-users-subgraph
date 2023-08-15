public isolated function getUsers() returns User[] {
    lock {
        User[] result = from User user in users select user.cloneReadOnly();
        return result.cloneReadOnly();
    }
}
