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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.BuildSignature do
  @moduledoc """
  Message encapsulating the signature of the verified build.

  ## Attributes

  *   `keyId` (*type:* `String.t`, *default:* `nil`) - An Id for the key used to sign. This could be either an Id for the key
      stored in `public_key` (such as the Id or fingerprint for a PGP key, or the
      CN for a cert), or a reference to an external key (such as a reference to a
      key in Cloud Key Management Service).
  *   `keyType` (*type:* `String.t`, *default:* `nil`) - The type of the key, either stored in `public_key` or referenced in
      `key_id`
  *   `publicKey` (*type:* `String.t`, *default:* `nil`) - Public key of the builder which can be used to verify that the related
      findings are valid and unchanged. If `key_type` is empty, this defaults
      to PEM encoded public keys.

      This field may be empty if `key_id` references an external key.

      For Cloud Build based signatures, this is a PEM encoded public
      key. To verify the Cloud Build signature, place the contents of
      this field into a file (public.pem). The signature field is base64-decoded
      into its binary representation in signature.bin, and the provenance bytes
      from `BuildDetails` are base64-decoded into a binary representation in
      signed.bin. OpenSSL can then verify the signature:
      `openssl sha256 -verify public.pem -signature signature.bin signed.bin`
  *   `signature` (*type:* `String.t`, *default:* `nil`) - Signature of the related `BuildProvenance`, encoded in a base64 string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :keyId => String.t(),
          :keyType => String.t(),
          :publicKey => String.t(),
          :signature => String.t()
        }

  field(:keyId)
  field(:keyType)
  field(:publicKey)
  field(:signature)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.BuildSignature do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.BuildSignature.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.BuildSignature do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
