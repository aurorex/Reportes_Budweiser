      google.charts.load('current', {'packages':['table']});
      google.charts.setOnLoadCallback(drawTable);

      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Nombre');
        data.addColumn('string', 'Genero');
        data.addColumn('number', 'Edad');
        data.addColumn('boolean', 'Frecuencia');
        data.addRows([
          ['Lucas', 'Varón',  {v: 10000, f: '28'}, true],
          ['Elena', 'Mujer',  {v:8000,   f: '25'},  false],
          ['Sara', 'Mujer',  {v:8000,   f: '25'},  true],
          ['Diego', 'varón',  {v:8000,   f: '30'},  false],

        ]);

        var table = new google.visualization.Table(document.getElementById('table_div'));

        table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
      }