function Link(el)
   -- Check if the link ends with .md
   if el.target:match("%.md$") then
      -- Replace .md with .html
      el.target = el.target:gsub("%.md$", ".html")
   end
   return el
end
