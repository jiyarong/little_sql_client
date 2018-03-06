module LittleSqlClient
  class ClientController < ActionController::Base
    before_action :check_ip, if: -> () {Rails.env == 'production'}

    def index
      search
    end

    def search
      params[:limit_number] = 200 if params[:limit_number].blank?
      params[:limit_number] = 1000 if params[:limit_number].to_i > 1000

      (render :text=>"<script>alert('Illegal operate：delete,update,drop,alter,modify,create！');history.back()</script>"; return) if params[:sql_text]&&params[:sql_text]=~/^(update|create|alter|modify|drop|delete)/

      @total_number = params[:sql_text].blank? ? 0 : ActiveRecord::Base.connection.select_all("select count(*) from (#{params[:sql_text]}) as must_has_alias").rows.first.first
      @results = params[:sql_text].blank? ? nil : ActiveRecord::Base.connection.select_all("select * from (#{params[:sql_text]}) as must_has_alias limit #{params[:limit_number]}")
      render template: "little_sql_client/client/index"
    rescue => e
      @total_number = 0
      @results = nil
      @error = e.message
    end

    private

    def check_ip
      redirect_to "/" unless LittleSqlClient::Config.ip_white_list.include?(request.ip)
    end
  end


end