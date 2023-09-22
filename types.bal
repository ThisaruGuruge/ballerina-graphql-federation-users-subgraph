import user_subgraph.datasource;

import ballerina/graphql;
import ballerina/graphql.subgraph;

# Represents a user in the system
# + id - The unique identifier for the user
# + name - The name of the user
# + email - The email of the user
@subgraph:Entity {
    key: "id",
    resolveReference: resolveUser
}
public type User record {|
    @graphql:ID string id;
    string name;
    string email;
|};

isolated function resolveUser(subgraph:Representation representation) returns User|error? {
    string id = check representation["id"].ensureType();
    return datasource:getUser(id);
}
