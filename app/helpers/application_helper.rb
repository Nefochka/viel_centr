module ApplicationHelper

  def facebook_like_button_settings
    {
      'data-href' => "http://viel-centr.herokuapp.com/",
      'data-width' => "90",
      'data-height' => "20",
      'data-colorscheme' => "light",
      'data-layout' => "button_count",
      'data-action' => "recommend",
      'data-show-faces' => "false",
      'data-send' => "false"
    }
  end

  def twitter_button_settings
    {
        :href=>"https://twitter.com/share",
        :class=>"twitter-share-button",
        :url=>"http://viel-centr.herokuapp.com/",
        :related=>"jasoncosta",
        :lang=>"ru",
        :size=>"large",
        :count=>"none"
    }
  end

end
