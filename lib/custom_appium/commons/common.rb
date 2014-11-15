# coding: utf-8

module AppiumCommon

  #------------
  # save screenshot
  # -----------

  def save_screen_in(dir_path, filename)
    FileUtils.mkdir_p(dir_path) unless FileTest.exist?(dir_path)
    screenshot "#{dir_path}#{filename}.png"
  end

  def save_screen_as(filename)
    save_screen_in(SCREENSHOT_SAVE_PATH, filename)
  end

  def save_screen_with_05_as(filename)
    sleep 0.5
    save_screen_as(filename)
    sleep 0.5
  end

  def save_screen_with_1_as(filename)
    sleep 1
    save_screen_as(filename)
    sleep 1
  end

end