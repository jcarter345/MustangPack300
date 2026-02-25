---
title: "{{ replace .File.ContentBaseName "-" " " | title }}"
date: {{ .Date }}
draft: false
description: ""
categories: []
tags: []
# Optional: add a featured image path, e.g. /images/my-event.jpg
# image: ""
---

Write your news post here. You can use **Markdown** formatting.

<!--more-->

Everything after the `<!--more-->` comment is hidden on the home page summary — only the text above it is shown as the excerpt.
