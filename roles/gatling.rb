name "gatling"
description "This is the role for gatling instances"
run_list "recipe[gatling]"
default_attributes(
	:gatling => {
		:download_url => "https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/2.1.4/gatling-charts-highcharts-bundle-2.1.4-bundle.zip",
		:version => "2.1.4"
	}
)