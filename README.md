# Global Pre Test

This repository for global program test solution.
  
## Installation

### Download 

```bash
git clone https://github.com/Gauravbtc/test-globle-web.git
```

### Go to Directory
```
cd test-globle-web
```


### It contains program samples

#### 1. Todo App

User can add todo in list as well as perform delete any item from list

#### Installation

Step 1: Install react-js depending on your os 

Step 2: Go todo-app directory 

```
cd todo-app
```

Step 3: Install dependencies
```
npm install
```

Step 4: start application
```
npm start
```

Step 5: Check your web browser

http://localhost:3000

 
#### 2. Single Variable Integer Queue

It's a ruby application which is perform enqueue and dequeue elements using single integer variable.  

#### Installation

Step 1: Go to ruby-test directory 

```
cd ruby-test
```

Step 2: Install rvm based on your os 

Step 3: bundle install 

Step 4: Run Spec 
```
rspec 
```

#### 3. Improvement of rails action 

Sample code before improvement 

```ruby
# authentication API
def auth
  user = User.find(params[:username])
  if user.check_password(params[:password])
    render json: user
  else
    render json: { errors: ["wrong username or password"] }, status: :unauthorized
  end
end
```

#### Usage

Step 1: Go to rails_test directory
```
cd rails_test
```

Step 2: check AuthenticationsController file 


#### 4 GrapeAPI

it contain information about how rails routing works, differences between rails routes vs Grap API 

check below URL for more details 

https://github.com/Gauravbtc/test-globle-web/tree/master/grape_api
