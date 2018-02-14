class NewsfeedController < ApplicationController
	# JSON endpoint that returns an array of Post objects in order of
	# newest first, to oldest last. Each Post contains a User object
	# (the author of the Post), and an array of Comments. Each Comment
	# will also include the User object of the Comment's author.
	
	# TODO: Newsfeed endpoint here

	def index
		result = []
		@posts = Post.all.order('created_at desc')
		@posts.each { |post| result << generate_post_hash(post) }
		@result = result.to_json
	end

	def generate_post_hash(post)
		comment_array = []
		post_hash = get_type_user_content(post)
		post.comments.each { |comment| comment_array << get_type_user_content(comment) }
		post_hash["comments"] = comment_array
		post_hash
	end

	def generate_user_hash(user)
		{
			"type" => user.model_name.name,
			"name" => user.name
		}
	end

	def get_type_user_content(obj)
		{
		 "type" => obj.model_name.name,
      "user" => generate_user_hash(obj.user),
      "content" => obj.content
		}
	end
end
