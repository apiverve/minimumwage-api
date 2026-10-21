# Minimum Wage API - PHP Package

Minimum Wage provides current minimum wage rates for all US states plus the federal minimum. Includes tipped minimum wages, effective rates (higher of state or federal), and historical federal minimum wage data.

## Installation

Install via Composer:

```bash
composer require apiverve/minimumwage
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Minimumwage\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'state' => 'CA',
    'year' => 2024
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Minimumwage\Client;
use APIVerve\Minimumwage\Exceptions\APIException;
use APIVerve\Minimumwage\Exceptions\ValidationException;

try {
    $response = $client->execute(['state' => 'CA', 'year' => 2024]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/minimumwage?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/minimumwage?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/minimumwage?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
