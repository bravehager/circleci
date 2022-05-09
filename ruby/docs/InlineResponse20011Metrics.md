# CircleCi::InlineResponse20011Metrics

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_runs** | **Integer** | The total number of runs. | 
**successful_runs** | **Integer** | The number of successful runs. | 
**mttr** | **Integer** | The mean time to recovery (mean time between failures and their next success) in seconds. | 
**total_credits_used** | **Integer** | The total credits consumed by the workflow in the aggregation window. Note that Insights is not a real time financial reporting tool and should not be used for credit reporting. | 
**failed_runs** | **Integer** | The number of failed runs. | 
**success_rate** | **Float** |  | 
**window_start** | **DateTime** | The start of the aggregation window for workflow metrics. | 
**duration_metrics** | [**InlineResponse20011MetricsDurationMetrics**](InlineResponse20011MetricsDurationMetrics.md) |  | 
**window_end** | **DateTime** | The end of the aggregation window for workflow metrics. | 
**throughput** | **Float** | The average number of runs per day. | 

