#!/bin/bash

protoc -I ./priv/proto --elixir_out=./priv/proto/build --plugin=protoc-gen-elixir=./scripts/protoc-gen-elixir ./priv/proto/*.proto

mix format
