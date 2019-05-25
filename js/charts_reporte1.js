/*google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawMultSeries);

function drawMultSeries() {
  var data = new google.visualization.DataTable();
  data.addColumn('timeofday', 'tiempo por Día');
  data.addColumn('number', 'Movil');
  data.addColumn('number', 'Tablet');

  data.addRows([
    [{v: [8, 0, 0], f: 'Android'}, 1, .25],
    [{v: [9, 0, 0], f: 'IOS'}, 2, .5],
  ]);

  var options = {
    title: 'Uso del App por dispositivo',
    hAxis: {
      title: 'Tipo de Dispositivos',
      
    },
    vAxis: {
      title: 'Cantidad de Usuarios (xk)'
    },
    'width':800,
    'height':400
  };

  var chart = new google.visualization.ColumnChart(
    document.getElementById('chart_div'));

  chart.draw(data, options);
}*/
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBarColors);

function drawBarColors() {
      var data = google.visualization.arrayToDataTable([
        ['Tipo de Dispositivo', 'Tablet', 'Celular'],
        ['Android', 817000, 800000],
        ['IOS', 379200, 369400],
      ]);

      var options = {
        title: 'Distribucion de uso de la app por tipo de dispositivo',
        chartArea: {width: '50%'},
        colors: ['#b0120a', '#ffab91'],
        hAxis: {
          title: 'Distribucion del Uso del App por tipo de dispositivo',
          minValue: 0
        },
        vAxis: {
          title: 'Tipo de Dispositivo'
        },
        'width':800,
        'height':400
      };
      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
