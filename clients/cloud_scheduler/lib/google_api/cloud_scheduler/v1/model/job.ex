# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudScheduler.V1.Model.Job do
  @moduledoc """
  Configuration for a job.
  The maximum allowed size for a job is 100KB.

  ## Attributes

  *   `appEngineHttpTarget` (*type:* `GoogleApi.CloudScheduler.V1.Model.AppEngineHttpTarget.t`, *default:* `nil`) - App Engine HTTP target.
  *   `attemptDeadline` (*type:* `String.t`, *default:* `nil`) - The deadline for job attempts. If the request handler does not respond by
      this deadline then the request is cancelled and the attempt is marked as a
      `DEADLINE_EXCEEDED` failure. The failed attempt can be viewed in
      execution logs. Cloud Scheduler will retry the job according
      to the RetryConfig.

      The allowed duration for this deadline is:
      * For HTTP targets, between 15 seconds and 30 minutes.
      * For App Engine HTTP targets, between 15
        seconds and 24 hours.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optionally caller-specified in CreateJob or
      UpdateJob.

      A human-readable description for the job. This string must not contain
      more than 500 characters.
  *   `httpTarget` (*type:* `GoogleApi.CloudScheduler.V1.Model.HttpTarget.t`, *default:* `nil`) - HTTP target.
  *   `lastAttemptTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the last job attempt started.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optionally caller-specified in CreateJob, after
      which it becomes output only.

      The job name. For example:
      `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.

      * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
         hyphens (-), colons (:), or periods (.).
         For more information, see
         [Identifying
         projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
      * `LOCATION_ID` is the canonical ID for the job's location.
         The list of available locations can be obtained by calling
         ListLocations.
         For more information, see https://cloud.google.com/about/locations/.
      * `JOB_ID` can contain only letters ([A-Za-z]), numbers ([0-9]),
         hyphens (-), or underscores (_). The maximum length is 500 characters.
  *   `pubsubTarget` (*type:* `GoogleApi.CloudScheduler.V1.Model.PubsubTarget.t`, *default:* `nil`) - Pub/Sub target.
  *   `retryConfig` (*type:* `GoogleApi.CloudScheduler.V1.Model.RetryConfig.t`, *default:* `nil`) - Settings that determine the retry behavior.
  *   `schedule` (*type:* `String.t`, *default:* `nil`) - Required, except when used with UpdateJob.

      Describes the schedule on which the job will be executed.

      The schedule can be either of the following types:

      * [Crontab](http://en.wikipedia.org/wiki/Cron#Overview)
      * English-like
      [schedule](https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules)

      As a general rule, execution `n + 1` of a job will not begin
      until execution `n` has finished. Cloud Scheduler will never
      allow two simultaneously outstanding executions. For example,
      this implies that if the `n+1`th execution is scheduled to run at
      16:00 but the `n`th execution takes until 16:15, the `n+1`th
      execution will not start until `16:15`.
      A scheduled start time will be delayed if the previous
      execution has not ended when its scheduled time occurs.

      If retry_count > 0 and a job attempt fails,
      the job will be tried a total of retry_count
      times, with exponential backoff, until the next scheduled start
      time.
  *   `scheduleTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The next time the job is scheduled. Note that this may be a
      retry of a previously failed attempt or the next execution time
      according to the schedule.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the job.
  *   `status` (*type:* `GoogleApi.CloudScheduler.V1.Model.Status.t`, *default:* `nil`) - Output only. The response from the target for the last attempted execution.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - Specifies the time zone to be used in interpreting
      schedule. The value of this field must be a time
      zone name from the [tz database](http://en.wikipedia.org/wiki/Tz_database).

      Note that some time zones include a provision for
      daylight savings time. The rules for daylight saving time are
      determined by the chosen tz. For UTC use the string "utc". If a
      time zone is not specified, the default will be in UTC (also known
      as GMT).
  *   `userUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time of the job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appEngineHttpTarget => GoogleApi.CloudScheduler.V1.Model.AppEngineHttpTarget.t(),
          :attemptDeadline => String.t(),
          :description => String.t(),
          :httpTarget => GoogleApi.CloudScheduler.V1.Model.HttpTarget.t(),
          :lastAttemptTime => DateTime.t(),
          :name => String.t(),
          :pubsubTarget => GoogleApi.CloudScheduler.V1.Model.PubsubTarget.t(),
          :retryConfig => GoogleApi.CloudScheduler.V1.Model.RetryConfig.t(),
          :schedule => String.t(),
          :scheduleTime => DateTime.t(),
          :state => String.t(),
          :status => GoogleApi.CloudScheduler.V1.Model.Status.t(),
          :timeZone => String.t(),
          :userUpdateTime => DateTime.t()
        }

  field(:appEngineHttpTarget, as: GoogleApi.CloudScheduler.V1.Model.AppEngineHttpTarget)
  field(:attemptDeadline)
  field(:description)
  field(:httpTarget, as: GoogleApi.CloudScheduler.V1.Model.HttpTarget)
  field(:lastAttemptTime, as: DateTime)
  field(:name)
  field(:pubsubTarget, as: GoogleApi.CloudScheduler.V1.Model.PubsubTarget)
  field(:retryConfig, as: GoogleApi.CloudScheduler.V1.Model.RetryConfig)
  field(:schedule)
  field(:scheduleTime, as: DateTime)
  field(:state)
  field(:status, as: GoogleApi.CloudScheduler.V1.Model.Status)
  field(:timeZone)
  field(:userUpdateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudScheduler.V1.Model.Job do
  def decode(value, options) do
    GoogleApi.CloudScheduler.V1.Model.Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudScheduler.V1.Model.Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end