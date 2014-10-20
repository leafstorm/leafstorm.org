class Nanoc::Item
  def depth
    identifier.count '/' - 1
  end

  def child_pages
    @site[:navbar_children][identifier]
  end
end


def convert_timestamps
  @items.each do |i|
    ctime = i[:created_at]
    i[:created_at] = Time.parse(ctime) if ctime.is_a?(String)

    utime = i[:updated_at]
    i[:updated_at] = Time.parse(utime) if utime.is_a?(String)
  end
end


def update_navbar_metadata
  @items.each do |i|
    # Rule: Any item with a :title is a content page that needs a link.
    next unless i[:title]

    # Set the navbar_title and navbar_rank entries.
    i[:navbar_title] = i[:title] unless i[:navbar_title]
    i[:navbar_rank] = 16 unless i[:navbar_rank]

    # Normalize the navbar_icon.
    icon = i[:navbar_icon]
    if icon.is_a?(String) && icon =~ /^[a-z0-9_]+$/
      i[:navbar_icon] = icon.to_sym
    end
  end

  # Initialize the list of child items.
  @site[:navbar_children] = Hash.new do |hash, ident|
    item = @items[ident]
    if item
      children = item.children.select { |item| item[:title] }
      children.sort_by! { |item| [item[:navbar_rank], item[:navbar_title]] }
      hash[ident] = children
    else
      nil
    end
  end
end

