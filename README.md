# Elixir TinyUrl Exercise

How would you design a service like TinyURL?

## What is TinyURL?

The TinyURL service will take in a URL and will return a shortened version of the URL so when the user navigates to the shortened URL in the browser, it will redirect to the original URL.

## Functional Requirements

- Given a URL, our service should generate a shorter and unique alias of it. This is called a short link. This link should be short enough to be easily copied and pasted into applications.
- When users access a short link, our service should redirect them to the original link.
- Users should optionally be able to pick a custom short link for their URL.
- Links will expire after a standard default timespan. Users should be able to specify the expiration time.
- Users can sign in and see all their created shortened URLs
- It is not required to have an account to create a shortened URL

## Non-Functional Requirements

- The system should be highly available. This is required because, if our service is down, all the URL redirections will start failing.
- URL redirection should happen in real-time with minimal latency.
- Shortened links should not be guessable (not predictable).

## Topics To Discuss

1. Encoding
2. Database
3. Schema
4. Cache
5. Security
6. Requests
7. Availability
8. APIs
