module Api
  class DataSourcesController  < ApplicationController   
    respond_to :json
    def index
      
      puts "entry entry"
      plugin = Sources.plugin_clazz('datapoints', 'demo')
      puts plugin
      result = plugin.new.get()
      puts result.to_json
      
      #respond_to do |format|
       # format.js {
        #  respond_with(result.to_json)
        #}
      #end
    respond_with(result.to_json)
    end

  end
end