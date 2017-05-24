# frozen_string_literal: true
WaterQualityDepartment.find_or_create_by(code: 'LAPH') do |dept|
  dept.name = 'Los Angeles County Department of Public Health'
  dept.url = 'http://www.publichealth.lacounty.gov/phcommon/public/eh/water_quality/beach_grades.cfm'
end

spots = [
  {
    name: 'County Line',
    lat: 34.051,
    lon: -118.964,
    surfline_id: 4203,
    msw_id: 277,
    spitcast_id: 207,
  },
  {
    name: 'Leo Carillo',
    lat: 34.043762,
    lon: -118.932943,
    surfline_id: 4953,
    msw_id: 2642,
  },
  {
    name: 'Ocean Beach (SF)',
    lat: 37.768256511796238,
    lon: -122.51347658831379,
    surfline_id: 4127,
    msw_id: 255,
    spitcast_id: 114
  },
  {
    name: 'Pleasure Point',
    lat: 36.954087622045307,
    lon: -121.9716900628907,
    surfline_id: 4190,
    msw_id: 644,
    spitcast_id: 1
  },
  {
    name: 'Zeros',
    lat: 34.041956,
    lon: -118.91593,
    msw_id: 2643,
  },
  {
    name: 'Zuma Beach',
    lat: 34.01515759618465,
    lon: -118.8236361547595,
    surfline_id: 4949,
    msw_id: 853,
    spitcast_id: 206,
  },
  {
    name: 'Point Dume',
    lat: 34.0016731994772,
    lon: -118.804558744648,
    surfline_id: 4947,
    msw_id: 2610,
  },
  {
    name: 'Malibu',
    lat: 34.033415,
    lon: -118.677652,
    surfline_id: 4209,
    msw_id: 4204,
    spitcast_id: 205,
  },
  {
    name: 'Topanga',
    lat: 34.038649057421,
    lon: -118.5759544372,
    surfline_id: 4210,
    msw_id: 279,
    spitcast_id: 388,
  },
  {
    name: 'Sunset Blvd',
    lat: 34.03789812960242,
    lon: -118.5535631839145,
    surfline_id: 4883,
    msw_id: 3673,
  },
  {
    name: 'Venice Breakwater',
    lat: 33.983161270783711,
    lon: -118.4742634651619,
    surfline_id: 4211,
    msw_id: 2611,
    spitcast_id: 204,
  },
  {
    name: 'El Porto',
    lat: 33.89859255329511,
    lon: -118.4208669620573,
    surfline_id: 4900,
    msw_id: 2677,
    spitcast_id: 402,
  },
  {
    name: 'Manhattan Beach',
    lat: 33.87963506431794,
    lon: -118.4110175106966,
    surfline_id: 4901,
    msw_id: 281,
    spitcast_id: 203,
  },
  {
    name: 'Hermosa Beach',
    lat: 33.87201368173932,
    lon: -118.4075151286262,
    surfline_id: 4902,
    msw_id: 2607,
    spitcast_id: 202,
  },
  {
    name: 'Redondo Breakwall',
    lat: 33.85044519861206,
    lon: -118.4004837749971,
    surfline_id: 4912,
    msw_id: 4208,
  },
  {
    name: 'Torrance Beach/Haggertys',
    lat: 33.80930828074364,
    lon: -118.3933198342649,
    surfline_id: 4910,
    msw_id: 2604,
    spitcast_id: 200,
  },
  {
    name: 'Palos Verdes Cove',
    lat: 33.79294656286144,
    lon: -118.4070316699825,
    surfline_id: 4936,
    msw_id: 4207,
  },
  {
    name: 'Lunada Bay',
    lat: 33.77209986806257,
    lon: -118.4268428476672,
    surfline_id: 4935,
    msw_id: 283,
  },
]

spots.each do |spot|
  Spot.find_or_create_by(surfline_id: spot[:surfline_id], msw_id: spot[:msw_id], spitcast_id: spot[:spitcast_id]) do |new_spot|
    new_spot.name = spot[:name]
    new_spot.lat = spot[:lat]
    new_spot.lon = spot[:lon]
  end
end
