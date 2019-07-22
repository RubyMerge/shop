class MyShopsController < InheritedResources::Base

  private

    def my_shop_params
      params.require(:my_shop).permit(:page_name, :page)
    end

end
