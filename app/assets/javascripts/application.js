// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require_tree .
//= require masonry/jquery.masonry
//= require masonry/jquery.imagesloaded.min
//= require turbolinks

	//LeanModal
	$(document).ready( function() {
		$("a[rel*=leanModal]").leanModal({ top : 200, overlay : 0.8, closeButton: ".modal_close"});
	}); 
	
	//Masonry
	$(function() {
        var $container = $('#masonry-container');
        $container.imagesLoaded(function() {
            $container.masonry({"isFitWidth": true});
        });
    });
	
	//Divbox
	$(function() {
		$('.divbox').divbox({
			width: 300,
			height: 300,
			resize_large_image: true
		});
	});
	