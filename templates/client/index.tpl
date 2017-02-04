<section class="engine"><a rel="external" href="https://mobirise.com">simple drag and drop website building software</a></section>
<!-- Slider -->
<section class="mbr-slider mbr-section mbr-section__container carousel slide mbr-section-nopadding mbr-after-navbar" data-ride="carousel" data-keyboard="false" data-wrap="true" data-pause="false" data-interval="5000" id="slider-1">
    <div>
        <div>
            <div>
                <ol class="carousel-indicators">
                    <!--  Eshare gar haye payeen -->
                    {foreach $data['slider'] as $index => $item}
                        {if ($index == 0)}
                            <li data-app-prevent-settings="" data-target="#slider-1" data-slide-to="0" class="active"></li>
                            {/if}
                            {if ($index =! 0)}
                            <li data-app-prevent-settings="" data-target="#slider-1" class="" data-slide-to="{$index}"></li>
                            {/if}
                        {/foreach} 
                </ol>
                <!-- Mohtavaye Slider Ha -->
                <div class="carousel-inner" role="listbox">
                    {foreach $data['slider'] as $index => $item}
                        {if ($index == 0)}
                            <div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full active" data-bg-video-slide="false" style="background-image: url(/{$base_url}/public/assets/images/man-back.jpg);">
                                <div class="mbr-table-cell">
                                    <div class="mbr-overlay"></div>
                                    <div class="container-slide container">

                                        <div class="row">
                                            <div class="col-md-8 col-md-offset-2 text-xs-center">
                                                <h2 class="mbr-section-title display-1">{$item['title']}</h2>
                                                <p class="mbr-section-lead lead">{$item['short_note']}</p>

                                                <div class="mbr-section-btn">
                                                    <a class="btn btn-lg btn-white btn-white-outline" href="/{$base_url}/show.php?id={$item['id']}">More ...</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}
                        {if ($index =! 0)}
                            <div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(/{$base_url}/public/assets/images/man-back.jpg);">
                                <div class="mbr-table-cell">
                                    <div class="mbr-overlay"></div>
                                    <div class="container-slide container">

                                        <div class="row">
                                            <div class="col-md-8 col-md-offset-2 text-xs-center">
                                                <h2 class="mbr-section-title display-1">{$item['title']}</h2>
                                                <p class="mbr-section-lead lead">{$item['short_note']}</p>

                                                <div class="mbr-section-btn">
                                                    <a class="btn btn-lg btn-white btn-white-outline" href="/{$base_url}/show.php?id={$item['id']}">More ...</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}
                    {/foreach} 
                </div>

                <a data-app-prevent-settings="" class="left carousel-control" role="button" data-slide="prev" href="#slider-1">
                    <span class="icon-prev" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a data-app-prevent-settings="" class="right carousel-control" role="button" data-slide="next" href="#slider-1">
                    <span class="icon-next" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</section>

<!-- Por Bazdid tarin ha -->
<section class="mbr-cards mbr-section mbr-section-nopadding" id="features3-3" style="background-color: rgb(255, 255, 255);">
    <div class="mbr-cards-row row">
        {foreach $data['most_visit'] as $most}
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

<!-- Mohabob taring ha -->    
<section class="mbr-cards mbr-section mbr-section-nopadding" id="features4-4" style="background-color: rgb(239, 239, 239);">
    <div class="mbr-cards-row row">
        {foreach $data['most_like'] as $like}
            <div class="mbr-cards-col col-xs-12 col-lg-4" style="padding-top: 80px; padding-bottom: 80px;">
                <div class="container">
                    <div class="card cart-block">
                        <div class="card-img iconbox"><a href="/{$base_url}/show.php?id={$like['id']}" class="etl-icon icon-newspaper mbr-iconfont mbr-iconfont-features4" style="color: black;"></a></div>
                        <div class="card-block">
                            <h4 class="card-title">{$like['title']}</h4>
                            <p class="card-text">{$like['short_note']}</p>
                        </div>
                    </div>
                </div>
            </div>
        {/foreach}    
    </div>
</section>

    <!-- Akharin Akhbar -->
<section class="mbr-cards mbr-section mbr-section-nopadding" id="features1-5" style="background-color: rgb(255, 255, 255);">
    <div class="mbr-cards-row row striped">
        {foreach $data['last_insert'] as $last}
            <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 80px; padding-bottom: 80px;">
                <div class="container">
                    <div class="card cart-block">
                        <div class="card-img">
                            {if empty($last['pic_url'])}
                                <img src="/{$base_url}/public/assets/images/table.jpg" class="card-img-top">
                            {/if}
                            {if !empty($last['pic_url'])}
                                <img src="/{$base_url}/public/img/upload/{$most['pic_url']}" class="card-img-top" style="width: 100%;max-height: 180px">   
                            {/if}   
                            <div class="card-block">
                                <h4 class="card-title">{$last['title']}</h4>
                                <p class="card-text">{$last['short_note']}</p>
                                <div class="card-btn"><a href="/{$base_url}/show.php?id={$last['id']}" class="btn btn-primary">MORE</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {/foreach}
        </div>
</section>

