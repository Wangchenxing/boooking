module ApplicationHelper
	def full_title(page_title)
		base_title = "会议预约管理系统"
		if page_title.empty?
			base_title.empty?
		else
			"#{base_title} | #{page_title}"
		end
	end
end
