
--
-- Base de datos: `blogbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(3) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `autor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `contenido` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `titulo`, `autor`, `fecha`, `contenido`) VALUES
(1, 'Una innovadora mano robótica', 'Nature Communications', '2023-12-21', 'Un equipo de investigadores coreanos ha publicado recientemente un artículo en la revista Nature Communications en el que muestra uno de los modelos de mano robótica más avanzados hasta le fecha. La clave reside no tanto en su fuerza, sino en su delicadeza. Por supuesto, los robots se han utilizado en plantas industriales desde mediados del siglo XX.'),
(2, 'Día Mundial de la Radio', 'EDERNE FRONTELA', '2023-12-21', 'Cada 13 de febrero, desde 1946, se celebra el Día Mundial de la Radio. Una fecha escogida coincide con la primera emisión de Radio ONU.'),
(3, 'Novedades de Samsung', 'Samsung', '2023-12-21', 'Este es un teléfono que va a por todas en fotografía, potencia y productividad. Cuenta con una gran pantalla de 6,8 pulgadas de tipo AMOLED hasta 120Hz y resolución QHD+, es decir, enorme y que ofrece una experiencia bastante superior a la del ordenador portátil promedio.'),
(4, 'Metaverso de Zuckerberg', 'Facebook', '2023-12-21', 'El metaverso es el futuro de Meta. Así lo ha dejado claro Mark Zuckerberg por activa y por pasiva durante los últimos meses. Ahora la tecnológica ha conseguido que sus aplicaciones de Realidad Virtual creadas con el objetivo de que los usuarios socialicen, Horizon Worlds, y asistan a conciertos y eventos en vivo, Horizon Venues, hayan alcanzado, en total, los 300.000 usuarios.'),
(5, 'Gigafábrica de Tesla en Alemania', 'Tesla', '2023-12-21', 'La apertura de la planta pone fin a un largo proceso de dos años de autorizaciones y obras en los que Tesla tuvo que superar varios enredos administrativos y legales, incluyendo quejas de parte de la población por el impacto ambiental que tendrá la fábrica.'),
(6, 'Ford Raptor', 'Ford', '2022-12-27', 'La nueva generación tiene adecuaciones pensadas en mejorar su desempeño, Ofrece mayor control al circular a mayor velocidad por caminos de terracería y en mal estado.Las formas generales no cambian sin embargo sus líneas se han adecuado para ponerla al día y mantenerla competente en el mercado.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

