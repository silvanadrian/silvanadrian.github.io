module PostMore
  def projectmorefilter(input, title,  excerpt, url, text, backgroundclass, color, alignment)
    "<div class='#{backgroundclass}'>" + "<div class='info#{alignment} #{color}'>" + "<h1 class='projecttitle'>#{title}</h1>" + "<p class='excerpt'>#{excerpt}</p>" + "<p class='more'><a class='findout' href='#{url}'>#{text}</a></p>" + "</div>" + "</div>"
  end
end

Liquid::Template.register_filter(PostMore)