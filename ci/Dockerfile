FROM docker.io/library/swift:6.0-jammy
RUN apt-get update -qq && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
WORKDIR /sdk
COPY . .
RUN sed -i '/.target(/i\        .executableTarget(name: "SmokeTest", dependencies: ["MailOdds"], path: "ci", sources: ["smoke_test.swift"]),' Package.swift
RUN swift build 2>&1
RUN ln -sf "$(swift build --show-bin-path)/SmokeTest" /usr/local/bin/smoke-test
CMD ["/usr/local/bin/smoke-test"]
