FROM docker.io/library/swift:6.0-jammy
RUN apt-get update -qq && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
WORKDIR /sdk
COPY . .
RUN swift build 2>&1
CMD ["swift", "ci/smoke_test.swift"]
