---
title: "{{ replace .Name "-" " " | title }}"
date: {{ now.Format (default "2006-01-02 15:04:05" .Site.Params.dateFmt) }}

description: >-
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At volutpat diam ut venenatis tellus.

categories:
  - uncategorized
series:
  - unseried
tags:
  - untagged

draft: true
---

# Main Header

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At volutpat diam ut venenatis tellus. Orci a scelerisque purus semper eget duis. Pharetra convallis posuere morbi leo urna molestie at elementum eu. Ultrices vitae auctor eu augue ut lectus arcu. Nulla facilisi etiam dignissim diam. Ut placerat orci nulla pellentesque dignissim. In dictum non consectetur a erat nam. Eget dolor morbi non arcu risus quis varius quam. Ipsum consequat nisl vel pretium. Tincidunt augue interdum velit euismod in pellentesque massa placerat. Elit eget gravida cum sociis natoque penatibus et magnis dis. Sed euismod nisi porta lorem mollis aliquam ut porttitor. Non blandit massa enim nec. Quisque egestas diam in arcu cursus euismod quis viverra. Odio euismod lacinia at quis risus. Aliquet eget sit amet tellus cras adipiscing. Elementum pulvinar etiam non quam. Id interdum velit laoreet id.

### Some citate: 

> Don't communicate by sharing memory, share memory by communicating.<br>
> — <cite>Rob Pike[^1]</cite>

[^1]: The above quote is excerpted from Rob Pike's [talk](https://www.youtube.com/watch?v=PAAkCSZUG1c) during Gopherfest, November 18, 2015.

### Code: 
{{< highlight python >}}
def function():
    return something()
{{< /highlight >}}


### Hugo cheatsheet:

Hugo ships with several [Built-in Shortcodes](https://gohugo.io/content-management/shortcodes/#use-hugos-built-in-shortcodes).

They should be placed in double `{}` to work.


   Type | Code
--------|------
  Gist  | `< gist spf13 7896402 "img.html" >`
 Instagram | `< instagram BWNjjyYFxVx >`
 Twitt | `< tweet user="SanDiegoZoo" id="1453110110599868418" >`
 Youtube | `< youtube w7Ft2ymGmfc >`