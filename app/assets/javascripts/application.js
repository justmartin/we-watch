// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require masonry/jquery.masonry
//= require_tree .

$(document).ready(function() {

	var favoriteMovies = $(".favorite-movie")
	var watchedMovies = $(".watched-movie")

	$(".favorite-movies").empty()
	$(".favorite-movies").append(favoriteMovies)

	$(".watched-movies").empty()
	$(".watched-movies").append(watchedMovies)

  $("#favorites-container").imagesLoaded(function() {
    $("#favorites-container").masonry({
        itemSelector: '.item',
        columnWidth: 70
    });
  });

  $("#watched-container").imagesLoaded(function() {
    $("#watched-container").masonry({
        itemSelector: '.item',
        columnWidth: 70
    });
  });

  $("#results-container").imagesLoaded(function() {
    $("#results-container").masonry({
        itemSelector: '.item',
        columnWidth: 70
    });
  });
})