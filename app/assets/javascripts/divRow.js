function divRow() {
  $("div[data-link]").on('click', function() {
    window.location = $(this).attr('data-link');
  });
};
