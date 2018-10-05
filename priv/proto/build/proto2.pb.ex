defmodule ProtoTest2.Structure1 do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          field1: non_neg_integer,
          field2: String.t(),
          field3: non_neg_integer,
          field4: String.t(),
          field5: non_neg_integer,
          field6: String.t(),
          field7: non_neg_integer,
          field8: String.t(),
          field9: non_neg_integer,
          field10: String.t(),
          field11: integer
        }
  defstruct [
    :field1,
    :field2,
    :field3,
    :field4,
    :field5,
    :field6,
    :field7,
    :field8,
    :field9,
    :field10,
    :field11
  ]

  field :field1, 1, required: true, type: :uint32
  field :field2, 2, required: true, type: :string
  field :field3, 3, required: true, type: :uint32
  field :field4, 4, required: true, type: :string
  field :field5, 5, required: true, type: :uint32
  field :field6, 6, required: true, type: :string
  field :field7, 7, required: true, type: :uint32
  field :field8, 8, required: true, type: :string
  field :field9, 9, required: true, type: :uint32
  field :field10, 10, required: true, type: :string
  field :field11, 11, required: true, type: ProtoTest2.Type1, enum: true
end

defmodule ProtoTest2.Structure2 do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          field1: non_neg_integer,
          field2: String.t(),
          field3: ProtoTest2.Structure1.t(),
          field4: String.t(),
          field5: non_neg_integer,
          field6: ProtoTest2.Structure1.t(),
          field7: non_neg_integer,
          field8: String.t(),
          field9: ProtoTest2.Structure1.t(),
          field10: String.t(),
          field11: integer
        }
  defstruct [
    :field1,
    :field2,
    :field3,
    :field4,
    :field5,
    :field6,
    :field7,
    :field8,
    :field9,
    :field10,
    :field11
  ]

  field :field1, 1, required: true, type: :uint32
  field :field2, 2, required: true, type: :string
  field :field3, 3, required: true, type: ProtoTest2.Structure1
  field :field4, 4, required: true, type: :string
  field :field5, 5, required: true, type: :uint32
  field :field6, 6, required: true, type: ProtoTest2.Structure1
  field :field7, 7, required: true, type: :uint32
  field :field8, 8, required: true, type: :string
  field :field9, 9, required: true, type: ProtoTest2.Structure1
  field :field10, 10, required: true, type: :string
  field :field11, 11, required: true, type: ProtoTest2.Type1, enum: true
end

defmodule ProtoTest2.Type1 do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2

  field :TYPE1, 0
  field :TYPE2, 1
  field :TYPE3, 2
  field :TYPE4, 3
  field :TYPE5, 4
  field :TYPE6, 5
  field :TYPE7, 6
end
