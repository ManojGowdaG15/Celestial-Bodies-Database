-- Celestial Bodies Database
-- freeCodeCamp Relational Databases project
-- Recreate with: psql -U postgres -f universe.sql

DROP DATABASE IF EXISTS universe;
CREATE DATABASE universe;
\connect universe

CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    galaxy_type TEXT NOT NULL,
    age_in_millions_of_years INT,
    distance_from_earth NUMERIC,
    has_life BOOLEAN
);

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    galaxy_id INT NOT NULL REFERENCES galaxy(galaxy_id),
    temperature INT,
    is_spherical BOOLEAN,
    description TEXT
);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    star_id INT NOT NULL REFERENCES star(star_id),
    planet_type TEXT,
    distance_from_star NUMERIC,
    has_life BOOLEAN
);

CREATE TABLE moon_types (
    moon_types_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    planet_id INT NOT NULL REFERENCES planet(planet_id),
    radius INT,
    is_spherical BOOLEAN,
    description TEXT
);

INSERT INTO galaxy (name, galaxy_type, age_in_millions_of_years, distance_from_earth, has_life)
VALUES
('Milky Way', 'Spiral', 13600, 0, TRUE),
('Andromeda', 'Spiral', 10000, 2537000, FALSE),
('Triangulum', 'Spiral', 12000, 2730000, FALSE),
('Whirlpool', 'Spiral', 13000, 23000000, FALSE),
('Sombrero', 'Spiral', 13000, 29350000, FALSE),
('Messier 87', 'Elliptical', 13000, 53500000, FALSE);

INSERT INTO star (name, galaxy_id, temperature, is_spherical, description)
VALUES
('Sun', 1, 5500, TRUE, 'The star at the center of our solar system'),
('Sirius', 1, 9940, TRUE, 'Brightest star in the night sky'),
('Proxima Centauri', 1, 3042, TRUE, 'Closest known star to the Sun'),
('Betelgeuse', 1, 3500, TRUE, 'Red supergiant star'),
('Vega', 1, 9602, TRUE, 'Bright star in the Lyra constellation'),
('Rigel', 1, 11000, TRUE, 'Blue supergiant star');

INSERT INTO planet (name, star_id, planet_type, distance_from_star, has_life)
VALUES
('Mercury', 1, 'Terrestrial', 57.9, FALSE),
('Venus', 1, 'Terrestrial', 108.2, FALSE),
('Earth', 1, 'Terrestrial', 149.6, TRUE),
('Mars', 1, 'Terrestrial', 227.9, FALSE),
('Jupiter', 1, 'Gas Giant', 778.5, FALSE),
('Saturn', 1, 'Gas Giant', 1434, FALSE),
('Uranus', 1, 'Ice Giant', 2871, FALSE),
('Neptune', 1, 'Ice Giant', 4495, FALSE),
('Sirius b', 2, 'Hypothetical', 0.0, FALSE),
('Proxima b', 3, 'Terrestrial', 0.05, FALSE),
('Betelgeuse b', 4, 'Hypothetical', 1.0, FALSE),
('Vega b', 5, 'Hypothetical', 1.0, FALSE);

INSERT INTO moon_types (name, description)
VALUES
('Regular', 'Moon with a regular orbit'),
('Irregular', 'Moon with an unusual orbit'),
('Captured', 'Moon captured by planetary gravity');

INSERT INTO moon (name, planet_id, radius, is_spherical, description)
VALUES
('Moon', 3, 1737, TRUE, 'Earth natural satellite'),
('Phobos', 4, 11, FALSE, 'Inner moon of Mars'),
('Deimos', 4, 6, FALSE, 'Outer moon of Mars'),
('Io', 5, 1821, TRUE, 'Volcanically active moon'),
('Europa', 5, 1560, TRUE, 'Icy moon of Jupiter'),
('Ganymede', 5, 2634, TRUE, 'Largest moon in the solar system'),
('Callisto', 5, 2410, TRUE, 'Heavily cratered moon'),
('Amalthea', 5, 83, FALSE, 'Small inner moon of Jupiter'),
('Himalia', 5, 85, FALSE, 'Irregular moon of Jupiter'),
('Mimas', 6, 198, TRUE, 'Small icy moon of Saturn'),
('Enceladus', 6, 252, TRUE, 'Icy moon with water geysers'),
('Tethys', 6, 531, TRUE, 'Moon of Saturn'),
('Dione', 6, 561, TRUE, 'Icy moon of Saturn'),
('Rhea', 6, 763, TRUE, 'Second largest moon of Saturn'),
('Titan', 6, 2574, TRUE, 'Moon with a thick atmosphere'),
('Iapetus', 6, 734, TRUE, 'Two-toned moon of Saturn'),
('Miranda', 7, 236, TRUE, 'Moon of Uranus'),
('Ariel', 7, 579, TRUE, 'Moon of Uranus'),
('Umbriel', 7, 585, TRUE, 'Dark moon of Uranus'),
('Titania', 7, 788, TRUE, 'Largest moon of Uranus'),
('Oberon', 7, 761, TRUE, 'Outer major moon of Uranus'),
('Triton', 8, 1353, TRUE, 'Largest moon of Neptune');
