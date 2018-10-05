defmodule ProtoTest.Proto2 do
  use ExProtobuf, from: Path.expand("#{:code.priv_dir(:proto_test)}/proto/proto2.proto", __DIR__)
end
