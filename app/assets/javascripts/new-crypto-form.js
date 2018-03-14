$(document).on('turbolinks:load', function() {
  $('select#new-crypto').select2({
    placeholder: "Select a cryptocurrency",
    allowClear: true
  });
});