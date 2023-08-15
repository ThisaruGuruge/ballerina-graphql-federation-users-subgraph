import user_subgraph.datasource;

import ballerina/graphql;

service on new graphql:Listener(9092) {

    # Returns the list of users
    # + return - List of users
    resource function get users() returns User[] => datasource:getUsers();
}
