<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
    <meta name="theme-color" content="#4285f4">
    <title>{$config['appName']}</title>
    <!-- css -->
    <link href="/theme/material/css/base.min.css" rel="stylesheet">
    <link href="/theme/material/css/project.min.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Material+Icons" rel="stylesheet">
    <link href="//cdn.jsdelivr.net/npm/material-design-lite@1.3.0/dist/material.min.css" rel="stylesheet">
    <link href="//cdn.jsdelivr.net/gh/DataTables/DataTables@1.10.19/media/css/dataTables.material.min.css" rel="stylesheet">
    <link href="//cdn.jsdelivr.net/npm/jsoneditor/dist/jsoneditor.min.css" rel="stylesheet" type="text/css">
    <!-- js -->
    <script src="//cdn.jsdelivr.net/npm/jquery@3.6.0"></script>
    <script src="//cdn.jsdelivr.net/npm/jsoneditor/dist/jsoneditor.min.js"></script>
    <!-- favicon -->
    <!-- ... -->
    <style>
        body {
            position: relative;
        }

        {if $config['admin_center_bg'] == true}
        .page-brand .ui-content-header {
            background-image: url({$config['admin_center_bg_addr']});
        }
        {/if}

        .table-responsive {
            background: white;
        }

        .dropdown-menu.dropdown-menu-right a {
            color: #212121;
        }

        a[href='#ui_menu'] {
            color: #212121;
        }

        #custom_config {
            height: 500px;
        }
    </style>
</head>

<body class="page-brand">
<header class="header header-red header-transparent header-waterfall ui-header">
    <ul class="nav nav-list pull-left">
        <div>
            <a data-toggle="menu" href="#ui_menu">
                <span class="icon icon-lg">menu</span>
            </a>
        </div>
    </ul>
    <ul class="nav nav-list pull-right">
        <div class="dropdown margin-right">
            <a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
                {if $user->isLogin}
                <span class="access-hide">{$user->user_name}</span>
                <span class="avatar avatar-sm"><img src="{$user->gravatar}"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                    <a class="waves-attach" href="/user/"><span class="icon icon-lg margin-right">account_box</span>????????????</a>
                </li>
                <li>
                    <a class="waves-attach" href="/user/logout"><span
                                class="icon icon-lg margin-right">exit_to_app</span>??????</a>
                </li>
            </ul>
            {else}
            <span class="access-hide">?????????</span>
            <span class="avatar avatar-sm"><img src="/theme/material/images/users/avatar-001.jpg"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                    <a class="waves-attach" href="/auth/login"><span
                                class="icon icon-lg margin-right">account_box</span>??????</a>
                </li>
                <li>
                    <a class="waves-attach" href="/auth/register"><span
                                class="icon icon-lg margin-right">pregnant_woman</span>??????</a>
                </li>
            </ul>
            {/if}
        </div>
    </ul>
</header>
<nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
    <div class="menu-scroll">
        <div class="menu-content">
            <a class="menu-logo" href="/"><i class="icon icon-lg">person_pin</i>&nbsp;????????????</a>
            <ul class="nav">
                <li>
                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_me">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_me">
                        <li><a href="/admin"><i class="icon icon-lg">business_center</i>&nbsp;????????????</a></li>
                        <li><a href="/admin/announcement"><i class="icon icon-lg">announcement</i>&nbsp;????????????</a></li>
                        <li><a href="/admin/ticket"><i class="icon icon-lg">question_answer</i>&nbsp;????????????</a></li>
                    </ul>
                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_node">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_node">
                        <li><a href="/admin/node"><i class="icon icon-lg">router</i>&nbsp;????????????</a></li>
                        <li><a href="/admin/block"><i class="icon icon-lg">dialer_sip</i>&nbsp;?????????IP</a></li>
                        <li><a href="/admin/unblock"><i class="icon icon-lg">dialer_sip</i>&nbsp;?????????IP</a></li>
                    </ul>
                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_user">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_user">
                        <li><a href="/admin/user"><i class="icon icon-lg">supervisor_account</i>&nbsp;????????????</a></li>
                        <li><a href="/admin/invite"><i class="icon icon-lg">loyalty</i>&nbsp;???????????????</a></li>
                        <li><a href="/admin/subscribe"><i class="icon icon-lg">dialer_sip</i>&nbsp;????????????</a></li>
                        <li><a href="/admin/login"><i class="icon icon-lg">text_fields</i>&nbsp;????????????</a></li>
                        <li><a href="/admin/alive"><i class="icon icon-lg">important_devices</i>&nbsp;??????IP</a></li>
                    </ul>
                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_config">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_config">
                        <li><a href="/admin/setting"><i class="icon icon-lg">settings</i>&nbsp;????????????</a></li>
                        <li><a href="/admin/config/telegram"><i class="icon icon-lg">supervisor_account</i>&nbsp;Telegram</a></li>
                    </ul>
                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_detect">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_detect">
                        <li><a href="/admin/detect"><i class="icon icon-lg">account_balance</i>&nbsp;????????????</a></li>
                        <li><a href="/admin/detect/log"><i class="icon icon-lg">assignment_late</i>&nbsp;????????????</a></li>
                        <li><a href="/admin/detect/ban"><i class="icon icon-lg">text_fields</i>&nbsp;????????????</a></li>
                    </ul>
                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_trade">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_trade">
                        <li><a href="/admin/code">
                                <i class="icon icon-lg">code</i>
                                &nbsp;{if $config['enable_donate']===true}?????????????????????{else}????????????{/if}</a>
                        </li>
                        <li><a href="/admin/shop"><i class="icon icon-lg">shop</i>&nbsp;??????</a></li>
                        <li><a href="/admin/coupon"><i class="icon icon-lg">card_giftcard</i>&nbsp;?????????</a></li>
                        <li><a href="/admin/bought"><i class="icon icon-lg">shopping_cart</i>&nbsp;????????????</a></li>
                    </ul>
                <li><a href="/user"><i class="icon icon-lg">person</i>&nbsp;????????????</a></li>
            </ul>
        </div>
    </div>
</nav>
