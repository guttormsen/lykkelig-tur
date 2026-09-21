-- Rollene byttet navn da appen ble avidentifisert: de to heter «forfatter» og
-- «leser» nå. Radene i oppsett bærer rollenavnet i nøkkelen, så koden hun har
-- valgt selv – og engangslenka hennes – må flyttes med, ellers slutter de å
-- gjelde og hun står utenfor sin egen app.
UPDATE oppsett SET nokkel = 'kode_forfatter'  WHERE nokkel = 'kode_lykke';
UPDATE oppsett SET nokkel = 'lenke_forfatter' WHERE nokkel = 'lenke_lykke';

-- Meldinger, reaksjoner og ønsker bærer også rollen. Tabellene er tomme nå,
-- men setningene hører med til migrasjonen, ikke til hukommelsen.
UPDATE meldinger  SET fra      = 'forfatter' WHERE fra      = 'lykke';
UPDATE meldinger  SET fra      = 'leser'     WHERE fra      = 'mathias';
UPDATE reaksjoner SET hvem     = 'forfatter' WHERE hvem     = 'lykke';
UPDATE reaksjoner SET hvem     = 'leser'     WHERE hvem     = 'mathias';
UPDATE onsker     SET laget_av = 'forfatter' WHERE laget_av = 'lykke';
UPDATE onsker     SET laget_av = 'leser'     WHERE laget_av = 'mathias';
UPDATE onsker     SET gjort_av = 'forfatter' WHERE gjort_av = 'lykke';
UPDATE onsker     SET gjort_av = 'leser'     WHERE gjort_av = 'mathias';
