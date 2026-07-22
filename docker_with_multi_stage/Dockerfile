FROM python:3.12-slim AS build

WORKDIR /app

COPY calculator.py .

RUN ls -l /app

FROM gcr.io/distroless/python3

WORKDIR /app

COPY --from=build /app /app

CMD ["python3", "calculator.py"]