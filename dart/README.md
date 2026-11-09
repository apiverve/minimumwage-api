# Minimum Wage API - Dart/Flutter Client

Minimum Wage provides current minimum wage rates for all US states plus the federal minimum. Includes tipped minimum wages, effective rates (higher of state or federal), and historical federal minimum wage data.

[![pub package](https://img.shields.io/pub/v/apiverve_minimumwage.svg)](https://pub.dev/packages/apiverve_minimumwage)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Minimum Wage API](https://apiverve.com/marketplace/minimumwage?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_minimumwage: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_minimumwage/apiverve_minimumwage.dart';

void main() async {
  final client = MinimumwageClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'state': 'CA',
      'year': 2024
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Minimum Wage API](https://apiverve.com/marketplace/minimumwage?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/minimumwage](https://docs.apiverve.com/ref/minimumwage?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
