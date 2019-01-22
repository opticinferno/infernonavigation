
<!------ Include the above in your HEAD tag ---------->


            <% if $MegaContent %>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        $MenuTitle
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                       <div class="container">
                           <div class="row">
                           $MegaContent
                           </div>
                       </div>


                    </div>
                </li>




            <% else %>
                <li class="nav-item">
                    <a class="nav-link" href="$Link">$MenuTitle</a>
                </li>
            <% end_if %>





<style>
.navbar-nav .dropdown-menu{background-color: #$SiteConfig.DropdownColor !important;}
.navbar-nav .dropdown-menu a,li,p{color: #$SiteConfig.DropdownContentColor !important;}



    /* breakpoint and up - mega dropdown styles */
    @media screen and (min-width: 992px) {




        /* makes the dropdown full width  */
        .navbar .dropdown {position:static;}




    }

</style>

