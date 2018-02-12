# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180212101546) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alum_mats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "alum_id"
    t.bigint "mat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alum_id"], name: "index_alum_mats_on_alum_id"
    t.index ["mat_id"], name: "index_alum_mats_on_mat_id"
  end

  create_table "alums", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "matricula"
    t.string "nombre"
    t.string "apellidos"
    t.string "foto"
    t.string "correo"
    t.bigint "prof_id"
    t.bigint "idiom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idiom_id"], name: "index_alums_on_idiom_id"
    t.index ["prof_id"], name: "index_alums_on_prof_id"
  end

  create_table "ents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "fecha"
    t.bigint "prof_id"
    t.text "notas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prof_id"], name: "index_ents_on_prof_id"
  end

  create_table "historials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "alum_id"
    t.bigint "mat_id"
    t.float "calif_1", limit: 24
    t.float "calif_2", limit: 24
    t.float "calif_3", limit: 24
    t.float "final", limit: 24
    t.float "ext_1", limit: 24
    t.float "ext_2", limit: 24
    t.float "esp", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alum_id"], name: "index_historials_on_alum_id"
    t.index ["mat_id"], name: "index_historials_on_mat_id"
  end

  create_table "idioms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nivel"
    t.string "semestre"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "usuario"
    t.string "correo"
    t.string "instituto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pruebas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "prof_id"
    t.bigint "alum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alum_id"], name: "index_tutors_on_alum_id"
    t.index ["prof_id"], name: "index_tutors_on_prof_id"
  end

  add_foreign_key "alum_mats", "alums"
  add_foreign_key "alum_mats", "mats"
  add_foreign_key "alums", "idioms"
  add_foreign_key "alums", "profs"
  add_foreign_key "ents", "profs"
  add_foreign_key "historials", "alums"
  add_foreign_key "historials", "mats"
  add_foreign_key "tutors", "alums"
  add_foreign_key "tutors", "profs"
end
