// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// このファイルは、このディレクトリにある他のファイルとともに、Webpackによって自動的にコンパイルされます。実際のアプリケーションロジックをapp/javascript内の関連する構造に配置し、これらのパックファイルのみを使用してそのコードを参照することで、コンパイルされます。

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// 追加
require("jquery")
require("jquery/submit_food_image")
require("packs/close_message")
require("packs/search_meal_time_form")
require("packs/meal_record_pictures_preview")
// datetimepicker用
require("moment/locale/ja")
require("tempusdominus-bootstrap-4")

import 'bootstrap';
import '../stylesheets/application';

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
const images = require.context('../images', true)
const imagePath = (name) => images(name, true)
