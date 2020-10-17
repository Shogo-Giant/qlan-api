addresses = [
  { email: 'admin@qlan-ac.jp', password: 'qlan2017' },
  { email: 'accounts001@qlan-ac.jp', password: 'qlan2017' },
  { email: 'accounts002@qlan-ac.jp', password: 'qlan2017' },
  { email: 'accounts003@qlan-ac.jp', password: 'qlan2017' },
  { email: 'accounts004@qlan-ac.jp', password: 'qlan2017' },
  { email: 'accounts005@qlan-ac.jp', password: 'qlan2017' }
]

addresses.each.with_index(1) do |address, index|
  account = Account.find_by(email: address[:email])
  next if account.present?

  account = Account.new(
    name: "name#{index}",  phone_number: "0801234567#{index}",
    email: address[:email], password: address[:password], user_id: "user_id#{index}"
  )
  account.save!

  accounts_profile = AccountsProfile.new(
    account: account, birthday: "1998-0#{index}-0#{index}", sex: 1
    connection_email: "connection_email#{index}@exa.com", self_introduction: 'self_introduction'
  )
  accounts_profile.save!

  if account.email == 'admin@qlan-ac.jp'
    AdminAccount.create!(
      name: "admin_account", account: account
    )
  end
end
