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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.MetricDescriptor do
  @moduledoc """
  Defines a metric type and its schema. Once a metric descriptor is created,
  deleting or altering it stops data collection and makes the metric type's
  existing data unusable.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A detailed description of the metric, which can be used in documentation.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A concise name for the metric, which can be displayed in user interfaces.
      Use sentence case without an ending period, for example "Request count".
      This field is optional but it is recommended to be set for any metrics
      associated with user-visible concepts, such as Quota.
  *   `labels` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor.t)`, *default:* `nil`) - The set of labels that can be used to describe a specific
      instance of this metric type. For example, the
      `appengine.googleapis.com/http/server/response_latencies` metric
      type has a label for the HTTP response code, `response_code`, so
      you can look at latencies for successful responses or just
      for responses that failed.
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - Optional. The launch stage of the metric definition.
  *   `metadata` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.MetricDescriptorMetadata.t`, *default:* `nil`) - Optional. Metadata which can be used to guide usage of the metric.
  *   `metricKind` (*type:* `String.t`, *default:* `nil`) - Whether the metric records instantaneous values, changes to a value, etc.
      Some combinations of `metric_kind` and `value_type` might not be supported.
  *   `monitoredResourceTypes` (*type:* `list(String.t)`, *default:* `nil`) - Read-only. If present, then a time
      series, which is identified partially by
      a metric type and a MonitoredResourceDescriptor, that is associated
      with this metric type can only be associated with one of the monitored
      resource types listed here.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the metric descriptor.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The metric type, including its DNS name prefix. The type is not
      URL-encoded.  All user-defined metric types have the DNS name
      `custom.googleapis.com` or `external.googleapis.com`.  Metric types should
      use a natural hierarchical grouping. For example:

          "custom.googleapis.com/invoice/paid/amount"
          "external.googleapis.com/prometheus/up"
          "appengine.googleapis.com/http/server/response_latencies"
  *   `unit` (*type:* `String.t`, *default:* `nil`) - * `Ki`    kibi    (2^10)
      * `Mi`    mebi    (2^20)
      * `Gi`    gibi    (2^30)
      * `Ti`    tebi    (2^40)
      * `Pi`    pebi    (2^50)

      **Grammar**

      The grammar also includes these connectors:

      * `/`    division or ratio (as an infix operator). For examples,
               `kBy/{email}` or `MiBy/10ms` (although you should almost never
               have `/s` in a metric `unit`; rates should always be computed at
               query time from the underlying cumulative or delta value).
      * `.`    multiplication or composition (as an infix operator). For
               examples, `GBy.d` or `k{watt}.h`.

      The grammar for a unit is as follows:

          Expression = Component { "." Component } { "/" Component } ;

          Component = ( [ PREFIX ] UNIT | "%" ) [ Annotation ]
                    | Annotation
                    | "1"
                    ;

          Annotation = "{" NAME "}" ;

      Notes:

      * `Annotation` is just a comment if it follows a `UNIT`. If the annotation
         is used alone, then the unit is equivalent to `1`. For examples,
         `{request}/s == 1/s`, `By{transmitted}/s == By/s`.
      * `NAME` is a sequence of non-blank printable ASCII characters not
         containing `{` or `}`.
      * `1` represents a unitary [dimensionless
         unit](https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such
         as in `1/s`. It is typically used when none of the basic units are
         appropriate. For example, "new users per day" can be represented as
         `1/d` or `{new-users}/d` (and a metric value `5` would mean "5 new
         users). Alternatively, "thousands of page views per day" would be
         represented as `1000/d` or `k1/d` or `k{page_views}/d` (and a metric
         value of `5.3` would mean "5300 page views per day").
      * `%` represents dimensionless value of 1/100, and annotates values giving
         a percentage (so the metric values are typically in the range of 0..100,
         and a metric value `3` means "3 percent").
      * `10^2.%` indicates a metric contains a ratio, typically in the range
         0..1, that will be multiplied by 100 and displayed as a percentage
         (so a metric value `0.03` means "3 percent").
  *   `valueType` (*type:* `String.t`, *default:* `nil`) - Whether the measurement is an integer, a floating-point number, etc.
      Some combinations of `metric_kind` and `value_type` might not be supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :displayName => String.t(),
          :labels => list(GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor.t()),
          :launchStage => String.t(),
          :metadata => GoogleApi.ServiceConsumerManagement.V1.Model.MetricDescriptorMetadata.t(),
          :metricKind => String.t(),
          :monitoredResourceTypes => list(String.t()),
          :name => String.t(),
          :type => String.t(),
          :unit => String.t(),
          :valueType => String.t()
        }

  field(:description)
  field(:displayName)
  field(:labels, as: GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor, type: :list)
  field(:launchStage)
  field(:metadata, as: GoogleApi.ServiceConsumerManagement.V1.Model.MetricDescriptorMetadata)
  field(:metricKind)
  field(:monitoredResourceTypes, type: :list)
  field(:name)
  field(:type)
  field(:unit)
  field(:valueType)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.MetricDescriptor do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.MetricDescriptor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.MetricDescriptor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
