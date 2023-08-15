import ballerina/graphql;

# Represents a user in the system
# + id - The unique identifier for the user
# + name - The name of the user
# + email - The email of the user
public type User readonly & record {|
    @graphql:ID string id;
    string name;
    string email;
|};
