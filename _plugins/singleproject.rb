module SingleProject
  def singleprojectfilter(input, title,  excerpt, url, text, backgroundclass, alignment)
  "<div class='#{backgroundclass}'>" + "<div class='info#{alignment}'>" + "<h1 class='projecttitle'>#{title}</h1>" + "<p class='excerpt'>#{excerpt}</p>" + "<p class='more'><a class='findout' target='_blank' href='#{url}'>#{text}</a></p>" + "</div>" + "</div>"
  end
end

Liquid::Template.register_filter(SingleProject)