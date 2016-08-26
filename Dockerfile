FROM bitwalker/alpine-elixir-phoenix:latest

ENV MIX_ENV=${MIX_ENV:-prod}
ENV PORT 4000
COPY mix.* ./

RUN mix do deps.get, deps.compile
ADD . .


RUN MIX_ENV=$MIX_ENV mix do compile, phoenix.digest
USER default

EXPOSE 4000 80

CMD ["mix", "phoenix.server"]

