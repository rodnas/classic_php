<?php

namespace app\models;

use yii\helpers\Json;

/**
 * This is the model class for Diagrams.
 *
 * @property array $colors
 */
class Diagrams extends \yii\base\Model {

	public $configDiagram = [];

	function __construct()  {
		parent::__construct();
		$modelColors = new Colors;
/* if want full web colors
		$colorCount = $modelColors->colorBack('count','count');
		for ($i=0; $i < $colorCount; $i++) {
			$this->configDiagram['backgroundColor'][] = $modelColors->colorBack('colorId',$i)['background-color'];

		}

*/
		$this->configDiagram['backgroundColor'] = 
			Array(
//				$modelColors->colorBack('name','Black')['background-color'],
//				$modelColors->colorBack('name','White')['background-color'],
//				$modelColors->colorBack('name','Silver')['background-color'],
//				$modelColors->colorBack('name','Gray')['background-color'],
				$modelColors->colorBack('name','Maroon')['background-color'],
				$modelColors->colorBack('name','Red')['background-color'],
				$modelColors->colorBack('name','Purple')['background-color'],
				$modelColors->colorBack('name','Fuchsia')['background-color'],
				$modelColors->colorBack('name','Green')['background-color'],
				$modelColors->colorBack('name','Lime')['background-color'],
				$modelColors->colorBack('name','Olive')['background-color'],
				$modelColors->colorBack('name','Yellow')['background-color'],
				$modelColors->colorBack('name','Navy')['background-color'],
				$modelColors->colorBack('name','Blue')['background-color'],
				$modelColors->colorBack('name','Teal')['background-color'],
				$modelColors->colorBack('name','Aqua')['background-color'],
				$modelColors->colorBack('name','Orange')['background-color']
			);

	}

