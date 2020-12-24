---
published: true
date: 2020-12-17 11:34
slug: mapa-strony
ref: sitemap
permalink: /pl/mapa-strony.html

redirect_from:
  - /mapa-strony

sitemap:
  changefreq: daily
  priority: 0.8

breadcrumbs:
  - url: page.url
    title: page.title
    type: WebPage
---

# Mapa strony

{% assign pages = site.pages | sort: "title" %}
{% assign posts = site.posts | sort: "title" %}

{% for item in pages %} 
{% if item.title != nil and item.url != page.url and item.url != "/404.html" %}
  * <a href="{{ item.url }}" title="{{ item.title | escape }}" lang="{{ item.lang }}">{{ item.title }}</a>
{% endif %}
{% endfor %}


{% for item in posts %} 
{% if item.title != nil and item.url != page.url and item.url != "/404.html" %}
  * <a href="{{ item.url }}" title="{{ item.title | escape  }}" lang="{{ item.lang }}">{{ item.title }}</a>
{% endif %}
{% endfor %}

{% include _autolink_pl.md %}