<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>



<script>
    $(document).ready(function () {
        var images = ['chess.jpg', 'football.jpg', 'photography.jpg'];
        $('.img-container').css({ 'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')' });

        // var txt = ['大家好', '歡迎光臨'];
        // $('title').text(txt[Math.floor(Math.random() * txt.length)]);

        $('.img-container').css('width', $(window).width());
        $('.img-container').css('height', $(window).height());
    });
    $(window).resize(function () {
        $('.img-container').css('width', $(window).width());
        $('.img-container').css('height', $(window).height());
    });

</script>



<script src="js/moretext-1.2.js" type="text/javascript"></script>