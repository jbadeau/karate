function transform(template, data) {
	var st = karate.call('classpath:st.js', JSON);

	// check how to convert ags to json with karate
	var jsonTemplate = JSON.parse(karate.pretty(template));
	var jsonData = JSON.parse(karate.pretty(data));

	return JSON.select(jsonData)
	.transformWith(jsonTemplate)
	.root();
}