require 'roda'
require './dal'
require 'rspec'

class App < Roda
    plugin :json
    plugin :render
    plugin :all_verbs

    route do |r|

      r.is "home"do
            "<h1>Welcome to Shloklabs</h1>"
     end

        # to render html page
   r.is "login" do
           render('form')
       end

        # to make it as rest
  r.is "details" do
           instance = Dal.new
        puts r.params['name']
          
           instance.addUser(r.params['name'],r.params['mail'],r.params['age'],r.params['gender'],r.params['city'])

           r.params['name'] + "=>" + r.params['mail'] + "=>" + r.params['age'] + "=>" + r.params['gender'] + "=>" + r.params['city']
            "Thanks for  Entering ur details"
        end

   #  r.is "update" do
    #      instance = Dal.new
     #   puts r.params['name']
         
          
      #    instance.updateUser(r.params['name'],r.params['mail'])
        
       #  r.params['name'] + "=>" + r.params['mail'] 
        #end

     r.is "delete" do
          instance = Dal.new
           puts r.params['name']
         
          
          instance.deleteUser(r.params['name'])
        
          r.params['name'] 
        end
 
        r.is "upload" do
          instance = Dal.new
         puts r.params['filename']
          instance.uploadUser(r.params['filename'])
          
          r.params['filename']
         #  puts "Thanks for uploading ur file"                                 
         # instance.uploadUser(r.params['name'])
        
         # r.params['name'] 
        end
  
      
   end
end
=begin
describe "App" do
  it "welcome to web" do
      route do |r|
          r.is "login" do
              it "renders the login page" do
              get :form
              expect(response.body).to eq("")
          end
      end
  end
#rspec
  describe "user" do
      before do
          instance=Dal.new
          it "users name" do
              route do |r|
                  r.is "user" do
              expect(instance.name).to eq("")
              expect(instance.mail).to eq("")
              expect(instance.age).to eq("")
              expect(instance.gender).to eq("")
              expect(instance.city).to eq("")
          end
      end
  end
   describe "update" do
      before do
          instance=Dal.new
          it "updating" do
              route do |r|
                  r.is "update" do
                      expect(instance.name).to eq("")
              expect(instance.mail).to eq("")
                  end
              end
          end
=end
#describe App do
 # context "when testing App" do
  #it "welcome to web page" do
   # hw=App.new
    #msg=hw.home
    #expect(msg).to eql 'Welcome to buzzn'


    

=begin    

require 'rspec-roda'
RSpec.describe App, roda: :app do
    describe 'home' do
        before { get 'home'}

        it{ is_expected.to be_successful }
        its(:body) { is_expected.to eq "<h1>Welcome to Shloklabs</h1>" }
    end
end


    

    
rescue => exception
    
end
require 'rspec-roda'
describe "views/form.html.erb" do
    it "shows all the widgets" do
      render  
    end
  end


describe "login/form.erb" do 
  it "renders a form to create a login" do

    render
    rendered.should have_selector("form", :method => "post", :action =>login) do |form|
        form.should have_selector("input",:type => "submit")
    end
  end
  describe "update" do
    it "update a value " do
        instance = Dal.new
        put :update, :name=>updateUser, :mail=>updateUser
        instance.should eq("updateUser")
    end
  end
  describe "delete/rspec/{:name,:mail}" do
    it "deletes a rspec" do
        delete ""
        expect(response.status).to eq("")
end
end
=end