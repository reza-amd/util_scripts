bazel clean --expunge
bazel test -- //... -//third_party/... -//backends/gpu/...