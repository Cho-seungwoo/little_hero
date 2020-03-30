class RanksController < ApplicationController
  def index
    #판매량(별도 데이터 필요)  
    @sales_ranks= Product.order(sales_score: :desc).limit(5)
    #평점 
    @grade_ranks = Review.select("product_id, avg(grade) as average_grade").group("product_id")
    .order("average_grade DESC")
    #후기수
     @vote_ranks = Review.select("product_id, count(*) as vote_count").
     group("product_id").order("count(*) DESC").limit(5)

     #성별
     @gender_male_ranks = Review.joins(:user).where(users: {kid_gender: '0'}).select("product_id, count(*) as vote_count").
     group("product_id").order("count(*) DESC").limit(5)

     @gender_female_ranks = Review.joins(:user).where(users: {kid_gender: '1'}).select("product_id, count(*) as vote_count").
     group("product_id").order("count(*) DESC").limit(5)

     #학년 그룹별 

     age_pri_12_ranks = Review.joins(:user).where(users: {kid_birthdate: '2012-01-01'..'2013-12-31'}).select("product_id, count(*) as vote_count").
     group("product_id").order("count(*) DESC").limit(5)
     #@movies = Movie.where("strftime('%Y', release_date) = ?", 2013)
     age_pri_34_ranks = Review.joins(:user).where(users: {kid_birthdate: '2014-01-01'..'2015-12-31'}).select("product_id, count(*) as vote_count").
     group("product_id").order("count(*) DESC").limit(5)

     age_pri_56_ranks = Review.joins(:user).where(users: {kid_birthdate: '2016-01-01'..'2017-12-31'}).select("product_id, count(*) as vote_count").
     group("product_id").order("count(*) DESC").limit(5)

        if (current_user.kid_birthdate.year == 2012 | 2013)
            @age_pri_ranks  = age_pri_12_ranks
            @class = "1,2"

        elsif (current_user.kid_birthdate.year == 2014 | 2015)
            @age_pri_ranks  = age_pri_34_ranks
            @class = "3,4"
        else (current_user.kid_birthdate.year == 2016 | 2017)
            @age_pri_ranks = age_pri_56_ranks
            @class = "5,6"

        end

      # 동일 연령별

     @same_age_ranks = Review.joins(:user).where(users: {kid_birthdate: current_user.kid_birthdate}).select("product_id, count(*) as vote_count").
     group("product_id").order("count(*) DESC").limit(5)

     #@same_age_ranks = Review.joins(:user).where{|a| a.user.kid_birthdate.year == current_user.kid_birthdate.year}.select("product_id, count(*) as vote_count").
     #group("product_id").order("count(*) DESC").limit(5)


    # all.select{|mov| mov.release_date.to_date.year == params[:ynumber]}


    # @gender_male_ranks = User.includes(:reviews).where('kid_gender' => 0).select("reviews.product_id, reviews.count(*) as vote_count").
    # group("reviews.product_id").order("vote_count DESC").limit(5)

    # Question.includes(:answers).where(:topic => 'MATH', 'answers.result' => 'Unanswered', 'answers.user_id' => 1)

#    @winners = Select.where(option_id: Winner.pluck(:win))


                         
  end

  def sales
    @sales_ranks= Product.order(sales_score: :desc).limit(5)

  end

  def grade
    @grade_ranks = Review.select("product_id, avg(grade) as average_grade").group("product_id")
    .order("average_grade DESC").limit(5)

    # @items = Item.where(:shop_name => @shop.name).joins(:reviews)
    # .select("items.id, avg(reviews.rating) as average_rating, count(reviews.id) as number_of_reviews")
    # .group("items.id")
    # .order("average_rating DESC, number_of_reviews DESC")
    #@grade_ranks = Review.group(:product_id).select(:product_id).order("average(:grade) desc").limit(5) 

  end

  def votes
    @vote_ranks = Review.select("product_id, count(*) as vote_count")
                  .group("product_id").order("count(*) DESC").limit(5)

  end

  def gender

    # @gender_male_ranks = Review.where(user_kid_gender: 0).select("product_id, count(*) as vote_count")
    #                      .group("product_id").order("count(*) DESC").limit(5)

    # @gender_female_ranks = Review.where(user_kid_gender: 1).select("product_id, count(*) as vote_count")
    #                     .group("product_id").order("count(*) DESC").limit(5)

  end
end

 # @items = Item.where(:shop_name => @shop.name).joins(:reviews)
    # .select("items.id, avg(reviews.rating) as average_rating, count(reviews.id) as number_of_reviews")
    # .group("items.id")
    # .order("average_rating DESC, number_of_reviews DESC")
    #@grade_ranks = Review.group(:product_id).select(:product_id).order("average(:grade) desc").limit(5) 
