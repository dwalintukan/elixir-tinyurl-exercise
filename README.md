# Elixir TinyUrl Exercise

How would you design a service like TinyURL?

## Setup

### Requirements

1. Elixir 1.15
2. Erlang/OTP 25
3. Postgres
4. IDE of your choice

### Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install Elixir

```bash
brew install asdf
asdf install elixir 1.15
```

### Install Postgres

```bash
brew install postgres
```

## What is TinyURL

The TinyURL service will take in a URL and will return a shortened version of the URL so when the user navigates to the shortened URL in the browser, it will redirect to the original URL.

### Functional Requirements

1. Given a URL, the service should generate a shorter and unique alias of it. This is called a `short_link`. This link should be short enough to be easily copied and pasted into applications. Don't worry about creating this link, I have created a dummy hashing function just for implementation purposes.
2. When users access a `short_link`, the service should redirect them to the `original_link`.
3. It is not required to have a user account to create a `short_link`. (optional)
4. Links will expire after a standard default timespan. Users should be able to specify the expiration time. (optional)
5. Users should optionally be able to pick a custom `short_link` for their URL. (optional)
6. Registered users can sign in and see all their created `short_links`. (optional)

### Non-Functional Requirements

1. Shortened links should be deterministic.
2. Shortened links should not be guessable (not predictable).
3. The system should be highly available. This is required because, if our service is down, all the URL redirections will start failing.
4. URL redirection should happen in real-time with minimal latency.

## Implementation Details

1. Implement storing of URLs in `cache.ex`
2. Implement the context business logic in `linking.ex`
3. Implement the APIs in `link_controller.ex`
4. Implement the JSON response in `link_view.ex`
5. Implement tests (if time allows)

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
