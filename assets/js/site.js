$(document).ready(function () {
  $('.gallery').magnificPopup({
    delegate: 'a',
    type: 'image',
    zoom: {
      enabled: true,
      duration: 300,
      easing: 'ease-in-out'
    },
    gallery:{
      enabled:true,
      preload: [1,1]
    }
  });

  $('.gallery-tiles').magnificPopup({
    delegate: 'a',
    type: 'image',
    zoom: {
      enabled: true,
      duration: 300,
      easing: 'ease-in-out'
    },
    gallery:{
      enabled:true,
      preload: [1,1]
    }
  });

  $('.post-image-full').magnificPopup({
    type:'image',
    zoom: {
      enabled: true,
      duration: 300,
      easing: 'ease-in-out'
    },
    image: {
      titleSrc: function (item) {
        var parent = item.el.parent();
        if (parent && parent.length > 0 && parent[0].lastElementChild &&
            parent[0].lastElementChild.className == "image-caption") {
          return parent[0].lastElementChild.innerHTML;
        }

        return item.el.attr('title');
      }
    }
  });
});
