# Use distroless as minimal base image to package the manager binary
# Refer to https://github.com/GoogleContainerTools/distroless for more details
FROM gcr.io/distroless/static-debian11:latest
WORKDIR /
RUN wget https://github.com/aquasecurity/linux-bench/releases/download/v0.5.0/linux-bench_0.5.0_linux_amd64.tar.gz && tar -zxf linux-bench_0.5.0_linux_amd64.tar.gz
USER 0:0

ENTRYPOINT ["/"]
