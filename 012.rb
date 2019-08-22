members = [
  {:name => "鈴木　一郎", :age => 34, :address => "東京都"},
  {:name => "山田　花子", :age => 25, :address => "千葉県"},
  {:name => "田中　次郎", :age => 19, :address => "埼玉県"}
]

def search(members, key, query)
  members.each do |member|
    if query =~ member[key]
      return member
    end
  end
end

p search(members, :name, /山田　花子/)

