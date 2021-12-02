/* ------- Active & Remove Menu ------ */
const navLink = document.querySelectorAll('.header__navbar .main-menu--item .header__navbar-item-link,.administration .nav .nav__container .nav__link')

function navLinkAction() {
    navLink.forEach(n => n.classList.remove('active'))
    this.classList.add('active')
}

navLink.forEach(n => n.addEventListener('click', navLinkAction))


/*---Change background header----*/
function scrollHeader() {
    const header = document.getElementById("header");
    if (this.scrollY >= 100) header.classList.add("scroll-header");
    else header.classList.remove("scroll-header");
}
window.addEventListener("scroll", scrollHeader);

/* DARK MODE TOGGLE */
//var darkIcon = document.getElementById("dark-mode__icon");
//darkIcon.onclick = function() {
//    document.body.classList.toggle("dark-theme");
//    if (document.body.classList.contains("dark-theme")) {
//        darkIcon.src = "./assets/images/sun.png";
//    } else { darkIcon.src = "./assets/images/moon.png" }
//}

/*---Accordion---*/
$(".accordian").on("click", ".accordian-title", function() {
    $(this).toggleClass("active").next().slideToggle(500);
});

/*---Show Scroll Up---*/
function scrollUp() {
    const scrollUp = document.getElementById("scroll-up");
    if (this.scrollY >= 200) scrollUp.classList.add("show-scroll");
    else scrollUp.classList.remove("show-scroll");
}
window.addEventListener("scroll", scrollUp);

/* LOGIN SHOW AND HIDDEN */
const signUp = document.getElementById('sign-up'),
    signIn = document.getElementById('sign-in'),
    loginIn = document.getElementById('login-in'),
    loginUp = document.getElementById('login-up')

signUp.addEventListener('click', () => {
    loginIn.classList.remove('block')
    loginUp.classList.remove('none')

    loginIn.classList.add('none')
    loginUp.classList.add('block')
})

signIn.addEventListener('click', () => {
    loginIn.classList.remove('none')
    loginUp.classList.remove('block')

    loginIn.classList.add('block')
    loginUp.classList.add('none')
})


/* Chart */

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