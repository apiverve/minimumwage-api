# Minimum Wage API - Ruby Gem

Minimum Wage provides current minimum wage rates for all US states plus the federal minimum. Includes tipped minimum wages, effective rates (higher of state or federal), and historical federal minimum wage data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_minimumwage'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_minimumwage
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_minimumwage'

# Initialize the client
client = APIVerve::Minimumwage::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  state: "CA",
  year: 2024
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ state: "CA", year: 2024 })
  puts response["data"]
rescue APIVerve::Minimumwage::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Minimumwage::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Minimumwage::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "state": "CA",
    "stateName": "California",
    "year": 2026,
    "minimumWage": 16.9,
    "stateRate": 16.9,
    "federalRate": 7.25,
    "tippedMinimum": null,
    "usesFederalRate": false,
    "aboveFederal": true,
    "federalDifference": 9.65,
    "annualIncome40hrs": 35152,
    "note": null,
    "formatted": {
      "minimumWage": "$16.90/hr",
      "annualIncome": "$35,152.00"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/minimumwage?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/minimumwage?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/minimumwage?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
