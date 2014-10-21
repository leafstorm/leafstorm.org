require 'builder'

def icon (name, title=nil, classes='')
  if name.is_a? Symbol
    name = name.to_s.gsub('_', '-')
    classes = "fa fa-#{name} fa-fw #{classes}"
    content = ""
  else
    classes = "fa fa-fw #{classes}"
    content = name
  end

  if title
    "<i class='#{classes}' title='#{title}'>#{content}</i>"
  else
    "<i class='#{classes}'>#{content}</i>"
  end
end


def licon (name, title=nil, classes='')
  icon(name, title, 'fa-li ' + classes)
end


def main_navbar
  list = Builder::XmlMarkup.new
  root = @items['/']
  here = @item.identifier

  list_attributes = {:class => 'nav'}

  list.ul list_attributes do
    write_navbar_li(list, root, here == '/')

    root.child_pages.each do |page|
      if here.start_with?(page.identifier)
        children = page.child_pages
        if children.length > 0
          write_navbar_li(list, page, true) do
            list.ul list_attributes do
              children.each do |child|
                write_navbar_li(list, child, here.start_with?(child.identifier))
              end
            end
          end
        else
          write_navbar_li(list, page, true)
        end
      else
        write_navbar_li(list, page, false)
      end
    end
  end

  list.target!
end


def write_navbar_li (list, item, active = false)
  attributes = active ? {:class => 'active'} : {}
  link = item[:link] ? item[:link] : item.path

  list.li attributes do
    list.a :href => link do
      list << icon(item[:navbar_icon]) if item[:navbar_icon]
      list.text! item[:navbar_title]
    end

    yield if block_given?
  end
end

