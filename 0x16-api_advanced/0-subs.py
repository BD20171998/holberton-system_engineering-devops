#!/usr/bin/python3

from requests import get


def number_of_subscribers(subreddit):
    """
    function that queries the Reddit API and returns the number of subscribers
    (not active users, total subscribers) for a given subreddit.
    """

    user_agent = {'User-agent': 'Google Chrome Version 81.0.4044.129 '}
    url = 'https://www.reddit.com/r/' + subreddit + '.json'

    response = get(url, headers=user_agent)
    all_data = response.json()

    raw_data = all_data['data']
    raw_data2 = raw_data['children']

    total = raw_data2[0]['data']['subreddit_subscribers']

    if total is None:
        return 0

    else:
        return total
