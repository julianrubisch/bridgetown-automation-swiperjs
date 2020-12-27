say_status "SwiperJS", "Adding the swiper yarn package", :green
run "yarn add swiper"

navigation = yes? "Use Navigation module?"
pagination = yes? "Use Pagination module?"

modules = "#{}"
swiper_import = "import Swiper #{modules} from 'swiper'"

say_status "SwiperJS", "Writing the Swiper config to index.js"
javascript_import do
  <<~JS
    import Swiper, { Navigation, Pagination } from 'swiper'
    // import Swiper styles
    import 'swiper/swiper-bundle.css'

    Swiper.use([Navigation, Pagination])
  JS
end

style_file = File.join('frontend', 'styles', 'index.scss')
css_vars = <<~CSS
  \n
  //--swiper-pagination-color: ;
  //--swiper-navigation-color: ;
  //--swiper-theme-color: ;
CSS

insert_into_file(style_file, css_vars, after: /body\s*{/)
