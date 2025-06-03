-- +goose Up
-- +goose StatementBegin
ALTER TABLE workouts
ADD COLUMN if NOT EXISTS user_id BIGINT NOT NULL REFERENCES users(id) ON DELETE CASCADE;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE workouts
DROP COLUMN IF EXISTS user_id;
-- +goose StatementEnd