CREATE TABLE `processed_weather` (
  `id` integer PRIMARY KEY,
  `city` varchar(255),
  `temperature` numeric,
  `humidity` integer,
  `wind_speed` numeric,
  `conditions` varchar(255),
  `feels_like` numeric,
  `temp_category` varchar(255),
  `recorded_at` timestamp
);

CREATE TABLE `weather_records` (
  `id` integer PRIMARY KEY,
  `city` varchar(255),
  `temperature` numeric,
  `humidity` integer,
  `wind_speed` numeric,
  `conditions` varchar(255),
  `recorded_at` timestamp
);
