google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Year', 'Bueno', 'Regular', 'Malo'],
    ['2013',  1000,   1000,    400],
    ['2014',  1170,   1000,    460],
    ['2015',  660,    1000,    1120],
    ['2016',  1030,   1000,    540]
  ]);

  var options = {
    title: 'Company Performance',
    hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
    vAxis: {minValue: 0}
  };

  var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
  chart.draw(data, options);
}