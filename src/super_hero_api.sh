#!/bin/bash

api="https://superheroapi.com/api/$access_token"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function set_access_token() {
    # 1 - access_token: (string): <access_token>
    access_token=$1
}

function search_super_heroes() {
    # 1 - name: (string): <Name of the super hero to search for>
    curl --request GET \
        --url "$api/search/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_super_hero_by_id() {
    # 1 - id: (integer): <ID of the super hero to retrieve>
    curl --request GET \
        --url "$api/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_super_hero_powerstats() {
    # 1 - id: (integer): <ID of the super hero to retrieve powerstats for>
    curl --request GET \
        --url "$api/$1/powerstats" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_super_hero_biography() {
    # 1 - id: (integer): <ID of the super hero to retrieve biography for>
    curl --request GET \
        --url "$api/$1/biography" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_super_hero_appearance() {
    # 1 - id: (integer): <ID of the super hero to retrieve appearance for>
    curl --request GET \
        --url "$api/$1/appearance" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_super_hero_work() {
    # 1 - id: (integer): <ID of the super hero to retrieve work information for>
    curl --request GET \
        --url "$api/$1/work" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_super_hero_connections() {
    # 1 - id: (integer): <ID of the super hero to retrieve connections for>
    curl --request GET \
        --url "$api/$1/connections" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_super_hero_image() {
    # 1 - id: (integer): <ID of the super hero to retrieve image information for>
    curl --request GET \
        --url "$api/$1/image" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
