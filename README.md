# Elixir TinyUrl Exercise

How would you design a service like TinyURL?

## What is TinyURL

The TinyURL service will take in a URL and will return a shortened version of the URL so when the user navigates to the shortened URL in the browser, it will redirect to the original URL.

## Functional Requirements

1. Given a URL, the service should generate a shorter and unique alias of it. This is called a short link. This link should be short enough to be easily copied and pasted into applications. Don't worry about creating this link, I have created a dummy hashing function just for implementation purposes.
2. When users access a short link, our service should redirect them to the original link.
3. Users should optionally be able to pick a custom short link for their URL. (optional)
4. Links will expire after a standard default timespan. Users should be able to specify the expiration time. (optional)
5. Registered users can sign in and see all their created short links. (optional)
6. It is not required to have an account to create a short link. (optional)

## Non-Functional Requirements

1. Shortened links should not be guessable (not predictable).
2. The system should be highly available. This is required because, if our service is down, all the URL redirections will start failing.
3. URL redirection should happen in real-time with minimal latency.

## Implementation Details

1. Implement the business logic in **service.ex**
2. Implement the APIs in **url_controller.ex**
3. Implement the JSON response in **url_view.ex**
4. Implement storing of URLs in **cache.ex**
5. Tests (if time allows)

## Topics To Discuss

1. Encoding
2. Database
3. Schema
4. Cache
5. Security
6. Requests
7. Availability

### Encoding

1. How many chars do you want to use for the shortened URL?
2. How would you shorten the URL so it is unique?
3. Would you return the same URL if the same one is found?
4. How long does it need to be?
5. If you wanted to have different shortened URLs for the same URL, how would you ensure the same shortened URL is not the same?
6. If user is not signed in, how would handle a shortened URL collision?

### Database

1. What DB would you use? Why?
2. How would you shard the DB if a single DB got too large?

### Schema

1. Define what is needed to accomplish all the requirements.

### Cache

1. Would you use a cache?
2. Which one and why?
3. How much cache memory do you think we need?

### Security

1. How would you handle an automated bot spamming of your service and creating useless URLs?

### Requests

1. How would you handle your server being overloaded with requests? Maximum connections reached.

### Availability

1. Assuming this service is accessed all over the world, how would you ensure requests are fast in other countries?
