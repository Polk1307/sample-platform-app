# Sample Platform App

Учебное Go-приложение для DevOps DeepLab.

## Purpose

Приложение используется как единый артефакт для уроков по:

- Go backend development
- PostgreSQL
- Redis cache
- Redis Streams queue
- Docker
- Docker Compose
- Ansible deployment
- systemd
- CI/CD
- Observability

## Components

- api - HTTP API service
- worker - background worker
- postgres - persistent storage
- redis - cache and queue

## Deployment modes

- local binary
- systemd via Ansible
- Docker
- Docker Compose
- CI/CD pipeline deployment

## Initial endpoints

- GET /healthz
- GET /readyz
- GET /version

## Constraints

- Keep the application simple and production-like.
- Prefer standard Go packages before adding external dependencies.
- Keep deployment examples reproducible.
- Every infrastructure change must have verification steps.