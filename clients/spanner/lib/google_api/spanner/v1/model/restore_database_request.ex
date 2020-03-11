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

defmodule GoogleApi.Spanner.V1.Model.RestoreDatabaseRequest do
  @moduledoc """
  The request for
  RestoreDatabase.

  ## Attributes

  *   `backup` (*type:* `String.t`, *default:* `nil`) - Name of the backup from which to restore.  Values are of the form
      `projects/<project>/instances/<instance>/backups/<backup>`.
  *   `databaseId` (*type:* `String.t`, *default:* `nil`) - Required. The id of the database to create and restore to. This
      database must not already exist. The `database_id` appended to
      `parent` forms the full database name of the form
      `projects/<project>/instances/<instance>/databases/<database_id>`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backup => String.t(),
          :databaseId => String.t()
        }

  field(:backup)
  field(:databaseId)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.RestoreDatabaseRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.RestoreDatabaseRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.RestoreDatabaseRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
