---
date: 2020-12-17 11:34
published: true
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

{% assign collections = site.collections | where_exp:'collection','collection.output != false' %}
{% assign posts = site.posts | where_exp:'post','post.sitemap != false' %}
{% assign pages = site.html_pages | where_exp:'page','page.sitemap != false' | where_exp:'page','page.url != "/404.html"' %}
{% assign files = page.static_files | where_exp:'page','page.sitemap != false' | where_exp:'page','page.name != "404.html"' %}

{% assign _everything = pages | concat: posts | sort: "title" %}

{% for collection in collections %}
    {% assign docs = collection.docs | where_exp:'doc','doc.sitemap != false' %}
    {% assign _everything = _everything | concat: docs | sort: "title" %}
{% endfor %}

{% for item in _everything %} 
  * <a href="{{ item.url | replace:'/index.html','/' | absolute_url }}" title="{{ item.title | escape  }}" lang="{{ item.lang }}">{{ item.title }}</a>
{% endfor %}

{% include _autolink_pl.md %}