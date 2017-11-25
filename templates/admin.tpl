<!doctype html>
<html lang="zh-Hant-TW">

<head>
    {include file="header.tpl"}
</head>

<body>
    {include file="nav.tpl"}
    <div class="img-container">

        <div class="container">

            <!-- 自動載入 $op 對應的樣板檔 -->
            {include file="op_`$op`.tpl"}
        </div>
    </div>
    {include file="footer.tpl"}

</body>

</html>