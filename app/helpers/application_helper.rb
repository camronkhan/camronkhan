module ApplicationHelper
	# Custom redcarpet renderer utilizing coderay  https://github.com/vmg/redcarpet#and-you-can-even-cook-your-own
	class CodeRayify < Redcarpet::Render::HTML
		def block_code(code, language)
			CodeRay.scan(code, language).div
			#CodeRay.scan(code, language).div(line_numbers: :table)  replace above line with this one to enable line numbering
		end
	end

	# Helper method to apply markdown styling to html
	def markdown(text)
		coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)
		options = {
	    	fenced_code_blocks: 			true,
	    	disable_indented_code_blocks: 	true,
	    	no_intra_emphasis: 				true,
	    	autolink: 						true,
	    	strikethrough: 					true,
	    	superscript: 					true,
	    	lax_html_blocks: 				true
	  }
	  markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
	  markdown_to_html.render(text).html_safe
	end

	 # Returns the full title on a per-page basis.
	def full_title(page_title = '')
		base_title = "Camron Khan"
		if page_title.blank?
		  base_title
		else
		  page_title + " | " + base_title
		end
	end
end
