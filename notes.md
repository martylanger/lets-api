1. Generate/Scaffold New Resource
    - "election" resource: `bin/rails generate scaffold election is_profile:boolean has_previews:boolean noms:string voter_opts:string privacy_opts:string close_time:datetime group:string name:string description:string voting_method:string result:string`
    - "ballot" resource: `bin/rails generate scaffold ballot voter_name:string selections:string notes:string close_time:datetime`
    - "choice" resource: `bin/rails generate scaffold choice title:string description:string link:string`


2. Check Generated Files AND Migrate
    - `bin/rails db:migrate`
    - Commit!!!!!!!!!

3. Edit Routes Files
    - Include `except: %i[new edit]` to RESTful routes

4. Generate Migration to Connect Resources
    - `bin/rails generate migration AddUserToElections user:references`
    - `bin/rails generate migration AddElectionToBallots election:references`

5. Check Migration File AND Migrate
    - `bin/rails db:migrate`
    - Commit!!!!!!!!!

6. Add Macros to Models AND Serializers
    - `belongs_to` and `has_many`
    - "user" model AND serializer: `has_many :books`
    - "book" model AND serializer: `belongs_to :user`

7. Add `current_user` to Controller
    - Add to `create` and `set_book`
    - Make sure `delete` and `update` use instance variable from `set_book`
    - If you want to index just the owned resources, use `current_user.books.all`

8. Choose which controller to inherit from
    - `OpenReadController` will NOT require a token for Index/Show
        - NOTE: If using OpenRead, make sure to add the editable method to your resource serializer. See the example serializer.
    - `ProtectedController` will require a token for all actions

TESTING:
   - Browser to see results
   - `bin/rails console`
   - CURL scripts

Notes:
   - `bin/rails db:rollback STEP=3` to rollback 3 migrations
   - `bin/rails generate migration RemoveUserFromBooks user:string` to remove old field references
   - Check your grammar (plural vs singular) and capitalization!!! Rails cares A LOT!!
