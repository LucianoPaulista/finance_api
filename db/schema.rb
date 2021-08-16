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

ActiveRecord::Schema.define(version: 2021_08_16_010513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enderecos", force: :cascade do |t|
    t.string "cep"
    t.string "logradouro"
    t.string "endereco_nro"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.bigint "participante_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participante_id"], name: "index_enderecos_on_participante_id"
  end

  create_table "participantes", force: :cascade do |t|
    t.integer "tipo_pessoa"
    t.string "nome"
    t.string "cnpj_cpf"
    t.string "inscricao_rg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
