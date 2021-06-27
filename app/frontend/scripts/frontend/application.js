import bulmaCarousel from 'bulma-carousel'

document.addEventListener('turbolinks:load', () => {
  let element = document.querySelector('#carousel')
  if (element) {
    bulmaCarousel.attach('#carousel', {
      slidesToScroll: 1,
      slidesToShow: 3,       // 一次三張
      infinite: true,        // 無限捲軸
      autoplay: true         // 自動播放
    })
  }
})