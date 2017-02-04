<!-- namayesh eteleat datste bandy -->
<section class="mbr-section article mbr-parallax-background mbr-after-navbar" id="msg-box8-c" 
         style="background-image: url(/{$base_url}/public/assets/images/desert.jpg); padding-top: 120px; padding-bottom: 120px;">

    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-xs-center">
                <h3 class="mbr-section-title display-2">{$data['cat']['name']}</h3>
                <div class="lead"><p>{$data['cat']['describtion']}</p></div>
            </div>
        </div>
    </div>
</section>

<!-- namayesh tamae khabar haye in daste bandi -->            
<section class="mbr-cards mbr-section mbr-section-nopadding" id="features3-3" style="background-color: rgb(255, 255, 255);">
    <div class="mbr-cards-row row">
        {foreach $data['allnews'] as $most}
            <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 80px; padding-bottom: 80px;">
                <div class="container">
                    <div class="card cart-block">
                        <div class="card-img">
                            {if empty($most['pic_url'])}
                                <img src="/{$base_url}/public/assets/images/table.jpg" class="card-img-top">
                            {/if}
                            {if !empty($most['pic_url'])}
                                <img src="/{$base_url}/public/img/upload/{$most['pic_url']}" class="card-img-top" style="width: 100%;max-height: 180px">   
                            {/if}    
                        </div>
                        <div class="card-block">
                            <h4 class="card-title">{$most['title']}</h4>
                            <p class="card-text">{$most['short_note']}</p>
                            <div class="card-btn">
                                <a href="/{$base_url}/show.php?id={$most['id']}" class="btn btn-primary">MORE</a></div>
                        </div>
                    </div>
                </div>
            </div>
        {/foreach}  

    </div>
</section>
