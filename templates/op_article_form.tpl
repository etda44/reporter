<script src="js/languages/jquery.validationEngine-zh_TW.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css">

<script src="ckeditor/ckeditor.js"></script>

<form action="admin.php" method="post" enctype="multipart/form-data" id="myform">
    <div class="form-group">
        <label for="title" class="col-form-label">文章標題</label>
        <input type="text" class="form-control" name="title" id="title" placeholder="請輸入文章標題">
    </div>
    <div class="form-group">
        <label for="content" class="col-form-label">文章內容</label>
        <textarea name="content" id="content" rows="20" class="form-control" placeholder="請輸入文章內容"></textarea>
    </div>
    <div class="form-group">
        <label for="title" class="col-form-label">封面圖</label>
        <input type="file" class="form-control" name="pic" id="pic" placeholder="請上傳一張封面圖">
        <!-- 
        多檔上傳    name="pic[]" 
        -->
    </div>

    <div class="text-center">
        <button type="submit" class="btn btn-primary">儲存</button>
    </div>
    <input type="hidden" name="op" value="insert">
    <input type="hidden" name="username" value="{$smarty.session.username}">

</form>

<script>
    CKEDITOR.replace('content');

</script>