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

defmodule GoogleApi.AndroidEnterprise.V1.Model.User do
  @moduledoc """
  A Users resource represents an account associated with an enterprise. The
  account may be specific to a device or to an individual user (who can then
  use the account across multiple devices). The account may provide access to
  managed Google Play only, or to other Google services, depending on the
  identity model:
  <ul><li>The Google managed domain identity model requires synchronization to
  Google account sources (via <code>primaryEmail</code>).</li>
  <li>The managed Google Play Accounts identity model provides a dynamic means
  for enterprises to create user or device accounts as needed. These accounts
  provide access to managed Google Play.</li>
  </ul>

  ## Attributes

  *   `accountIdentifier` (*type:* `String.t`, *default:* `nil`) - A unique identifier you create for this user, such as "user342" or
      "asset#44418". Do not use personally identifiable information (PII) for
      this property. Must always be set for EMM-managed users.
      Not set for Google-managed users.
  *   `accountType` (*type:* `String.t`, *default:* `nil`) - The type of account that this user represents. A <code>userAccount</code>
      can be installed on multiple devices, but a <code>deviceAccount</code> is
      specific to a single device. An EMM-managed user (<code>emmManaged</code>)
      can be either type (<code>userAccount</code>, <code>deviceAccount</code>),
      but a Google-managed user (<code>googleManaged</code>) is always a
      <code>userAccount</code>.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The name that will appear in user interfaces. Setting this property is
      optional when creating EMM-managed users. If you do set this property,
      use something generic about the organization (such as "Example, Inc.") or
      your name (as EMM).
      Not used for Google-managed user accounts.
      @mutable androidenterprise.users.update
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique ID for the user.
  *   `managementType` (*type:* `String.t`, *default:* `nil`) - The entity that manages the user.  With <code>googleManaged</code> users,
      the source of truth is Google so EMMs have to make sure a Google Account
      exists for the user.  With <code>emmManaged</code> users, the
      EMM is in charge.
  *   `primaryEmail` (*type:* `String.t`, *default:* `nil`) - The user's primary email address, for example, "jsmith@example.com".
      Will always be set for Google managed users and not set for EMM managed
      users.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountIdentifier => String.t(),
          :accountType => String.t(),
          :displayName => String.t(),
          :id => String.t(),
          :managementType => String.t(),
          :primaryEmail => String.t()
        }

  field(:accountIdentifier)
  field(:accountType)
  field(:displayName)
  field(:id)
  field(:managementType)
  field(:primaryEmail)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.User do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
