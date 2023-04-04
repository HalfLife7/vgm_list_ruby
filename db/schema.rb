# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_01_033720) do
  create_table "album_artists", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "album_id"
    t.bigint "artist_id"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_album_artists_on_album_id"
    t.index ["artist_id"], name: "index_album_artists_on_artist_id"
  end

  create_table "album_covers", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "album_id", null: false
    t.text "full"
    t.text "medium"
    t.text "name"
    t.text "thumb"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["album_id"], name: "album_id"
  end

  create_table "album_discs", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "disc_number"
    t.integer "album_id", null: false
    t.text "length"
    t.text "name"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["album_id"], name: "album_id"
    t.index ["disc_number", "album_id"], name: "id", unique: true
  end

  create_table "album_stores", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "album_id", null: false
    t.text "link"
    t.text "name"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["album_id"], name: "album_id"
  end

  create_table "album_tracks", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "track_number", null: false
    t.integer "album_id", null: false
    t.integer "disc_number", null: false
    t.text "length"
    t.text "name"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["album_id"], name: "album_id"
    t.index ["track_number", "album_id", "disc_number"], name: "id", unique: true
  end

  create_table "albums", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "catalog"
    t.text "category"
    t.text "classification"
    t.text "media_format"
    t.text "name"
    t.text "notes"
    t.text "publisher"
    t.date "release_date"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "artists", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "collections", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "name"
    t.text "slug"
    t.text "url"
    t.string "checksum"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "game_albums", primary_key: ["album_id", "game_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "album_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["game_id"], name: "game_id"
  end

  create_table "game_alternative_names", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "game_id", null: false
    t.text "comment"
    t.text "name"
    t.string "checksum"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["game_id"], name: "game_id"
  end

  create_table "game_artworks", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "game_id", null: false
    t.boolean "alpha_channel"
    t.boolean "animated"
    t.integer "height"
    t.text "image_id"
    t.text "url"
    t.integer "width"
    t.string "checksum"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["game_id"], name: "game_id"
  end

  create_table "game_collections", primary_key: ["game_id", "collection_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "game_id", null: false, auto_increment: true
    t.integer "collection_id", null: false
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["collection_id"], name: "collection_id"
  end

  create_table "game_covers", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "game_id", null: false
    t.boolean "alpha_channel"
    t.boolean "animated"
    t.integer "height"
    t.text "image_id"
    t.text "url"
    t.integer "width"
    t.string "checksum"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["game_id"], name: "game_id"
  end

  create_table "game_platforms", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "platform_id", null: false
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "game_screenshots", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "game_id", null: false
    t.boolean "alpha_channel"
    t.boolean "animated"
    t.integer "height"
    t.text "image_id"
    t.text "url"
    t.integer "width"
    t.string "checksum"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["game_id"], name: "game_id"
  end

  create_table "game_videos", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "game_id", null: false
    t.text "name"
    t.text "video_id"
    t.string "checksum"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["game_id"], name: "game_id"
  end

  create_table "game_websites", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "category"
    t.boolean "trusted"
    t.text "url"
    t.string "checksum"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["game_id"], name: "game_id"
  end

  create_table "games", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "aggregated_rating_count"
    t.float "aggregated_rating"
    t.integer "category"
    t.integer "first_release_date"
    t.text "name"
    t.text "slug"
    t.text "summary"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "platform_logos", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "platform_id", null: false
    t.boolean "alpha_channel"
    t.boolean "animated"
    t.integer "height"
    t.text "image_id"
    t.text "url"
    t.integer "width"
    t.string "checksum"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.index ["platform_id"], name: "platform_id"
  end

  create_table "platforms", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "abbreviation"
    t.text "alternative_name"
    t.integer "category"
    t.text "generation"
    t.text "name"
    t.text "slug"
    t.text "summary"
    t.text "url"
    t.string "checksum"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
  end

  add_foreign_key "album_covers", "albums", name: "album_covers_ibfk_1", on_delete: :cascade
  add_foreign_key "album_discs", "albums", name: "album_discs_ibfk_1", on_delete: :cascade
  add_foreign_key "album_stores", "albums", name: "album_stores_ibfk_1", on_delete: :cascade
  add_foreign_key "album_tracks", "albums", name: "album_tracks_ibfk_1", on_delete: :cascade
  add_foreign_key "game_albums", "albums", name: "game_albums_ibfk_1", on_delete: :cascade
  add_foreign_key "game_albums", "games", name: "game_albums_ibfk_2", on_delete: :cascade
  add_foreign_key "game_alternative_names", "games", name: "game_alternative_names_ibfk_1", on_delete: :cascade
  add_foreign_key "game_artworks", "games", name: "game_artworks_ibfk_1", on_delete: :cascade
  add_foreign_key "game_collections", "collections", name: "game_collections_ibfk_2", on_delete: :cascade
  add_foreign_key "game_collections", "games", name: "game_collections_ibfk_1", on_delete: :cascade
  add_foreign_key "game_covers", "games", name: "game_covers_ibfk_1", on_delete: :cascade
  add_foreign_key "game_screenshots", "games", name: "game_screenshots_ibfk_1", on_delete: :cascade
  add_foreign_key "game_videos", "games", name: "game_videos_ibfk_1", on_delete: :cascade
  add_foreign_key "game_websites", "games", name: "game_websites_ibfk_1", on_delete: :cascade
  add_foreign_key "platform_logos", "platforms", name: "platform_logos_ibfk_1", on_delete: :cascade
end
