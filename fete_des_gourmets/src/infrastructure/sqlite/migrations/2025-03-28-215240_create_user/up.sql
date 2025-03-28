CREATE TABLE IF NOT EXISTS user (
    id TEXT PRIMARY KEY NOT NULL,  -- Store UUID as TEXT
    username TEXT NOT NULL UNIQUE,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    status_id INTEGER NOT NULL,  -- Enum as INTEGER (FK)
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS status (
    id INTEGER PRIMARY KEY NOT NULL,
    name TEXT NOT NULL UNIQUE
);

INSERT INTO status (id, name) VALUES (1, 'active'), (2, 'inactive');
