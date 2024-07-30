
SELECT * FROM paciente WHERE nombre LIKE 'jesus%'
SELECT * FROM paciente WHERE apellido LIKE '%contre%'
--El signo % nos ayuda a señalar los resultados parecido que puede solo ser completados o necesiten otro caracter
--Ojo tiene que estar completo de manera adecuada, ejemplo por poner Kontre% no te va a salir nada si lo que estabas buscando era 'Contreras'
