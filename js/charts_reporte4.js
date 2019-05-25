      google.charts.load('current', {'packages':['table']});
      google.charts.setOnLoadCallback(drawTable);

      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Edad');
        data.addColumn('number', 'Frecuencia %');

        data.addRows([
          [  '<22', {f:'10'}],
          [  '22', {f:'8'}],
          [  '23', {f:'8'}],
          [  '24', {f:'8'}],
          [  '25', {f:'8'}],
          [  '26', {f:'8'}],
          [  '27', {f:'8'}],
          [  '28', {f:'8'}],
          [  '29', {f:'8'}],
          [  '30', {f:'8'}],
          [ '>30', {f:'8'}],

        ]);

        var table = new google.visualization.Table(document.getElementById('table_div'));

        table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
      }