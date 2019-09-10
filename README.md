This repository contains a client library for LaunchDarkly's REST API. This client was automatically
generated from our [OpenAPI specification](https://github.com/launchdarkly/ld-openapi).

This REST API is for custom integrations, data export, or automating your feature flag workflows. *DO NOT* use this client library to include feature flags in your web or mobile application. To integrate feature flags with your application, please see the [SDK documentation](https://docs.launchdarkly.com/v2.0/docs)

# launchdarkly_api

LaunchDarklyApi - the Ruby gem for the LaunchDarkly REST API

Build custom integrations with the LaunchDarkly REST API

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0.19
- Package version: 2.0.19
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://support.launchdarkly.com](https://support.launchdarkly.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build launchdarkly_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./launchdarkly_api-2.0.19.gem
```
(for development, run `gem install --dev ./launchdarkly_api-2.0.19.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'launchdarkly_api', '~> 2.0.19'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'launchdarkly_api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'launchdarkly_api'

# Setup authorization
LaunchDarklyApi.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = LaunchDarklyApi::AuditLogApi.new

opts = { 
  before: 789, # Integer | A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have before this timestamp.
  after: 789, # Integer | A timestamp filter, expressed as a Unix epoch time in milliseconds. All entries returned will have occured after this timestamp.
  q: 'q_example', # String | Text to search for. You can search for the full or partial name of the resource involved or fullpartial email address of the member who made the change.
  limit: 8.14, # Float | A limit on the number of audit log entries to be returned, between 1 and 20.
  spec: 'spec_example' # String | A resource specifier, allowing you to filter audit log listings by resource.
}

begin
  #Get a list of all audit log entries. The query parameters allow you to restrict the returned results by date ranges, resource specifiers, or a full-text search query.
  result = api_instance.get_audit_log_entries(opts)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception when calling AuditLogApi->get_audit_log_entries: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://app.launchdarkly.com/api/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*LaunchDarklyApi::AuditLogApi* | [**get_audit_log_entries**](docs/AuditLogApi.md#get_audit_log_entries) | **GET** /auditlog | Get a list of all audit log entries. The query parameters allow you to restrict the returned results by date ranges, resource specifiers, or a full-text search query.
*LaunchDarklyApi::AuditLogApi* | [**get_audit_log_entry**](docs/AuditLogApi.md#get_audit_log_entry) | **GET** /auditlog/{resourceId} | Use this endpoint to fetch a single audit log entry by its resouce ID.
*LaunchDarklyApi::CustomRolesApi* | [**delete_custom_role**](docs/CustomRolesApi.md#delete_custom_role) | **DELETE** /roles/{customRoleKey} | Delete a custom role by key.
*LaunchDarklyApi::CustomRolesApi* | [**get_custom_role**](docs/CustomRolesApi.md#get_custom_role) | **GET** /roles/{customRoleKey} | Get one custom role by key.
*LaunchDarklyApi::CustomRolesApi* | [**get_custom_roles**](docs/CustomRolesApi.md#get_custom_roles) | **GET** /roles | Return a complete list of custom roles.
*LaunchDarklyApi::CustomRolesApi* | [**patch_custom_role**](docs/CustomRolesApi.md#patch_custom_role) | **PATCH** /roles/{customRoleKey} | Modify a custom role by key.
*LaunchDarklyApi::CustomRolesApi* | [**post_custom_role**](docs/CustomRolesApi.md#post_custom_role) | **POST** /roles | Create a new custom role.
*LaunchDarklyApi::EnvironmentsApi* | [**delete_environment**](docs/EnvironmentsApi.md#delete_environment) | **DELETE** /projects/{projectKey}/environments/{environmentKey} | Delete an environment in a specific project.
*LaunchDarklyApi::EnvironmentsApi* | [**get_environment**](docs/EnvironmentsApi.md#get_environment) | **GET** /projects/{projectKey}/environments/{environmentKey} | Get an environment given a project and key.
*LaunchDarklyApi::EnvironmentsApi* | [**patch_environment**](docs/EnvironmentsApi.md#patch_environment) | **PATCH** /projects/{projectKey}/environments/{environmentKey} | Modify an environment by ID.
*LaunchDarklyApi::EnvironmentsApi* | [**post_environment**](docs/EnvironmentsApi.md#post_environment) | **POST** /projects/{projectKey}/environments | Create a new environment in a specified project with a given name, key, and swatch color.
*LaunchDarklyApi::FeatureFlagsApi* | [**copy_feature_flag**](docs/FeatureFlagsApi.md#copy_feature_flag) | **POST** /flags/{projectKey}/{featureFlagKey}/copy | Copies the feature flag configuration from one environment to the same feature flag in another environment.
*LaunchDarklyApi::FeatureFlagsApi* | [**delete_feature_flag**](docs/FeatureFlagsApi.md#delete_feature_flag) | **DELETE** /flags/{projectKey}/{featureFlagKey} | Delete a feature flag in all environments. Be careful-- only delete feature flags that are no longer being used by your application.
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag**](docs/FeatureFlagsApi.md#get_feature_flag) | **GET** /flags/{projectKey}/{featureFlagKey} | Get a single feature flag by key.
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag_status**](docs/FeatureFlagsApi.md#get_feature_flag_status) | **GET** /flag-statuses/{projectKey}/{environmentKey}/{featureFlagKey} | Get the status for a particular feature flag.
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flag_statuses**](docs/FeatureFlagsApi.md#get_feature_flag_statuses) | **GET** /flag-statuses/{projectKey}/{environmentKey} | Get a list of statuses for all feature flags. The status includes the last time the feature flag was requested, as well as the state of the flag.
*LaunchDarklyApi::FeatureFlagsApi* | [**get_feature_flags**](docs/FeatureFlagsApi.md#get_feature_flags) | **GET** /flags/{projectKey} | Get a list of all features in the given project.
*LaunchDarklyApi::FeatureFlagsApi* | [**patch_feature_flag**](docs/FeatureFlagsApi.md#patch_feature_flag) | **PATCH** /flags/{projectKey}/{featureFlagKey} | Perform a partial update to a feature.
*LaunchDarklyApi::FeatureFlagsApi* | [**post_feature_flag**](docs/FeatureFlagsApi.md#post_feature_flag) | **POST** /flags/{projectKey} | Creates a new feature flag.
*LaunchDarklyApi::ProjectsApi* | [**delete_project**](docs/ProjectsApi.md#delete_project) | **DELETE** /projects/{projectKey} | Delete a project by key. Caution-- deleting a project will delete all associated environments and feature flags. You cannot delete the last project in an account.
*LaunchDarklyApi::ProjectsApi* | [**get_project**](docs/ProjectsApi.md#get_project) | **GET** /projects/{projectKey} | Fetch a single project by key.
*LaunchDarklyApi::ProjectsApi* | [**get_projects**](docs/ProjectsApi.md#get_projects) | **GET** /projects | Returns a list of all projects in the account.
*LaunchDarklyApi::ProjectsApi* | [**patch_project**](docs/ProjectsApi.md#patch_project) | **PATCH** /projects/{projectKey} | Modify a project by ID.
*LaunchDarklyApi::ProjectsApi* | [**post_project**](docs/ProjectsApi.md#post_project) | **POST** /projects | Create a new project with the given key and name.
*LaunchDarklyApi::RootApi* | [**get_root**](docs/RootApi.md#get_root) | **GET** / | 
*LaunchDarklyApi::TeamMembersApi* | [**delete_member**](docs/TeamMembersApi.md#delete_member) | **DELETE** /members/{memberId} | Delete a team member by ID.
*LaunchDarklyApi::TeamMembersApi* | [**get_member**](docs/TeamMembersApi.md#get_member) | **GET** /members/{memberId} | Get a single team member by ID.
*LaunchDarklyApi::TeamMembersApi* | [**get_members**](docs/TeamMembersApi.md#get_members) | **GET** /members | Returns a list of all members in the account.
*LaunchDarklyApi::TeamMembersApi* | [**patch_member**](docs/TeamMembersApi.md#patch_member) | **PATCH** /members/{memberId} | Modify a team member by ID.
*LaunchDarklyApi::TeamMembersApi* | [**post_members**](docs/TeamMembersApi.md#post_members) | **POST** /members | Invite new members.
*LaunchDarklyApi::UserSegmentsApi* | [**delete_user_segment**](docs/UserSegmentsApi.md#delete_user_segment) | **DELETE** /segments/{projectKey}/{environmentKey}/{userSegmentKey} | Delete a user segment.
*LaunchDarklyApi::UserSegmentsApi* | [**get_user_segment**](docs/UserSegmentsApi.md#get_user_segment) | **GET** /segments/{projectKey}/{environmentKey}/{userSegmentKey} | Get a single user segment by key.
*LaunchDarklyApi::UserSegmentsApi* | [**get_user_segments**](docs/UserSegmentsApi.md#get_user_segments) | **GET** /segments/{projectKey}/{environmentKey} | Get a list of all user segments in the given project.
*LaunchDarklyApi::UserSegmentsApi* | [**patch_user_segment**](docs/UserSegmentsApi.md#patch_user_segment) | **PATCH** /segments/{projectKey}/{environmentKey}/{userSegmentKey} | Perform a partial update to a user segment.
*LaunchDarklyApi::UserSegmentsApi* | [**post_user_segment**](docs/UserSegmentsApi.md#post_user_segment) | **POST** /segments/{projectKey}/{environmentKey} | Creates a new user segment.
*LaunchDarklyApi::UserSettingsApi* | [**get_user_flag_setting**](docs/UserSettingsApi.md#get_user_flag_setting) | **GET** /users/{projectKey}/{environmentKey}/{userKey}/flags/{featureFlagKey} | Fetch a single flag setting for a user by key.
*LaunchDarklyApi::UserSettingsApi* | [**get_user_flag_settings**](docs/UserSettingsApi.md#get_user_flag_settings) | **GET** /users/{projectKey}/{environmentKey}/{userKey}/flags | Fetch a single flag setting for a user by key.
*LaunchDarklyApi::UserSettingsApi* | [**put_flag_setting**](docs/UserSettingsApi.md#put_flag_setting) | **PUT** /users/{projectKey}/{environmentKey}/{userKey}/flags/{featureFlagKey} | Specifically enable or disable a feature flag for a user based on their key.
*LaunchDarklyApi::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /users/{projectKey}/{environmentKey}/{userKey} | Delete a user by ID.
*LaunchDarklyApi::UsersApi* | [**get_search_users**](docs/UsersApi.md#get_search_users) | **GET** /user-search/{projectKey}/{environmentKey} | Search users in LaunchDarkly based on their last active date, or a search query. It should not be used to enumerate all users in LaunchDarkly-- use the List users API resource.
*LaunchDarklyApi::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /users/{projectKey}/{environmentKey}/{userKey} | Get a user by key.
*LaunchDarklyApi::UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **GET** /users/{projectKey}/{environmentKey} | List all users in the environment. Includes the total count of users. In each page, there will be up to 'limit' users returned (default 20). This is useful for exporting all users in the system for further analysis. Paginated collections will include a next link containing a URL with the next set of elements in the collection.
*LaunchDarklyApi::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{resourceId} | Delete a webhook by ID.
*LaunchDarklyApi::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /webhooks/{resourceId} | Get a webhook by ID.
*LaunchDarklyApi::WebhooksApi* | [**get_webhooks**](docs/WebhooksApi.md#get_webhooks) | **GET** /webhooks | Fetch a list of all webhooks.
*LaunchDarklyApi::WebhooksApi* | [**patch_webhook**](docs/WebhooksApi.md#patch_webhook) | **PATCH** /webhooks/{resourceId} | Modify a webhook by ID.
*LaunchDarklyApi::WebhooksApi* | [**post_webhook**](docs/WebhooksApi.md#post_webhook) | **POST** /webhooks | Create a webhook.


## Documentation for Models

 - [LaunchDarklyApi::AuditLogEntries](docs/AuditLogEntries.md)
 - [LaunchDarklyApi::AuditLogEntry](docs/AuditLogEntry.md)
 - [LaunchDarklyApi::AuditLogEntryTarget](docs/AuditLogEntryTarget.md)
 - [LaunchDarklyApi::Clause](docs/Clause.md)
 - [LaunchDarklyApi::CopyActions](docs/CopyActions.md)
 - [LaunchDarklyApi::CustomProperty](docs/CustomProperty.md)
 - [LaunchDarklyApi::CustomRole](docs/CustomRole.md)
 - [LaunchDarklyApi::CustomRoleBody](docs/CustomRoleBody.md)
 - [LaunchDarklyApi::CustomRoles](docs/CustomRoles.md)
 - [LaunchDarklyApi::Environment](docs/Environment.md)
 - [LaunchDarklyApi::EnvironmentPost](docs/EnvironmentPost.md)
 - [LaunchDarklyApi::Fallthrough](docs/Fallthrough.md)
 - [LaunchDarklyApi::FeatureFlag](docs/FeatureFlag.md)
 - [LaunchDarklyApi::FeatureFlagBody](docs/FeatureFlagBody.md)
 - [LaunchDarklyApi::FeatureFlagConfig](docs/FeatureFlagConfig.md)
 - [LaunchDarklyApi::FeatureFlagCopyBody](docs/FeatureFlagCopyBody.md)
 - [LaunchDarklyApi::FeatureFlagCopyObject](docs/FeatureFlagCopyObject.md)
 - [LaunchDarklyApi::FeatureFlagStatus](docs/FeatureFlagStatus.md)
 - [LaunchDarklyApi::FeatureFlagStatuses](docs/FeatureFlagStatuses.md)
 - [LaunchDarklyApi::FeatureFlags](docs/FeatureFlags.md)
 - [LaunchDarklyApi::Id](docs/Id.md)
 - [LaunchDarklyApi::Link](docs/Link.md)
 - [LaunchDarklyApi::Links](docs/Links.md)
 - [LaunchDarklyApi::Member](docs/Member.md)
 - [LaunchDarklyApi::Members](docs/Members.md)
 - [LaunchDarklyApi::MembersBody](docs/MembersBody.md)
 - [LaunchDarklyApi::PatchComment](docs/PatchComment.md)
 - [LaunchDarklyApi::PatchOperation](docs/PatchOperation.md)
 - [LaunchDarklyApi::Policy](docs/Policy.md)
 - [LaunchDarklyApi::Prerequisite](docs/Prerequisite.md)
 - [LaunchDarklyApi::Project](docs/Project.md)
 - [LaunchDarklyApi::ProjectBody](docs/ProjectBody.md)
 - [LaunchDarklyApi::Projects](docs/Projects.md)
 - [LaunchDarklyApi::Role](docs/Role.md)
 - [LaunchDarklyApi::Rollout](docs/Rollout.md)
 - [LaunchDarklyApi::Rule](docs/Rule.md)
 - [LaunchDarklyApi::Statement](docs/Statement.md)
 - [LaunchDarklyApi::Statements](docs/Statements.md)
 - [LaunchDarklyApi::Target](docs/Target.md)
 - [LaunchDarklyApi::User](docs/User.md)
 - [LaunchDarklyApi::UserFlagSetting](docs/UserFlagSetting.md)
 - [LaunchDarklyApi::UserFlagSettings](docs/UserFlagSettings.md)
 - [LaunchDarklyApi::UserRecord](docs/UserRecord.md)
 - [LaunchDarklyApi::UserSegment](docs/UserSegment.md)
 - [LaunchDarklyApi::UserSegmentBody](docs/UserSegmentBody.md)
 - [LaunchDarklyApi::UserSegmentRule](docs/UserSegmentRule.md)
 - [LaunchDarklyApi::UserSegments](docs/UserSegments.md)
 - [LaunchDarklyApi::UserSettingsBody](docs/UserSettingsBody.md)
 - [LaunchDarklyApi::Users](docs/Users.md)
 - [LaunchDarklyApi::Variation](docs/Variation.md)
 - [LaunchDarklyApi::Webhook](docs/Webhook.md)
 - [LaunchDarklyApi::WebhookBody](docs/WebhookBody.md)
 - [LaunchDarklyApi::Webhooks](docs/Webhooks.md)
 - [LaunchDarklyApi::WeightedVariation](docs/WeightedVariation.md)


## Documentation for Authorization


### Token

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

## Sample Code

```
# Load the gem
require 'launchdarkly_api'

# Setup authorization
LaunchDarklyApi.configure do |config|
  config.api_key['Authorization'] = ENV['LD_API_KEY']
end

api_instance = LaunchDarklyApi::FeatureFlagsApi.new

project_key = "openapi"
flag_key = "test-ruby"

# Create a flag with a json variations
body = LaunchDarklyApi::FeatureFlagBody.new(
  name: "test-ruby",
  key: flag_key,
  variations: [
    LaunchDarklyApi::Variation.new(value=[1,2]),
    LaunchDarklyApi::Variation.new(value=[3,4]),
    LaunchDarklyApi::Variation.new(value=[5]),
  ])

begin
  result = api_instance.post_feature_flag(project_key, body)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception creating feature flag: #{e}"
end

# Clean up new flag
begin
  result = api_instance.delete_feature_flag(project_key, flag_key)
  p result
rescue LaunchDarklyApi::ApiError => e
  puts "Exception deleting feature flag: #{e}"
end```
