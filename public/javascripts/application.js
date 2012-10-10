$(document).ready(function() {
	$('table tbody tr td p span.freespace').parent().parent().css({
		'background': '#9A9A9A'
	});

	$('table tbody tr td').bind('click', function(event) {
		$(this).css({
			'background': '#9A9A9A'
		});
	});
});
