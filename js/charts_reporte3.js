google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Encuesta', 'Bueno', 'Regular', 'Malo'],
    ['E#1',  1000,   600,    400],
    ['E#2',  800,   1000,    460],
    ['E#3',  660,    1000,    1120],
    ['E#4',  300,   1000,    540]
  ]);

  var options = {
    title: 'Respuesta de Satisfaccion de Usuario',
    hAxis: {title: 'Encuesta',  titleTextStyle: {color: '#333'}},
    vAxis: {minValue: 0, title: 'Cantidad de Respuestas'},
    'width':800,
    'height':400
  };

  var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
  chart.draw(data, options);
}