require 'mechanize'


class DownloadTapas
  def self.download_videos
    agent = Mechanize.new
    page = agent.get 'https://rubytapas.dpdcart.com/subscriber/content'
    form = page.forms[0]
    form.username = ARGV[0]
    form.password = ARGV[1]
    video_lib_page = form.submit
    p video_lib_page
  end
end


DownloadTapas.download_videos