# Dillinger

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Do certain set of countries show similar music listening behaviour?
How can we leverage this to help artist plan expand their target audience?

[![N|Solid](https://github.com/mihirahuja1/Spotify-Artist-Region-Discovery/blob/master/Images/Screen%20Shot%202020-07-18%20at%203.55.43%20PM.png)](https://nodesource.com/products/nsolid)


# Artist Region Discovery!

  - Using Spotify's Top 200 Charts for 57 Countries, I have tried to come up with a way to predict where an artist's music can be appreciated and matches taste of people.
  - Also included are some trends of world's listening behvaior.
 
  
## The First Step is to collect Charts for all the countries where Spotify is available.
There was some issue fetching the data fro 'Andora' so had to drop it eventually.

<Insert screenshot of pandas frame from collectcahrts>


## The Second step and quite an important step is to gather meta-information for the above collected songs

For any song there will be meta information like how danceable is the song, how energetic is it, etc?
These features are the building blocks of the model

The file MetaInformationForCharts.ipynb covers this step.
For this purpose I have used Spotipy which is a lightweight api to extract information from Spotify.

[![N|Solid](https://github.com/mihirahuja1/Spotify-Artist-Region-Discovery/blob/master/Images/Screen%20Shot%202020-07-18%20at%204.46.32%20PM.png)](https://nodesource.com/products/nsolid)

[![N|Solid](https://github.com/mihirahuja1/Spotify-Artist-Region-Discovery/blob/master/Images/Screen%20Shot%202020-07-18%20at%204.48.24%20PM.png
)](https://nodesource.com/products/nsolid)

## The third step is to obtained a linear representation of all the audio features
 - For this the data is normalized 
 - Then PCA is applied for 2 components(For simplicity and viz)
 
 [![N|Solid](https://github.com/mihirahuja1/Spotify-Artist-Region-Discovery/blob/master/Images/Screen%20Shot%202020-07-18%20at%204.50.46%20PM.png)](https://nodesource.com/products/nsolid)

 
## Next step is to performs clustering to find countries that are similar and dissimilar

[![N|Solid](https://github.com/mihirahuja1/Spotify-Artist-Region-Discovery/blob/master/Images/Screen%20Shot%202020-07-18%20at%204.51.18%20PM.png)](https://nodesource.com/products/nsolid)


## Once clustering is done, I ran a Decision Tree to understand the rule based approach to create clusters.


[![N|Solid](https://github.com/mihirahuja1/Spotify-Artist-Region-Discovery/blob/master/Screen%20Shot%202020-07-18%20at%203.14.15%20PM.png)](https://nodesource.com/products/nsolid)




