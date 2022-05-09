# CircleCi::InlineResponse20012

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**average_test_count** | **Integer** | The average number of tests executed per run | 
**most_failed_tests** | [**Array&lt;InlineResponse20012MostFailedTests&gt;**](InlineResponse20012MostFailedTests.md) | Metrics for the most frequently failing tests | 
**most_failed_tests_extra** | **Integer** | The number of tests with the same success rate being omitted from most_failed_tests | 
**slowest_tests** | [**Array&lt;InlineResponse20012MostFailedTests&gt;**](InlineResponse20012MostFailedTests.md) | Metrics for the slowest running tests | 
**slowest_tests_extra** | **Integer** | The number of tests with the same duration rate being omitted from slowest_tests | 
**total_test_runs** | **Integer** | The total number of test runs | 
**test_runs** | [**Array&lt;InlineResponse20012TestRuns&gt;**](InlineResponse20012TestRuns.md) | Test counts grouped by pipeline number and workflow id | 

