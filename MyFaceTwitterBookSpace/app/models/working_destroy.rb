module WorkingDestroy

  def really_destroy
    ActiveRecord::Base.connection.execute(
      "DELETE FROM users WHERE id = #{id}")
  end

end
