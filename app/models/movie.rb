class Movie < ActiveRecord::Base

# CREATE
    # instantiates a movie with a given title, and saves it to the database
    def self.create_with_title(title)
       Movie.create(title: title)
    end

# READ
    # returns the first item in the table
    def self.first_movie
        Movie.first
    end

    # returns the last item in the table
    def self.last_movie
        Movie.last
    end

    # returns the number of records in the table
    def self.movie_count
        Movie.count
    end

    # returns a movie from the table based on its attributes with the .find method
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    # returns a movie from the table based on its attributes with the .find_by method
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    # Use a .where clause to select the appropriate movies released after 2002
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

# UPDATE
    # Updates a SINGLE movie using the #update method
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    # Updates the title of ALL records at once using the .update method
    def self.update_all_titles(title)
        Movie.update(title: title)
    end

# DELETE
    # Deletes a single item with the #destroy method
    def self.delete_by_id(id)
        self.destroy(id)
    end

    # Deletes all items at once with the .destroy_all method
    def self.delete_all_movies
        Movie.destroy_all
    end

end