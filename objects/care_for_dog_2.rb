#!/usr/bin/env ruby
# Comment for DogCare class
class DogCare
  def initialize
    @dog_fed = false
    @dog_walked = false
    @dog_petted = false
  end

  def present_options
    if @dog_fed && @dog_walked == true
      dog_tasks_completed = "You\'re one heck of a dog owner.
        Keep petting your pup or head to bed.  Your choice."
      puts dog_tasks_completed.center(30)
      @user_options_array.push('Go to bed (b)')
    end
    display_present_options
  end

  def display_present_options
    puts
    puts @user_options_array
    user_action = gets.chomp
    pet_dog if user_action == 'p'
    feed_dog if user_action == 'f'
    walk_dog if user_action == 'w'
  end

  def define_actions
    @str_pet_dog = 'Pet your dog (p)'
    @str_walk_dog = 'Walk dog dog (w)'
    @str_feed_dog = 'Feed your dog (f)'
    @user_options_array = [@str_pet_dog, @str_walk_dog, @str_feed_dog]
  end

  def pet_dog
    puts 'Your dog reciprocates your affection with an admiring gaze...'
    present_options
  end

  def feed_dog
    @user_options_array.delete(@str_feed_dog)
    puts
    puts 'Your dog is full and happy!'
    puts
    @dog_fed = true
    present_options
  end

  def walk_dog
    @user_options_array.delete(@str_walk_dog)
    puts 'Your dog is walked happy!'
    @dog_walked = true
    present_options
  end

  def dog_intro
    intro_string =
      "Having a dog is a big responsibiliy. In this program,
      you have to feed your dog (f), walk your dog (w) and pet
      your dog (p) You have to walk and feed your dog once. You can pet your dog
      as much as you like. After you have done all three,
      you can go to bed or keep petting your dog."
    puts intro_string.center(80)
    puts
    puts @prompt_user = 'What would you like to do?'
    puts
  end
end

object = DogCare.new
object.dog_intro
object.define_actions
object.present_options
# object.display_present_options
