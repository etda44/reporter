<!doctype html>
<html lang="zh-Hant-TW">

<head>
    {include file="header.tpl"}
</head>

<body>

    <div class="img-container">

        <div class="container">
            {include file="nav.tpl"}
            <!-- 自動載入 $op 對應的樣板檔 -->
            {include file="op_`$op`.tpl"}
        </div>
    </div>
    {include file="footer.tpl"}

</body>

</html>