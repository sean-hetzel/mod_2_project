class QuizzesController < ApplicationController
    before_action :redirect_user

    def index
        @quizzes = Quiz.all 
    end

    def show
        @quiz = Quiz.find(params[:id])
        # @options = @quiz.questions.first.options
        @user_options = UserOption.new 
        #@question = @quiz.questions.first
        #@options = @quiz.questions.first.options
        #render :show
    end

    def new
        @quiz = Quiz.new
    end

    def create 
        #byebug 
    end

    def edit
        @quiz = Quiz.find(params[:id])
    end

end

# <%= @quiz.name %><hr>
# <% @quiz.questions.each do |question| %>
# <%= question.name %><br>
# <% question.options.each do |option| %>
# <% form_for @user_options do |f| %>
# <%= f.label :option_id %>
# <%= f.collection_select :option_id, Option.all, :id, :name %>
# <%= f.submit %>
# <% end %>
# <% end %>
# <% end %>

# <%= @quiz.name %><hr>
# <% @quiz.questions.each do |question| %>
# <%= question.name %><br>
# <% question.options.each do |option| %>
# <% form_for @user_options do |f| %>
# <%= f.label :option_id %>
# <%= f.radio_button option %>
# <%= f.submit %>
# <% end %>
# <% end %>
# <% end %>

# <%= @quiz.name %><hr>


# <% @quiz.questions.each do |question| %>
# <div>

# <%= question.name %><br>

# <form action='/user_options/' method='post'>

# <% end %>
# </div>

# <% end %>