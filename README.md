#Small - Rails API
This is a sample project used to illustrate the Flux architecture with React. Checkout the full article [here](http://fancypixel.github.io/blog/2015/01/28/react-plus-flux-backed-by-rails-api/)

##Setup
```
bundle install
rake db:create
rake db:migrate
rake db:seed
rails s
```

##Consuming the API

####Signup - users#create
```bash
curl -X POST -H "Content-Type: application/json" -d '{"user": {"username": "testuser", "email": "test@example.com", "password": "12341234", "password_confirmation": "12341234"}}' http://localhost:3000/v1/users

>> {"email":"test@example.com","username":"testuser","token_type":"Bearer","user_id":12,"access_token":"12:cccyXLZ7o_XpK6MxU_Bt"}
```

####Login - sessions#create
```bash
curl -X POST -H "Content-Type: application/json" -d '{"email": "test@example.com", "password": "12341234"}' http://localhost:3000/v1/login

>> {"email":"test@example.com","username":"testuser","token_type":"Bearer","user_id":12,"access_token":"12:cccyXLZ7o_XpK6MxU_Bt"}
```

####Create Story - stories#create
```bash
curl -X POST -H "Content-type: application/json" -H "Authorization: 12:cccyXLZ7o_XpK6MxU_Bt" -d '{ "story": { "title": "Test Title", "body": "blah blah blah blah blah blah blah" } }' http://localhost:3000/v1/stories

>> {"story":{"title":"Test Title","body":"blah blah blah blah blah blah blah","created_at":"2015-08-20T19:43:07.701Z","abstract":"blah blah blah blah blah blah blah","id":11,"user":{"username":"testuser"}}}
```

####Show Story - stories#show
```bash
curl -X GET -H "Content-type: application/json" -H "Authorization: 12:cccyXLZ7o_XpK6MxU_Bt" http://localhost:3000/v1/stories/11

>> {"story":{"title":"Test Title","body":"blah blah blah blah blah blah blah","created_at":"2015-08-20T19:43:07.701Z","abstract":"blah blah blah blah blah blah blah","id":11,"user":{"username":"testuser"}}}
```

####All Stories - stories#index
```bash
curl -X GET -H "Content-type: application/json" -H "Authorization: 12:cccyXLZ7o_XpK6MxU_Bt" http://localhost:3000/v1/stories/

>> {"stories":[{"title":"Test Title","created_at":"2015-08-20T19:43:07.701Z","abstract":"blah blah blah blah blah blah blah","id":11,"user":{"username":"testuser"}},{"title":"Direct Communications Manager","created_at":"2015-08-20T17:43:14.845Z","abstract":"Dignissimos quidem voluptas beatae voluptatibus. Nihil dolorem eveniet maxime. Ex aut sapiente laborum vel temporibus tempora nobis. Qui magnam repudiandae ut et. Et minus quia dolorum illo esse. Ut ad","id":10,"user":{"username":"gino_huel"}},{"title":"Senior Creative Assistant","created_at":"2015-08-20T17:43:14.840Z","abstract":"Consequuntur enim nulla. Velit nihil ipsum voluptates nulla aperiam commodi qui. Voluptatem in enim. Placeat voluptate sed et culpa non molestias. Ut et nihil aut iure exercitationem. Ut laborum quia r","id":9,"user":{"username":"ali.keler"}},{"title":"National Interactions Executive","created_at":"2015-08-20T17:43:14.837Z","abstract":"Impedit voluptatem reiciendis est provident quia aut fugit. Officia enim voluptas dignissimos tempora inventore quia possimus. Perferendis eos enim veritatis aspernatur ut. Sed placeat nihil. Suscipit ","id":8,"user":{"username":"ethel.weimann"}},{"title":"Senior Branding Developer","created_at":"2015-08-20T17:43:14.832Z","abstract":"Ut consequatur et ex fuga. Cumque dicta rem vel numquam tempora voluptas ut. Molestiae voluptas qui minima non. Laborum voluptatem consequatur velit sed. Eum eos id. Eum aliquid et iusto non. Asperiore","id":7,"user":{"username":"ali.keler"}},{"title":"Dynamic Metrics Engineer","created_at":"2015-08-20T17:43:14.828Z","abstract":"Ut dignissimos modi aut non. Eaque excepturi ipsa eligendi. Pariatur dolor cupiditate. Libero tenetur hic labore esse. Est amet praesentium quia corporis. Consequatur illum numquam similique deleniti r","id":6,"user":{"username":"ali.keler"}},{"title":"National Branding Specialist","created_at":"2015-08-20T17:43:14.824Z","abstract":"Porro omnis beatae. Omnis magnam quae. Iusto molestias cupiditate architecto consequuntur aut. Saepe placeat in odit eum quaerat commodi molestiae. Modi adipisci corrupti dolores sit vel atque. Magni m","id":5,"user":{"username":"margaretta"}},{"title":"National Interactions Technician","created_at":"2015-08-20T17:43:14.820Z","abstract":"Ipsum nesciunt id autem quas quaerat eum et. Ipsa non est fugiat adipisci. Suscipit facere explicabo consequatur. Eos ducimus corrupti. Ut voluptates nemo veritatis beatae sint. Ratione at quasi eos ma","id":4,"user":{"username":"ethel.weimann"}},{"title":"Internal Intranet Producer","created_at":"2015-08-20T17:43:14.816Z","abstract":"Dolor dolorum omnis eum maxime. Aut necessitatibus aut aspernatur. Nesciunt et provident laudantium explicabo expedita voluptatem distinctio. Iste aperiam veniam veritatis ex incidunt voluptas quisquam","id":3,"user":{"username":"abdullah"}},{"title":"Human Data Engineer","created_at":"2015-08-20T17:43:14.810Z","abstract":"Sapiente architecto unde explicabo sit tempora. Est quia eveniet cumque. Pariatur aut cupiditate qui. Dolor vitae harum eum quia voluptatum consequuntur omnis. Tenetur quasi et. A ut dolores. Amet reru","id":2,"user":{"username":"dawn"}},{"title":"International Optimization Technician","created_at":"2015-08-20T17:43:14.805Z","abstract":"Totam vitae harum reiciendis iste quod. Eum sapiente dolore consequatur et quod molestiae. A laboriosam rem et. Odio rerum perspiciatis quia architecto illum. Et eos eaque nemo. Voluptas eaque voluptat","id":1,"user":{"username":"daphnee"}}]}
```


#MIT License

	Copyright (c) 2015 Fancy Pixel. All rights reserved.

	Permission is hereby granted, free of charge, to any person obtaining a
	copy of this software and associated documentation files (the "Software"),
	to deal in the Software without restriction, including
	without limitation the rights to use, copy, modify, merge, publish,
	distribute, sublicense, and/or sell copies of the Software, and to
	permit persons to whom the Software is furnished to do so, subject to
	the following conditions:

	The above copyright notice and this permission notice shall be included
	in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
	OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
	MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
	IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
	CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
	TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
	SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
	
