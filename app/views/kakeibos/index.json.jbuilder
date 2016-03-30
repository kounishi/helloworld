json.array!(@kakeibos) do |kakeibo|
  json.extract! kakeibo, :id, :incomeitem, :incomeprice, :outcomeitem, :outcomeprice, :summary
  json.url kakeibo_url(kakeibo, format: :json)
end
