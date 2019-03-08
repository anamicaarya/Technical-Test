# Technical-Test
Technical test for Thinkdata




1  dataset crud functionality added with (fields - title and file_path)

      to access the datasets on browser (with CRUD functionality)
         http://localhost:3000/datasets
         
       to access the rest functionality from (postman app) the endpoints are
       
                Prefix Verb   URI Pattern                     Controller#Action
preview_dataset GET    /datasets/:id/preview(.:format) datasets#preview
       datasets GET    /datasets(.:format)             datasets#index
                POST   /datasets(.:format)             datasets#create
    new_dataset GET    /datasets/new(.:format)         datasets#new
   edit_dataset GET    /datasets/:id/edit(.:format)    datasets#edit
        dataset GET    /datasets/:id(.:format)         datasets#show
                PATCH  /datasets/:id(.:format)         datasets#update
                PUT    /datasets/:id(.:format)         datasets#update with 
                DELETE /datasets/:id(.:format)         datasets#destroy
                
                
                
     2. 
     http://localhost:3000/datasets?format=json request on postman yields
     
     [
    {
        "id": 23,
        "title": "sample1",
        "file_path": "C:\\Thinkdata\\sample1.csv",
        "created_at": "2019-03-08T03:11:21.519Z",
        "updated_at": "2019-03-08T04:43:07.289Z"
    },
    {
        "id": 24,
        "title": "sample2",
        "file_path": "C:\\Thinkdata\\sample2.csv",
        "created_at": "2019-03-08T04:44:01.808Z",
        "updated_at": "2019-03-08T04:44:01.808Z"
    },
    {
        "id": 25,
        "title": "sample3",
        "file_path": "C:\\Thinkdata\\sample3.csv",
        "created_at": "2019-03-08T04:44:39.643Z",
        "updated_at": "2019-03-08T04:44:39.643Z"
    }
]
                
                
                
     3.  *FEATURE-4*
     
     http://localhost:3000/datasets/24/preview?format=json with postman
     
     [
    {
        "latitude": "50.458542",
        "longitude": "-104.630849",
        "location": "ALBERT SCOTT CENTRE - NEAR 7TH AVE TENNIS COURTS",
        "objectid": "1.0",
        "address": "1264 ATHOL STREET"
    },
    {
        "latitude": "50.461801",
        "longitude": "-104.673663",
        "location": "JACK HAMILTON ARENA - NEAR TENNIS COURTS",
        "objectid": "2.0",
        "address": "1010 MCCARTHY BOULEVARD"
    },
    {
        "latitude": "50.445664",
        "longitude": "-104.623147",
        "location": "CATHEDRAL CENTRE - IN ALLEY",
        "objectid": "3.0",
        "address": "2900 13TH AVENUE"
    },
    {
        "latitude": "50.409397",
        "longitude": "-104.633366",
        "location": "SOUTH LEISURE CENTRE",
        "objectid": "4.0",
        "address": "222 SUNSET DRIVE"
    },
    {
        "latitude": "50.413839",
        "longitude": "-104.609601",
        "location": "MURRAY BALFOUR ARENA",
        "objectid": "5.0",
        "address": "70 MASSEY ROAD"
    },
    {
        "latitude": "50.443114",
        "longitude": "-104.586103",
        "location": "AL RITCHIE",
        "objectid": "6.0",
        "address": "2230 LINDSAY STREET"
    },
    {
        "latitude": "50.429546",
        "longitude": "-104.536848",
        "location": "SOUTHEAST LEISURE CENTRE",
        "objectid": "7.0",
        "address": "3130 E WOODHAMS DRIVE"
    },
    {
        "latitude": "50.455665",
        "longitude": "-104.543944",
        "location": "GLENCAIRN CENTRE",
        "objectid": "8.0",
        "address": "2626 E DEWDNEY AVENUE"
    },
    {
        "latitude": "50.480914",
        "longitude": "-104.613956",
        "location": "NORTHGATE MALL - NEAR THE RECYCLE BINS",
        "objectid": "9.0",
        "address": "7TH AVENUE N  AND LORNE STREET"
    }
]

and with  http://localhost:3000/datasets/24/preview?format=csv with postman
"latitude,longitude,location,objectid,address
","50.458542,-104.630849,ALBERT SCOTT CENTRE - NEAR 7TH AVE TENNIS COURTS,1.0,1264 ATHOL STREET
","50.461801,-104.673663,JACK HAMILTON ARENA - NEAR TENNIS COURTS,2.0,1010 MCCARTHY BOULEVARD
","50.445664,-104.623147,CATHEDRAL CENTRE - IN ALLEY,3.0,2900 13TH AVENUE
","50.409397,-104.633366,SOUTH LEISURE CENTRE,4.0,222 SUNSET DRIVE
","50.413839,-104.609601,MURRAY BALFOUR ARENA,5.0,70 MASSEY ROAD
","50.443114,-104.586103,AL RITCHIE,6.0,2230 LINDSAY STREET
","50.429546,-104.536848,SOUTHEAST LEISURE CENTRE,7.0,3130 E WOODHAMS DRIVE
","50.455665,-104.543944,GLENCAIRN CENTRE,8.0,2626 E DEWDNEY AVENUE
","50.480914,-104.613956,NORTHGATE MALL - NEAR THE RECYCLE BINS,9.0,7TH AVENUE N  AND LORNE STREET
"

     
     
     

