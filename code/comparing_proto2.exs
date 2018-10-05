defmodule Compare.Benchmark do
  @exprotobuf %ProtoTest.Proto2.Structure2{
    field1: 1,
    field2: Enum.join(1..100, ","),
    field3: %ProtoTest.Proto2.Structure1{
      field1: 1,
      field2: Enum.join(1..100, ","),
      field3: 1,
      field4: Enum.join(1..100, ","),
      field5: 1,
      field6: Enum.join(1..100, ","),
      field7: 1,
      field8: Enum.join(1..100, ","),
      field9: 1,
      field10: Enum.join(1..100, ","),
      field11: 0
    },
    field4: Enum.join(1..100, ","),
    field5: 2,
    field6: %ProtoTest.Proto2.Structure1{
      field1: 1,
      field2: Enum.join(1..100, ","),
      field3: 1,
      field4: Enum.join(1..100, ","),
      field5: 1,
      field6: Enum.join(1..100, ","),
      field7: 1,
      field8: Enum.join(1..100, ","),
      field9: 1,
      field10: Enum.join(1..100, ","),
      field11: 0
    },
    field7: 3,
    field8: Enum.join(1..100, ","),
    field9: %ProtoTest.Proto2.Structure1{
      field1: 1,
      field2: Enum.join(1..100, ","),
      field3: 1,
      field4: Enum.join(1..100, ","),
      field5: 1,
      field6: Enum.join(1..100, ","),
      field7: 1,
      field8: Enum.join(1..100, ","),
      field9: 1,
      field10: Enum.join(1..100, ","),
      field11: 0
    },
    field10: Enum.join(1..100, ","),
    field11: 0
  }

  @protoelixir %ProtoTest2.Structure2{
    field1: 1,
    field2: Enum.join(1..100, ","),
    field3: %ProtoTest2.Structure1{
      field1: 1,
      field2: Enum.join(1..100, ","),
      field3: 1,
      field4: Enum.join(1..100, ","),
      field5: 1,
      field6: Enum.join(1..100, ","),
      field7: 1,
      field8: Enum.join(1..100, ","),
      field9: 1,
      field10: Enum.join(1..100, ","),
      field11: 0
    },
    field4: Enum.join(1..100, ","),
    field5: 2,
    field6: %ProtoTest2.Structure1{
      field1: 1,
      field2: Enum.join(1..100, ","),
      field3: 1,
      field4: Enum.join(1..100, ","),
      field5: 1,
      field6: Enum.join(1..100, ","),
      field7: 1,
      field8: Enum.join(1..100, ","),
      field9: 1,
      field10: Enum.join(1..100, ","),
      field11: 0
    },
    field7: 3,
    field8: Enum.join(1..100, ","),
    field9: %ProtoTest2.Structure1{
      field1: 1,
      field2: Enum.join(1..100, ","),
      field3: 1,
      field4: Enum.join(1..100, ","),
      field5: 1,
      field6: Enum.join(1..100, ","),
      field7: 1,
      field8: Enum.join(1..100, ","),
      field9: 1,
      field10: Enum.join(1..100, ","),
      field11: 0
    },
    field10: Enum.join(1..100, ","),
    field11: 0
  }

  def benchmark do
    Benchee.run(
      %{
        "Comparing ExProtobuf 2" => fn -> bench_func(@exprotobuf, ProtoTest.Proto2.Structure2) end,
        "Comparing ProtoElixir 2" => fn -> bench_func(@protoelixir, ProtoTest2.Structure2) end
      },
      time: 10,
      print: [fast_warning: false]
    )
  end

  def bench_func(data, module) do
    data
    |> module.encode()
    |> module.decode()
  end
end

Compare.Benchmark.benchmark()
