# CircleCi::Schedule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the schedule. | 
**timetable** | [**ProjectprojectslugscheduleTimetable**](ProjectprojectslugscheduleTimetable.md) |  | 
**updated_at** | **DateTime** | The date and time the pipeline was last updated. | 
**name** | **String** | Name of the schedule. | 
**created_at** | **DateTime** | The date and time the pipeline was created. | 
**project_slug** | **String** | The project-slug for the schedule | 
**parameters** | [**Hash&lt;String, null&gt;**](.md) | Pipeline parameters represented as key-value pairs. Must contain branch or tag. | 
**actor** | [**User1**](User1.md) |  | 
**description** | **String** | Description of the schedule. | 

