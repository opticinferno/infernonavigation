

    <% if $Children %>
        <li class="nav-item">
            <p style="text-align: left; width:48%; display: inline-block;"><a class="$LinkingMode" href="$Link">$MenuTitle</a></p>
            <p style="text-align: right; width:50%;  display: inline-block;">
                <a class="nav-link nav-dropdown-btn $LinkingMode" data-toggle="collapse" href="#collapse2-$Pos" data-target="#collapse2-$Pos"  role="button" aria-expanded="false" aria-controls="collapse2-$Pos">
                    <i class="fas fa-plus"></i>
                </a></p>

            <div class="collapse" id="collapse2-$Pos">
                <ul class="card card-body">
                    <% loop $Children %>
                        <% if $Children %><li class="nav-item">

                            <p style="text-align: left; width:48%; display: inline-block;"><a class="$LinkingMode" href="$Link">$MenuTitle</a></p>
                            <p style="text-align: right; width:50%;  display: inline-block;">
                                <a class="nav-link nav-dropdown-btn $LinkingMode" data-toggle="collapse" href="#$MenuTitle-$Pos" data-target="#$MenuTitle-$Pos"  role="button" aria-expanded="false" aria-controls="$MenuTitle-$Pos">
                                    <i class="fas fa-plus"></i>
                                </a></p>

                            <div class="collapse" id="$MenuTitle-$Pos">
                                <ul class="card card-body">
                                    <% loop $Children %>
                                        <% if $Children %><li class="nav-item">
                                            <p style="text-align: left; width:48%; display: inline-block;">
                                                <a class="$LinkingMode" href="$Link">$MenuTitle</a>
                                            </p>
                                            <p style="text-align: right; width:50%;  display: inline-block;">
                                                <a class="nav-link nav-dropdown-btn" data-toggle="collapse" href="#$Title-$Pos" data-target="#$Title-$Pos"  role="button" aria-expanded="false" aria-controls="$Title-$Pos">
                                                    <i class="fas fa-plus"></i>
                                                </a>
                                            </p>

                                            <div class="collapse" id="$Title-$Pos">
                                                <ul class="card card-body">
                                                    <% loop $Children %>
                                                        <% if $Children %>
                                                            <li class="nav-item">
                                                                <p style="text-align: left; width:47%; display: inline-block;"><a class="$LinkingMode" href="$Link">$MenuTitle</a></p>
                                                                <p style="text-align: right; width:50%;  display: inline-block;"><a class="nav-link nav-dropdown-btn" data-toggle="collapse" href="#$Title-$Pos" data-target="#$Title-$Pos"  role="button" aria-expanded="false" aria-controls="$Title-$Pos">
                                                                    <i class="fas fa-plus"></i>
                                                                </a></p>

                                                                <div class="collapse" id="$Title-$Pos">
                                                                    <ul class="card card-body">
                                                                        <% loop $Children %>
                                                                            <li class="nav-item  <% if $isCurrent || $isSection %>active<% end_if %>">
                                                                                <a class="nav-link $LinkingMode" href="$Link">$MenuTitle</a>
                                                                            </li>
                                                                        <% end_loop %>
                                                                    </ul>
                                                                </div>
                                                            </li>
                                                        <% else %>
                                                            <li class="nav-item  <% if $isCurrent || $isSection %>active<% end_if %>">
                                                                <a class="nav-link $LinkingMode" href="$Link">$MenuTitle</a>
                                                            </li>
                                                        <% end_if %>
                                                    <% end_loop %>
                                                </ul>
                                            </div>
                                        </li>
                                        <% else %>
                                            <li class="nav-item  <% if $isCurrent || $isSection %>active<% end_if %>">
                                                <a class="nav-link $LinkingMode" href="$Link">$MenuTitle</a>
                                            </li>
                                        <% end_if %>
                                    <% end_loop %>
                                </ul>
                            </div>
                        </li>
                        <% else %>
                            <li class="nav-item  <% if $isCurrent || $isSection %>active<% end_if %>">
                                <a class="nav-link $LinkingMode" href="$Link">$MenuTitle</a>
                            </li>
                        <% end_if %>
                    <% end_loop %>
                </ul>
            </div>
        </li>
    <% else %>
    <li class="nav-item  <% if $isCurrent || $isSection %>active<% end_if %>">
        <a class="nav-link $LinkingMode" href="$Link">$MenuTitle</a>
    </li>
    <% end_if %>
