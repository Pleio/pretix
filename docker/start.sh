#!/bin/sh

echo "[i] Configuring according to environment variables..."
envsubst < /pretix/pretix.cfg.template > /pretix/pretix.cfg

pretix all