	/**
	* @inheritdoc
	* Make stacked diagram
	* return string
	*/
	public function diagramStacked($configDiagram) {
		if (!isset($configDiagram['type'])) { $configDiagram['type'] = 'bar'; }
		if (!isset($configDiagram['xAxesStacked'])) { $configDiagram['xAxesStacked'] = 'true'; }
		if (!isset($configDiagram['yAxesStacked'])) { $configDiagram['yAxesStacked'] = 'true'; }
		if (!isset($configDiagram['maintainAspectRatio'])) { $configDiagram['maintainAspectRatio'] = 'false'; }
		if (!isset($configDiagram['titleFontSize'])) { $configDiagram['titleFontSize'] = 16; }
		if (!isset($configDiagram['titleLineHeight'])) { $configDiagram['titleLineHeight'] = 1.2; }
		if (!isset($configDiagram['titlePadding'])) { $configDiagram['titlePadding'] = 40; }
		if (!isset($configDiagram['tooltipMode'])) { $configDiagram['tooltipMode'] = 'nearest'; }
		if (!isset($configDiagram['legendDisplay'])) { $configDiagram['legendDisplay'] = 'false'; }
		if (!isset($configDiagram['legendPosition'])) { $configDiagram['legendPosition'] = 'top'; }
		if (!isset($configDiagram['topValuePlugin'])) { $configDiagram['topValuePlugin'] = '[]'; }
		if (!isset($configDiagram['topTextyPosition'])) { $configDiagram['topTextyPosition'] = -1; }
		if (!isset($configDiagram['topValueFontSize'])) { $configDiagram['topValueFontSize'] = 10; }
		if (!isset($configDiagram['topValueView'])) { $configDiagram['topValueView'] = 0; }
		if (!isset($configDiagram['visibility'])) { $configDiagram['visibility'] = 0; }
		if (!isset($configDiagram['export'])) { $configDiagram['export'] = 0; }
		if (!isset($configDiagram['visibilityDivName'])) { $configDiagram['visibilityDivName'] = 'container'; }
		if (!isset($configDiagram['height'])) { $configDiagram['height'] = 340; }
		if (!isset($configDiagram['canvasBGColor'])) { $configDiagram['canvasBGColor'] = 'white'; }

		$diagramDraw = '';
		/** 
		 * plugin
		 * bar top value viewer
		 */
		$diagramDraw .= '
			<script>
				var topValuePlugin = {
					afterDatasetsDraw: function(chart) {
						var ctx = chart.ctx;
						var topValueView = chart.data.topValueView;
						chart.data.datasets.forEach(function(dataset, i) {
							var meta = chart.getDatasetMeta(i);
							if (!meta.hidden) {
								meta.data.forEach(function(element, index) {
									// Draw the text in black, with the specified font
									ctx.fillStyle = "#000000";
									var fontSize = '.$configDiagram['topValueFontSize'].';
									var fontStyle = "normal";
									var fontFamily = "BoschSans-Light";
									ctx.font = Chart.helpers.fontString(fontSize, fontStyle, fontFamily);
									// Just naively convert to string for now
									if (i == 0) {
										var data2String = dataset.data2[index].toString();
										var dataString = dataset.data[index].toString();
										// Make sure alignment settings are correct
										ctx.textAlign = "center";
										ctx.textBaseline = "middle";
										var padding = 5;
										var position = element.tooltipPosition();
										ctx.fillText(data2String, position.x, '.$configDiagram['topTextyPosition'].');
									}
								});
							}
						});
					}
				};
			';
			/**
			 * plugin
			 * chart background color filler
			 */
			$diagramDraw .= '
				Chart.plugins.register({
					beforeDraw: function(chartInstance) {
					  var ctx = chartInstance.chart.ctx;
					  ctx.fillStyle = "'.$configDiagram['canvasBGColor'].'";
					  ctx.fillRect(0, 0, chartInstance.chart.width, chartInstance.chart.height);
					}
				});
	  			</script>
			';

		if ($configDiagram['visibility']==1) {
			$diagramDraw .= '<div class="dia-hide-btn"><button type="button" id="reportingHoursChartButton" class="btn btn-primary chartVisible" data-chart-div="'. $configDiagram['visibilityDivName'].'" >Hide</button></div>';
		}

		if ($configDiagram['id']=='chartEmployee' && $configDiagram['unit']=='%') {
			$diagramDraw .= '
				<div class="alert alert-warning text-center '. $configDiagram['visibilityDivName'].'"  data-chart-div="'. $configDiagram['visibilityDivName'].'" role="alert">
					If no data is displayed in the column, please check the working calendar uploaded to the teams.
				</div>
			';
		}

		$diagramDraw .= '<div class="dia-container" id="'.$configDiagram['visibilityDivName'].'">
		<div class="dia-export export" data-export="'. $configDiagram['id'].'"><img src="/images/Bosch-IC-export.png" /> Export</div>
		<canvas id="'.$configDiagram['id'].'" height="'.$configDiagram['height'].'"></canvas>
		<script>';
	
		$diagramDraw .= '
			var ctx'.$configDiagram['id'].' = document.getElementById("'.$configDiagram['id'].'");';
		if (isset($configDiagram['topValueView']) && $configDiagram['topValueView']==1) {
			$topValueViewReal = 'topValueView: 1,';
		} else {
			$topValueViewReal = 'topValueView: 0,';
		}
		$diagramDraw .=	'
			var myChart = new Chart('.$configDiagram['id'].', {
				plugins: '.$configDiagram['topValuePlugin'].',
				type: "'.$configDiagram['type'].'",
				data: {
					labels: '.Json::encode($configDiagram['labels']).',
					datasets: '.Json::encode($configDiagram[$configDiagram['dataArrayName']]).',
					'.$topValueViewReal.'
				},
				options: {
					responsive: true,			
					maintainAspectRatio: false,
					layout: {
						padding: {
							left: 0,
							right: 0,
							top: 0,
							bottom: 30
						}
					},
					legend: {
						display: '.$configDiagram['legendDisplay'].',
						position: "'.$configDiagram['legendPosition'].'",
					},
					title: {
						display: true,
						text: "'.$configDiagram['title'].'",
						fontSize: '.$configDiagram['titleFontSize'].',
						lineHeight: '.$configDiagram['titleLineHeight'].',
						padding: '.$configDiagram['titlePadding'].'
					},
					tooltips: {
						mode: "'.$configDiagram['tooltipMode'].'",
						intersect: false,
						callbacks: {
							label: function(tooltipItem, data) {
								var label = data.datasets[tooltipItem.datasetIndex].label || "";
								if (label) {
									var labelText = label;
								}
								label = Math.round(tooltipItem.yLabel * 100) / 100;
								if (label > 0) {
									label = labelText + ": "+label;
								} else {
									label = "";
								}
								return label;
							}
						}
					},
					scales: {
						xAxes: [{
							gridLines: {
								display:false
							},
							stacked: '.$configDiagram['xAxesStacked'].',
							maxBarThickness: 20,
							ticks: {
								autoSkip: false,
								beginAtZero: true,
							}
						}],
						yAxes: [{
							stacked: '.$configDiagram['yAxesStacked'].',
							ticks: {
								beginAtZero: true,
								// Include a dollar sign in the ticks
								callback: function(value, index, values) {
									return value + " '.$configDiagram['unit'].'";
								}
							}							
						}]
					}
					
				}
			});
			';
		$diagramDraw .=	'</script></div>';
		return $diagramDraw;
	}

