---
layout: null
search: exclude
sitemap: false
permalink: /search.json
---
{% assign pages = site.pages | compact %}
{% assign posts = site.posts | compact %}
{% assign everything = posts | concat: pages | sort: "date" %}
[
{% for item in everything %} {
    "title": "{{ item.title | escape }}",
    "category": "{{ item.category }}",
    "tags": "{{ item.tags | join: ', ' }}",
    "url": "{{ site.baseurl }}{{ item.url }}",
    "date": "{{ item.date }}"
} {% unless forloop.last %}, {% endunless %} {% endfor %}
]