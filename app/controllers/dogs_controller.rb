class DogsController < ApplicationController
    def index
        @dogs = Dog.all
        render json: @dogs
    end

    def show
        @dogs = Dog.find(params[:id])
        render json: @dogs
    end

    def create
        @dogs = Dog.create(
        name: params[:name],
        breed: params[:breed],
        age: params[:age])
        render json: @dogs, status: :created
    end

    def update
        @dogs = Dog.find(params[:id])
        @dogs.update(
            age: params[:age]
        )
        render json: "Successfully updated"
    end

    def destroy
        @dogs = Dog.find(params[:id])
        @dogs.destroy
        render json: "Successfully deleted"
    end

end
