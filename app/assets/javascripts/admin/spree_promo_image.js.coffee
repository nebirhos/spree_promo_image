$ ->
  $("#promotion_image_field a.remove_fields").on "click", ->
    $('#promotion_image_attributes__destroy').val(1)
    $(this).closest("form").submit()
