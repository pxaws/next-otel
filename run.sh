export OTEL_METRICS_EXPORTER=none 
export OTEL_LOGS_EXPORTER=none 
export OTEL_AWS_APPLICATION_SIGNALS_ENABLED=true 
export OTEL_EXPORTER_OTLP_PROTOCOL=http/protobuf 
export OTEL_TRACES_SAMPLER=xray 
export OTEL_TRACES_SAMPLER_ARG=endpoint=http://localhost:2000 
export OTEL_AWS_APPLICATION_SIGNALS_EXPORTER_ENDPOINT=http://localhost:4316/v1/metrics 
export OTEL_EXPORTER_OTLP_TRACES_ENDPOINT=http://localhost:4316/v1/traces 
export OTEL_TRACES_EXPORTER=console 
export OTEL_RESOURCE_ATTRIBUTES="service.name=nextjs" 
export NODE_OPTIONS='--import @aws/aws-distro-opentelemetry-node-autoinstrumentation/register --experimental-loader=@opentelemetry/instrumentation/hook.mjs'

node ./node_modules/.bin/next dev

