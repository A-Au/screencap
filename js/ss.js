var page = require('webpage').create();
var system = require('system');
var args = system.args;

var url = args[1];
var out = args[2];

if (!!args[3] && !!args[4]) {
	page.viewportSize = { width: args[3], height: args[4] };
} else if (!!args[3]) {
	page.userAgent = args[3]
}
if (!!args[5]) {
	page.userAgent = args[5];
}
page.open(url, function() {
	page.render(out);
	phantom.exit();
 });