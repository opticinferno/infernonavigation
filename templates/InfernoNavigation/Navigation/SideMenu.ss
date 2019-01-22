



        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav animate side-nav">
                <% loop $Menu(1) %>
                <li class="nav-item">
                    <a class="nav-link" href="$Link">$MenuTitle
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <% end_loop %>

            </ul>
            <ul class="navbar-nav animate top-nav hidden-md-down">
                <% loop $Menu(1) %>
                    <li class="nav-item">
                        <a class="nav-link" href="$Link">$MenuTitle
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                <% end_loop %>

            </ul>
        </div>
        <span class="navbar-toggler-icon leftmenutrigger" style="width:20%;"></span>




<style>

    body{background:#f9f9f9;}
    #wrapper{padding:90px 15px;}
    .navbar-expand-lg .navbar-nav.side-nav{flex-direction: column;}
    .card{margin-bottom: 15px;
        border-radius:0;
        box-shadow: 0 3px 5px rgba(0,0,0,.1); }
    .header-top{box-shadow: 0 3px 5px rgba(0,0,0,.1)}
    .leftmenutrigger{display: none}
    @media(min-width:992px) {
        .leftmenutrigger{display: block;
            display: block;
            margin: 7px 20px 4px 0;
            cursor: pointer;}
        #wrapper{padding: 90px 15px 15px 15px; }
        .navbar-nav.side-nav.open {left:0;}
        .navbar-nav.side-nav{background: #$SiteConfig.SideBackColor;
            box-shadow: 2px 1px 2px rgba(0,0,0,.1);
            position:fixed;
            top:0;
            flex-direction: column!important;
            left:-220px;
            width:200px;
            overflow-y:auto;
            bottom:0;
            overflow-x:hidden;
            padding-bottom:40px}
        .navbar-nav.side-nav.a{color:#$SiteConfig.SideColor;}}
    }
    .animate{-webkit-transition:all .3s ease-in-out;
        -moz-transition:all .3s ease-in-out;
        -o-transition:all .3s ease-in-out;
        -ms-transition:all .3s ease-in-out;
        transition:all .3s ease-in-out}
    .navbar-toggler-icon {
        background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(255, 255, 255, 0.5)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
    }
</style>
<script>

    $( document ).ready(function() {
        $('.leftmenutrigger').on('click', function(e) {
            $('.side-nav').toggleClass("open");
            e.preventDefault();
        });
    });

</script>
