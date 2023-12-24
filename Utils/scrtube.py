import scrapetube

videos = scrapetube.get_channel("UCvHdk-LIQULkJzbY9-aFO8A") # channel id

for video in videos:
    # print(video['videoId'])
    video_url = "https://www.youtube.com/watch?v=" + video['videoId']
    print(video_url)  # concatenated URL
    print()  # add a new line
