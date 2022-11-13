json.array! @recommendations do |recommendation|
  json.id recommendation.id
  json.title recommendation.title
end