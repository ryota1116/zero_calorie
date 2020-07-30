require 'selenium-webdriver'
require 'capybara/rspec'

Capybara.configure do |config|
  # DSLオプション
  config.default_driver = :chrome
  config.javascript_driver = :chrome

  # ローカルのRack Serverを使用しない (Default: true)
  config.run_server = true
  # デフォルトのセレクターを`:css`または`:xpath`で指定する (Default: :css)
  config.default_selector = :css
  # Ajaxなどの非同期プロセスが終了するまで待機する最大秒数 (seconds, Default: 2)
  config.default_max_wait_time = 5
  # ページ上の隠れた要素を無視するかどうか (Default: true)
  config.ignore_hidden_elements = true
  # save_(page|screenshot), save_and_open_(page|screenshot)を使用した時にファイルが保存されるパス (Default: Dir.pwd)
  config.save_path = Dir.pwd
  # チェックボックスやラジオボタンが非表示の場合に関連するラベル要素をクリックするかどうか (Default: false)
  config.automatic_label_click = false
end

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  # Web通知やPush APIによる通知を無視する
  options.add_argument('disable-notifications')
  # 翻訳ツールバーを無効にする
  options.add_argument('disable-translate')
  # 拡張機能を無効にする
  options.add_argument('disable-extensions')
  # インフォバーの表示を無効にする
  options.add_argument('disable-infobars')
  # ブラウザーのサイズを指定する
  options.add_argument('window-size=1280,960')

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options)
end

# RSpec.configure do |config|
#   config.before(:each, type: :system) do
#     driven_by :selenium, using: :headless_chrome, screen_size: [1920, 1080]
#   end
# end
