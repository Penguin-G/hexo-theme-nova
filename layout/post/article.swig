<article class="article post" itemscope="itemscope" itemtype="http://schema.org/Article">
  <header class="article-header">
    <div class="page-path"><span class="post-category">{{ page_path(post)}}</span></div>
    <div class="divider"></div>
      {%- if is_post() %}
      <h1 class="article-title" itemprop="name">{{ post.title }}</h1>
      {%- else %}
      <h1>
        <a href="{{ url_for_lang(post.path) }}" class="article-title" itemprop="name headline">{{ post.title }}</a>
      </h1>
      {%- endif %}
    <div class="post-header clearfix">
      <span class="post-date"><span class="hidden-xs icon nova-calendar">{{__('page.written_on')}}</span>
      <time datetime="{{ date_xml(post.date) }}" itemprop="datePublished">{{ time_tag(post.date) }}</time>
      </span>
      {{ post_tags(post) }}
      <span class="post-share">
        <a href="#share" class="icon nova-share"><span class="hidden-xs">{{__('sns.share')}}</span><span class="jiathis_counter_style"></span></a>
        <a href="#comment" class="icon nova-bubbles"><span class="ds-thread-count" data-thread-key="{{page_uid()}}"></span><!-- <span class="hidden-xs">{{__('sns.comment')}}</span> --></a>
        <a href="#like" class="icon nova-heart2-full"><span class="count"></span><span class="hidden-xs">{{__('sns.like')}}</span></a>
        <a href="#" class="icon nova-eye"><span class="count"></span><span class="hidden-xs">{{__('article.views')}}</span></a>
      </span>
    </div>
    <div class="divider"></div>
  </header>
  <div class="article-content" itemprop="articleBody" id="post-content">
    {{ post.content }}
  </div>
  <footer class="article-footer">
    <time class="article-footer-updated" datetime="{{ date_xml(page.updated) }}" itemprop="dateModified">
        {{__('page.last_updated', '') }} <span class="{%- if page_new() %}red-text{%- endif %}">{{date(page.updated)}}</span>
    </time>
    {{ partial('../partial/share_jiathis_footer') }}
  </footer>
  <span itemprop="author publisher" itemscope="itemscope" itemtype="http://schema.org/Organization">
    <meta content="{{ config.url }}" itemprop="url">
    <meta content="{{__('site.title')}}" itemprop="name">
    <meta content="/image/logo.png" itemprop="logo">
  </span>
</article>
<div>
  <nav>{{ nova_paginator2({show_name: true}) }}</nav>
  {{ partial('../partial/donate') }}
  {{ partial('../partial/comment') }}
</div>
