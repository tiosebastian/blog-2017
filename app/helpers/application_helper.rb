module ApplicationHelper

class HTML < Redcarpet::Render::HTML
	include Redcarpet::Render::SmartyPants
	include Rouge::Plugins::Redcarpet
end

	def markdown(text)
		render_options = {
		  filter_html:     true,
		  hard_wrap:       true,
		  link_attributes: { rel: 'nofollow' }
		}

		renderer = HTML.new(render_options)

		extensions = {
		  autolink:            true,
		  lax_spacing:         true,
		  no_intra_emphasis:   true,
		  strikethrough:       true,
		  space_after_headers: true,
		  fenced_code_blocks:  true,
		  superscript:         true,
		  underline:           true,
		  highlight:           true,
		  footnotes:           true,
		  quote:               true,
		  tables:              true

		}
		Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe

	end
end