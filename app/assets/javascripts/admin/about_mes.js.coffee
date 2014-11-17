# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "change", ".btn-file :file", ->
  input = $(this)
  numFiles = (if input.get(0).files then input.get(0).files.length else 1)
  label = input.val().replace(/\\/g, "/").replace(/.*\//, "")
  input.parent().parent().parent().find(".file-input").val(label)
  return


