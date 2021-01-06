---
published: true
date: 2021-01-06 22:03:00 +0100
last_modified_at: 2021-01-06 22:03:00 +0100
checked_at: 2021-01-06 22:03:00 +0100
slug: data-i-godzina
ref: data-i-godzina
permalink: /pl/data-i-godzina.html
lang: pl-PL
title: Data i godzina
---

# Data i godzina

W momencie tworzenia i pisania ({{ page.last_modified_at }}), Polska oraz Hiszpania mają tą samą stefę czasową, czyli tą samą godzinę.

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js" integrity="sha512-LGXaggshOkD/at6PFNcp2V2unf9LzFq6LE+sChH7ceMTDP0g2kn6Vxwgg7wkPP7AAtX+lmPqPdxB47A0Nz0cMQ==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment-timezone/0.5.32/moment-timezone-with-data.min.js" integrity="sha512-YfIXbIiAfl/i9LO4PUETYxh72veiVE9ixWItTOx267LiYsWVAHuTO13jEwiEFAHrBtH87a47+sehqUMX3L3i2w==" crossorigin="anonymous"></script>


Czas w Polsce: <span id="datetime-poland"></span>

Czas w Hiszpanii: <span id="datetime-spain"></span>


<script>
  (function() {
    jQuery(document).ready(function() {

      moment.locale('en');
      let now    = moment();
      let poland = now.clone().tz("Europe/Warsaw");
      let spain  = now.clone().tz("Europe/Madrid");
      const dateTimeFormat = 'YYYY-MM-DDTHH:mm:ss ([GMT]Z (z))';

      jQuery('#datetime-poland').text(poland.format(dateTimeFormat));
      jQuery('#datetime-spain').text(spain.format(dateTimeFormat));

      console.log(
        moment.locale()
      );
    }); 
  })();
</script>



{% include _autolink_pl.md %}