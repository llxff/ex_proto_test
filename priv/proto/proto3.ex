defmodule ProtoTest.Proto3 do
  use ExProtobuf, from: Path.expand("#{:code.priv_dir(:proto_test)}/proto/proto3.proto", __DIR__)
end
