<% if $Children %>
    <li class="btn-group nav-item ">
    <% if $ClassName != 'RedirectorPage' %><a type="" id="abc" class="nav-link $LinkingMode" href="$Link">$MenuTitle</a><% else %><a type="" id="abc" class="nav-link $LinkingMode" href="#">$MenuTitle</a><% end_if %>
    <a type="" class="nav-link dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent">
        <span class="sr-only">Toggle Dropdown</span>
    </a>
    <ul class="dropdown-menu move-drop-up" aria-labelledby="navbarDropdownMenuLink">
        <% loop $Children %>
            <% if $Children %>
                <li class="dropdown-submenu $LinkingMode"><a class="dropdown-item dropdown-toggle" href="$Link">$MenuTitle</a>
                    <ul class="dropdown-menu">
                        <% loop $Children %>
                            <% if $Children %>
                                <li class="dropdown-submenu $LinkingMode"><a class="dropdown-item dropdown-toggle" href="$Link">$MenuTitle</a>
                                    <ul class="dropdown-menu">
                                        <% loop $Children %>
                                            <% if $Children %>
                                                <li class="dropdown-submenu $LinkingMode"><a class="dropdown-item dropdown-toggle" href="$Link">$MenuTitle</a>
                                                    <ul class="dropdown-menu">
                                                        <% loop $Children %>
                                                            <li><a class="dropdown-item $LinkingMode" href="$Link">$MenuTitle</a></li>
                                                        <% end_loop %>
                                                    </ul>
                                                </li>
                                            <% else %>
                                                <li><a class="dropdown-item $LinkingMode" href="$Link">$MenuTitle</a></li>
                                            <% end_if %>
                                        <% end_loop %>
                                    </ul>
                                </li>
                            <% else %>
                                <li><a class="dropdown-item $LinkingMode" href="$Link">$MenuTitle</a></li>
                            <% end_if %>
                        <% end_loop %>
                    </ul>
                </li>
            <% else %>
                <li><a class="dropdown-item $LinkingMode" href="$Link">$MenuTitle</a></li>
            <% end_if %>
        <% end_loop %>
    </ul>
</li>
<% else %>
<li class="nav-item  <% if $isCurrent || $isSection %>active<% end_if %>">
    <a class="nav-link $LinkingMode" href="$Link">$MenuTitle</a>
</li>
<% end_if %>



