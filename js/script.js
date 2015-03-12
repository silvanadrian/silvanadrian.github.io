$(document).ready(function() {
	$(".fancybox").fancybox({
		openEffect	: 'none',
		closeEffect	: 'none',
        padding : 0
	});
    
    $('#photography').justifiedGallery({
        rowHeight : 150,
        lastRow : 'justify',
        margins : 5
    });
});