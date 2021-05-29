class MilestonesController < ApplicationController
    def index
        @contracts = Contract.all
       
    end
end
