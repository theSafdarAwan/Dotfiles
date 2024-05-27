import scrapetube

videos = scrapetube.get_channel("UCiQfc9th0vcmbs0B-YX8_Tg") # channel id

for video in videos:
    # print(video['videoId'])
    video_url = "https://www.youtube.com/watch?v=" + video['videoId']
    print(video_url)  # concatenated URL
