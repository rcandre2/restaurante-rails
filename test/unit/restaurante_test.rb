require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "nao deve gravar restaurante sem nome" do
    r = Restaurante.new
    assert_equal false, r.save
  end

  test "deve informar atraves de msg que nome é obrigatorio" do
    r = Restaurante.new
    r.save
    assert_equal "Deve ser preenchido", r.errors.on(:nome).first
  end

end
