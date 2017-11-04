---
layout: page
title: "Hi, I'm Rahul"
subtitle: Data Scientist / Statistical ML Enthusiast
use-site-title: true
meta-title: "Rahul Raghatate - Data Scientist"
css: "/css/index.css"
---


<div class="list-filters">
  <a href="/" class="list-filter filter-selected">All Posts</a>
  <a href="/r" class="list-filter">R</a>
  <a href="/python" class="list-filter">Python</a>
  <a href="/other" class="list-filter">Other</a>
</div>


<div class="posts-list">
  {% for post in site.tags.R %}
  <article>
    <a class="post-preview" href="{{ post.url | prepend: site.baseurl }}">
	    <h2 class="post-title">{{ post.title }}</h2>
	
	    {% if post.subtitle %}
	    <h3 class="post-subtitle">
	      {{ post.subtitle }}
	    </h3>
	    {% endif %}
      <p class="post-meta">
        Posted on {{ post.date | date: "%B %-d, %Y" }}
      </p>

      <div class="post-entry">
        {{ post.content | truncatewords: 50 | strip_html | xml_escape}}
        <span href="{{ post.url | prepend: site.baseurl }}" class="post-read-more">[Read&nbsp;More]</span>
      </div>
    </a>  
   </article>
  {% endfor %}
</div>
