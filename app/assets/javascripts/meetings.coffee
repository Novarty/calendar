# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", ->
   $('#meeting_start_time').datepicker({
    dateFormat: 'dd-mm-yy'})

   $('#meeting_end_time').datepicker({
   dateFormat: 'dd-mm-yy'})