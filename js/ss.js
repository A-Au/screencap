var page = require('webpage').create();
var args = system.args;

var url = args[0];
var out = args[1];

if (!!args[2] && !!args[3]) {
	page.viewportSize = { width: args[2], height: args[3] };
}
page.open(url, function() {
	page.render(out);
	phantom.exit();
 });