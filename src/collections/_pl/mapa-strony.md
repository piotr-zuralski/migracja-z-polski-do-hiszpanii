---
date: 2019-05-26 11:34
use:
  - pages
  - posts
published: true
slug: mapa-strony
ref: sitemap
---

# Mapa strony

{% comment %}
  {{ data | jsonify | escape }}
  {{ site.pages | jsonify | escape }}
  {{ site.posts | jsonify | escape }}

  {% for items in data %}
      {% if items %}
          {% for item in items %}
              [{{ item.title }}]: {{ item.url }} 
              <a href="{{ post.url }}">{{ post.title }}</a>
          {% endfor %}
      {% endif %}
  {% endfor %}

  {% for post in site.posts %}
  * <a href="{{ post.url }}" title="{{ post.title | escape }}">{{ post.title }}</a>
{% endfor %}
{% endcomment %}

{% assign pages = site.pages | compact %}
{% assign posts = site.posts | compact %}
{% assign everything = pages | concat: posts | sort: "title" %}

{% for item in everything %} 
{% if item.title != nil and item.url != page.url and item.url != "/404.html" and item.url != "/en/404.html" and item.url != "/pl/404.html" %}
  * <a href="{{ item.url }}" title="{{ item.title | escape  }}">{{ item.title }}</a>
{% endif %}
{% endfor %}
