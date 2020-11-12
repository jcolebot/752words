class WritingsController < ApplicationController
    def index
        # if you need a variable in your view, set it up here!
        @all_my_writings = Writing.all
    end

    def show
        # need a variable that represents THIS writing.
        this_writing_id = params["writing_id"]
        @this_writing = Writing.find(this_writing_id)
    end

    # this is the 'make a new writing' page
    def kitten
        render "geoff"
    end

    def create
        # Run a controller action that grabs info from the form, makes a ‘Writing’, and saves it to the db
        # after done saving, go to /

        #make a new writing
        new_writing = Writing.new
        new_writing.title = params[:title]
        new_writing.text = params[:text]
        # save the writing
        new_writing.save

        redirect_to my_home_page_path
    end
end