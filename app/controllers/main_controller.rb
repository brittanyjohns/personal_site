class MainController < ApplicationController
  def index
  end

  def download_resume
    filepath = Rails.root.join('app', 'pdfs', 'BrittanyJohns_Resume_2024.pdf')
    stat = File::stat(filepath)
    send_file(filepath, :filename => 'BrittanyJohns_Resume_2024.pdf', :length => stat.size)
  end
end
