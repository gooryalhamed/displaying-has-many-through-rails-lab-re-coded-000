json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :department, :no--test-framework
  json.url doctor_url(doctor, format: :json)
end
