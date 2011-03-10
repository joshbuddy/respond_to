class TestRespondTo < MiniTest::Unit::TestCase
  def test_triple_eq
    assert (RespondTo(:<<) === "testing")
  end

  def test_triple_eq_with_false
    assert !(RespondTo(:crazytown) === ('testing'))
  end

  def test_only_one_object
    assert RespondTo(:crazytown).equal?(RespondTo(:crazytown))
  end

  def test_with_symbol_tilde
    assert (~:<< === "testing")
  end
end
