module Jekyll

  class Versions < Jekyll::Generator
    priority :highest

    def generate(site)
      # Retrieve the latest version and put it in `site.data.flipper_latest.version`
      latest = site.data["flipper_versions"].last
      site.data["flipper_latest"] = latest

      # Add a `version` property to every versioned page
      # Also create aliases under /latest/ for all x.x.x pages
      site.pages.each do |page|
        parts = Pathname(page.path).each_filename.to_a

        page.data["flipper_version"] = parts[0]

        # Put navigation items for current version in page.nav_items
        page.data["nav_items"] = site.data['docs_nav_' + parts[0].gsub(/\./, '')]

        # Alias latest docs folder /x.x.x to /latest
        if parts[0] == latest["release"]
          page.data["alias"] = "/" + page.path.sub(parts[0], "latest").sub(/\..*$/, "")
          if parts[1] == "index.md"
            # the /index page
            page.data["permalink"] = "/"
            page.data["alias"] = ["/latest", "/#{latest["release"]}/index.html"]
          elsif /index\.(md|html)/.match(parts.last)
            # all other nested index pages
            # /latest/plugin-development/index/index.html -> /docs/latest/plugin-development/index.html
            page.data["alias"] = page.data["alias"].sub(/index/, "")
          end
        end
      end
    end
  end

end
