<nav class="navbar navbar-expand-md" style="background: #$SiteConfig.NavigationColor">

    <div class="container">
        <%--NAVIGATION ON RIGHT--%>
        <% if $SiteConfig.LinkLocation == 'right' %>
    <a class="navbar-brand pb-2 d-none d-md-block" href="#" style="width: $SiteConfig.LogoWidth\%;"><% if $SiteConfig.Logo %><img src="$SiteConfig.Logo.URL" ><% else %>Navbar<% end_if %></a>
            <a class="navbar-brand pb-2 d-block d-md-none" href="#" style="width: 80%;"><% if $SiteConfig.Logo %><img src="$SiteConfig.Logo.URL" ><% else %>Navbar<% end_if %></a>
    <button class="navbar-toggler" id="nav-icon2" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">

            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>

    </button>

            <% if $SiteConfig.MenuType == 'NavChildren' %>
    <div class="collapse navbar-collapse <% if $SiteConfig.LinkLocation == 'right' %>justify-content-end<% end_if %>" id="navbarNavDropdown">

        <ul class="navbar-nav nav-dropdwon-hover ">

            <% loop $Menu(1) %>


                    <% include InfernoNavigation/Navigation/Menu %>

            <% end_loop %>
        </ul>
        <ul class="navbar-nav nav-dropdown-collaps">
            <% loop $Menu(1) %>
                <% include InfernoNavigation/Navigation/SecondMenu %>
            <% end_loop %>
            <a class="asd" href="mana.com"></a>
        </ul>


    </div>

            <% end_if %>
        <% if $SiteConfig.MenuType == 'NavNoChildren' %>
        <div class="collapse navbar-collapse <% if $SiteConfig.LinkLocation == 'right' %>justify-content-end<% end_if %>" id="navbarNavDropdown">
        <ul class="navbar-nav nav-dropdwon ">
            <% loop $Menu(1) %>
                <% include InfernoNavigation/Navigation/NoChildrenMenu %>
            <% end_loop %>
        </ul>
        </div>
        <% end_if %>

            <% if $SiteConfig.MenuType == 'NavMega' %>
                <div class="collapse navbar-collapse <% if $SiteConfig.LinkLocation == 'right' %>justify-content-end<% end_if %>" id="navbarNavDropdown">
            <ul class="navbar-nav mr-auto">
                <% loop $Menu(1) %>
                    <% include InfernoNavigation/Navigation/MegaMenu %>
                <% end_loop %>
            </ul>
            </div>
            <% end_if %>
        <% if $SiteConfig.MenuType == 'NavSide' %>
<% include InfernoNavigation/Navigation/SideMenu %>
        <% end_if %>
        <% else %>
            <%--NAVIGATION ON LEFT--%>
            <% if $SiteConfig.MenuType == 'NavChildren' %>
            <div class="collapse navbar-collapse <% if $SiteConfig.LinkLocation == '' %>justify-content-begin<% end_if %>" id="navbarNavDropdown">

                <ul class="navbar-nav nav-dropdwon-hover ">
                    <% loop $Menu(1) %>


                            <% include InfernoNavigation/Navigation/Menu %>

                    <% end_loop %>
                </ul>
                <ul class="navbar-nav nav-dropdown-collaps">
                    <% loop $Menu(1) %>
                <% include InfernoNavigation/Navigation/SecondMenu %>
                    <% end_loop %>
                    <a class="asd" href="mana.com"></a>
                </ul>

            </div>
            <% end_if %>

            <% if $SiteConfig.MenuType == 'NavNoChildren' %>
            <div class="collapse navbar-collapse <% if $SiteConfig.LinkLocation == 'right' %>justify-content-end<% end_if %>" id="navbarNavDropdown">
            <ul class="navbar-nav ">
                <% loop $Menu(1) %>
                    <% include InfernoNavigation/Navigation/NoChildrenMenu %>
                <% end_loop %>
            </ul>
            </div>
            <% end_if %>

        <% if $SiteConfig.MenuType == 'NavMega' %>
        <div class="collapse navbar-collapse <% if $SiteConfig.LinkLocation == 'right' %>justify-content-end<% end_if %>" id="navbarNavDropdown">
            <ul class="navbar-nav nav-dropdown-collaps">
                <% loop $Menu(1) %>
                    <% include InfernoNavigation/Navigation/SecondMenu %>
                <% end_loop %>
                <a class="asd" href="mana.com"></a>
            </ul>
        </div>
        <% end_if %>


            <a class="navbar-brand pb-2" href="#"><% if $SiteConfig.Logo %><img src="$SiteConfig.Logo.URL" style="max-width: $SiteConfig.LogoWidth;"><% else %>Navbar<% end_if %></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

        <% end_if %>
    </div>
</nav>
<style>
  .nav-item a{color: #$SiteConfig.NavigationLinkColor;}
  .nav-link{color: #$SiteConfig.NavigationLinkColor;}
    .dropdown-item{color: #$SiteConfig.NavigationLinkColor;}
</style>
<style>
    #nav-icon2 {
        width: 40px;
        height: 25px;
        position: relative;

        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        -o-transform: rotate(0deg);
        transform: rotate(0deg);
        -webkit-transition: .5s ease-in-out;
        -moz-transition: .5s ease-in-out;
        -o-transition: .5s ease-in-out;
        transition: .5s ease-in-out;
        cursor: pointer;
    }
    /* Icon 2 */

    #nav-icon2 {
    }

    #nav-icon2 span {
        display: block;
        position: absolute;
        height: 5px;
        width: 50%;
        background: #$SiteConfig.BurgerColor;
        opacity: 1;
        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        -o-transform: rotate(0deg);
        transform: rotate(0deg);
        -webkit-transition: .25s ease-in-out;
        -moz-transition: .25s ease-in-out;
        -o-transition: .25s ease-in-out;
        transition: .25s ease-in-out;
    }

    #nav-icon2 span:nth-child(even) {
        left: 50%;
        border-radius: 0 9px 9px 0;
    }

    #nav-icon2 span:nth-child(odd) {
        left:0px;
        border-radius: 9px 0 0 9px;
    }

    #nav-icon2 span:nth-child(1), #nav-icon2 span:nth-child(2) {
        top: 0px;
    }

    #nav-icon2 span:nth-child(3), #nav-icon2 span:nth-child(4) {
        top: 10px;
    }

    #nav-icon2 span:nth-child(5), #nav-icon2 span:nth-child(6) {
        top: 20px;
    }

    #nav-icon2.open span:nth-child(1),#nav-icon2.open span:nth-child(6) {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
    }

    #nav-icon2.open span:nth-child(2),#nav-icon2.open span:nth-child(5) {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
    }

    #nav-icon2.open span:nth-child(1) {
        left: 3px;
        top: 7px;
    }

    #nav-icon2.open span:nth-child(2) {
        left: calc(50% - 1px);
        top: 7px;
    }

    #nav-icon2.open span:nth-child(3) {
        left: -50%;
        opacity: 0;
    }

    #nav-icon2.open span:nth-child(4) {
        left: 100%;
        opacity: 0;
    }

    #nav-icon2.open span:nth-child(5) {
        left: 3px;
        top: 25px;
    }

    #nav-icon2.open span:nth-child(6) {
        left: calc(50% - 1px);
        top: 25px;
    }


</style>
<script>
    $(document).ready(function(){
        $('#nav-icon2').click(function(){
            $(this).toggleClass('open');
        });
    });
</script>
