class UsersJob < Mosquito::PeriodicJob
  run_every 1.minute

  def perform
    if user = User.where { _name == "New User" }.first
      user
    else
      user = User.create({name: "New User", age: 100})
    end
  end
end
