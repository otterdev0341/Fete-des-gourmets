// @generated automatically by Diesel CLI.

diesel::table! {
    status (id) {
        id -> Integer,
        name -> Text,
    }
}

diesel::table! {
    user (id) {
        id -> Text,
        username -> Text,
        first_name -> Text,
        last_name -> Text,
        email -> Text,
        password -> Text,
        status_id -> Integer,
        created_at -> Text,
        updated_at -> Text,
    }
}

diesel::allow_tables_to_appear_in_same_query!(
    status,
    user,
);
