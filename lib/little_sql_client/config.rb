module LittleSqlClient
  class Config
    class << self
      def ip_white_list
        @white_list || []
      end

      def ip_white_list= ips
        ips =[ips] unless ips.is_a?(Array)
        @white_list = ips
      end
    end
  end
end