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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandOutputs do
  @moduledoc """
  DEPRECATED - use CommandResult instead.
  Describes the actual outputs from the task.

  ## Attributes

  *   `exitCode` (*type:* `integer()`, *default:* `nil`) - exit_code is only fully reliable if the status' code is OK. If the task
      exceeded its deadline or was cancelled, the process may still produce an
      exit code as it is cancelled, and this will be populated, but a successful
      (zero) is unlikely to be correct unless the status code is OK.
  *   `outputs` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest.t`, *default:* `nil`) - The output files. The blob referenced by the digest should contain
      one of the following (implementation-dependent):
         * A marshalled DirectoryMetadata of the returned filesystem
         * A LUCI-style .isolated file
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exitCode => integer(),
          :outputs =>
            GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest.t()
        }

  field(:exitCode)

  field(:outputs,
    as: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandOutputs do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandOutputs.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandOutputs do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end