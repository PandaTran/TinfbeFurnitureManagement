//Category Chart
var options = {
    series: [44, 55, 41, 17],
    labels: ['Livingroom', 'Storage', 'Decor', 'Dining'],
    chart: {
        type: 'donut',
    },
    colors: ['#6ab04c', '#2980b9', '#f39c12', '#d35400'],
    responsive: [{
        breakpoint: 480,
        options: {
            chart: {
                width: 200
            },
            legend: {
                position: 'right'
            }
        }
    }]
};

var category_chart = new ApexCharts(document.querySelector("#category-chart"), options);
category_chart.render();

//Customer Chart

var customer_options = {
    series: [{
        name: "Store Customers",
        data: [40, 70, 20, 90, 36, 80, 30, 91, 60]
    }, {
        name: "Online Customers",
        data: [10, 41, 35, 51, 49, 62, 69, 91, 148]
    }],
    chart: {
        height: 250,
        type: 'line',
    },
    dataLabels: {
        enabled: false
    },
    stroke: {
        curve: 'smooth'
    },
    grid: {
        row: {
            colors: ['#f3f3f3', 'transparent'],
            opacity: 0.5
        },
    },
    xaxis: {
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
    }
};

var customer_chart = new ApexCharts(document.querySelector("#customer-chart"), customer_options);
customer_chart.render()