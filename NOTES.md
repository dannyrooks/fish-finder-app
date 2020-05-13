Backend
    models
        location
            name:string
            state:string
            city:string
            country:string

        fish locations
            fish : belongs_to
            location :belongs_to

        fish
            name:string
            fish_type:string
            

Frontend