	/**
	* @inheritdoc
	* Make simple diagram
	* return string
	*/
	public function diagramSimple($configDiagram) {
		if (!isset($configDiagram['type'])) { $configDiagram['type'] = 'bar'; }
		if (!isset($configDiagram['xAxesStacked'])) { $configDiagram['xAxesStacked'] = 'true'; }
		if (!isset($configDiagram['yAxesStacked'])) { $configDiagram['yAxesStacked'] = 'true'; }
		if (!isset($configDiagram['maintainAspectRatio'])) { $configDiagram['maintainAspectRatio'] = 'false'; }
		if (!isset($configDiagram['titleFontSize'])) { $configDiagram['titleFontSize'] = 16; }
		if (!isset($configDiagram['titleLineHeight'])) { $configDiagram['titleLineHeight'] = 1.2; }
		if (!isset($configDiagram['titlePadding'])) { $configDiagram['titlePadding'] = 40; }
		if (!isset($configDiagram['tooltipMode'])) { $configDiagram['tooltipMode'] = 'nearest'; }
		if (!isset($configDiagram['legendDisplay'])) { $configDiagram['legendDisplay'] = 'true'; }
		if (!isset($configDiagram['legendPosition'])) { $configDiagram['legendPosition'] = 'top'; }
		if (!isset($configDiagram['topValuePlugin'])) { $configDiagram['topValuePlugin'] = '[]'; }
		if (!isset($configDiagram['topTextyPosition'])) { $configDiagram['topTextyPosition'] = -1; }
		if (!isset($configDiagram['visibility'])) { $configDiagram['visibility'] = 0; }
		if (!isset($configDiagram['export'])) { $configDiagram['export'] = 0; }
		if (!isset($configDiagram['visibilityDivName'])) { $configDiagram['visibilityDivName'] = 'container'; }
		if (!isset($configDiagram['height'])) { $configDiagram['height'] = 340; }
		if (!isset($configDiagram['canvasBGColor'])) { $configDiagram['canvasBGColor'] = 'white'; }
		switch ($configDiagram['type']) {
			case 'bar':
				$diagramDraw = '';
				if ($configDiagram['visibility']==1) {
					$diagramDraw .= '<div class="dia-hide-btn"><button id="reportingHoursChartButton" class="btn btn-primary chartVisible" data-chart-div="'. $configDiagram['visibilityDivName'].'" >Hide</button></div>';
				}
				if ($configDiagram['visibilityDivName']=='reportingPercentChart') {
					$diagramDraw .= '
						<div class="alert alert-warning text-center '. $configDiagram['visibilityDivName'].'"  data-chart-div="'. $configDiagram['visibilityDivName'].'" role="alert">
							If no data is displayed in the column, please check the working calendar uploaded to the teams.
						</div>
					';
				}
				$diagramDraw .= '<div class="dia-container" id="'.$configDiagram['visibilityDivName'].'">
				<div class="dia-export export" data-export="'. $configDiagram['id'].'"><img src="/images/Bosch-IC-export.png" /> Export</div>
				<canvas id="'.$configDiagram['id'].'" height="'.$configDiagram['height'].'"></canvas>
					<script>
					';
				/**
				 * plugin
				 * chart background color filler
				 */
				$diagramDraw .= '
					Chart.plugins.register({
						beforeDraw: function(chartInstance) {
							var ctx = chartInstance.chart.ctx;
							ctx.fillStyle = "'.$configDiagram['canvasBGColor'].'";
							ctx.fillRect(0, 0, chartInstance.chart.width, chartInstance.chart.height);
						}
					});
				';
				$diagramDraw .= 'var ctx'.$configDiagram['id'].' = document.getElementById("'.$configDiagram['id'].'");';
				if (isset($configDiagram['height'])) {
					$diagramDraw .= 'ctx'.$configDiagram['id'].'.height = '.$configDiagram['height'].';';
				}
				$diagramDraw .=	'
						var myChart = new Chart(ctx'.$configDiagram['id'].', {
						type: "'.$configDiagram['type'].'",
						data: {
							labels: '.Json::encode($configDiagram['labels']).',
							datasets: '.Json::encode($configDiagram['datasets']).',
						},
						options: {
							responsive: true,
							maintainAspectRatio: '.$configDiagram['maintainAspectRatio'].',
							layout: {
								padding: {
									left: 0,
									right: 0,
									top: 0,
									bottom: 30
								}
							},
							legend: {
								display:'.$configDiagram['legendDisplay'].',
								position: "'.$configDiagram['legendPosition'].'",
							},
							title: {
								display: true,
								text: "'.$configDiagram['title'].'",
								fontSize: '.$configDiagram['titleFontSize'].',
								lineHeight: '.$configDiagram['titleLineHeight'].',
								padding: '.$configDiagram['titlePadding'].'
							},
							tooltips: {
								mode: "'.$configDiagram['tooltipMode'].'", // külön mutassa nearest
								intersect: false,
								callbacks: {
									label: function(tooltipItem, data) {
										var label = data.datasets[tooltipItem.datasetIndex].label || "";
										if (label) {
											var labelText = label;
										}
										label = Math.round(tooltipItem.yLabel * 100) / 100;
										if (label > 0) {
											label = labelText + ": "+label;
										} else {
											label = "";
										}
										return label;
									}
								}
							},
							scales: {
								xAxes: [{
									gridLines: {
										display:false
									},
									stacked: '.$configDiagram['xAxesStacked'].',
									maxBarThickness: 20,
									ticks: {
										autoSkip: false,
										beginAtZero: true,
									}
								}],
								yAxes: [{
									stacked: '.$configDiagram['yAxesStacked'].',
									ticks: {
										beginAtZero:true,
										// Include a dollar sign in the ticks
										callback: function(value, index, values) {
											return value + " '.$configDiagram['unit'].'";
										}
									}							
								}]
							}
						}
					});
					</script>
					</div>
				';
				break;
			case 'pie':
				$diagramDraw = '
					<script>
					var ctx'.$configDiagram['id'].' = document.getElementById("'.$configDiagram['id'].'");
					var myChart = new Chart(ctx'.$configDiagram['id'].', {
						type: "'.$configDiagram['type'].'",
						data: {
							labels: '.Json::encode($configDiagram['labels']).',
							datasets: [{
								label: "# of Hours",
								data: '.Json::encode($configDiagram['data']).',
								backgroundColor: '.Json::encode($configDiagram['backgroundColor']).',
								borderColor: "#CCCCCC",
								borderWidth: 2,
							}]
						},
						options: {
							responsive: true,
							legend: {
								display:true,
								position: "'.$configDiagram['legendPosition'].'",
							},
							title: {
								display: true,
								text: "'.$configDiagram['title'].'",
							},
							ticks: {
								autoSkip: false
							},
							tooltips: {
								callbacks: {
									label: function(tooltipItem, data) {
										var label = data.labels[tooltipItem.index];
										var value = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];
										var res = label.split("(",1);
										if (label) {
											var labelText = label;
										}
										label = res + ": "+value;
										return label;
									}
								},
	
							},
						}
					});
					</script>
				';
				break;
			case 'doughnut':
				$diagramDraw = '
					<script>
					var ctx'.$configDiagram['id'].' = document.getElementById("'.$configDiagram['id'].'");
					var myChart = new Chart(ctx'.$configDiagram['id'].', {
						type: "'.$configDiagram['type'].'",
						data: {
							labels: '.Json::encode($configDiagram['labels']).',
							datasets: [{
								label: "# of Hours",
								data: '.Json::encode($configDiagram['data']).',
								backgroundColor: '.Json::encode($configDiagram['backgroundColor']).',
								borderColor: "#CCCCCC",
								borderWidth: 2,
							}]
						},
						options: {
							responsive: true,
							legend: {
								display: true,
								position: "'.$configDiagram['legendPosition'].'",
							},
							title: {
								display: true,
								text: "'.$configDiagram['title'].'"
							},
							tooltips: {
								callbacks: {
									label: function(tooltipItem, data) {
										var label = data.labels[tooltipItem.index];
										var value = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];
										var res = label.split("(",1);
										if (label) {
											var labelText = label;
										}
										label = res + ": "+value;
										return label;
									}
								},
	
							},
						}
					});
					</script>
				';
				break;
			default:
				$diagramDraw = 'Not set chart type!';
				break;
			}
		return $diagramDraw;
	}

}