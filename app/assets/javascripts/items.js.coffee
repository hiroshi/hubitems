# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  template = $("#items .item.template").first().clone().removeClass("template")
  append_item = (item) -> $("#items").append(template.clone().html(item.content))
  # index
  $.getJSON "/items", (items) -> append_item(item) for item in items
  # create
  $("form.new_item").live "ajax:success", (event, item) -> append_item(item)
