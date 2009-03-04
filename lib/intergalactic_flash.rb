module IntergalacticFlash
  def self.included(base)
    base.prepend_before_filter :catch_flash_from_params
  end
  
  def catch_flash_from_params
    detected_flash_message = false
    
    params.each do |key, value|
      key = key.to_s
      if key[/^flash_/] && !value.blank?
        flash[key.gsub(/^flash_/, '').to_sym] = value
        detected_flash_message = true
      end
    end
    
    return redirect_to request.path if detected_flash_message #FIXME losing other params
  end
  private :catch_flash_from_params
  
  def redirect_away(url)
    unless flash.blank?
      url << "?" if url.index("?").nil?
      url << flash.collect do |key, value|
        "flash_#{key}=#{value}" if value
      end.compact.join('&')
    end

    flash.discard
    
    redirect_to(url)
  end
  
end
