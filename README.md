# caspernetwork-directus

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run start
```

## Environment setup
To run the project, the following environment variables are required:
```
# General
HOST="0.0.0.0"
PORT=8055
PUBLIC_URL="http://localhost:8055"
LOG_LEVEL="info"
LOG_STYLE="pretty"

ADMIN_EMAIL="admin@example.com"
ADMIN_PASSWORD="admin"

# Database
DB_CLIENT="pg"
DB_HOST="127.0.0.1"
DB_PORT=5432
DB_DATABASE="directus_db"
DB_USER="postgres"
DB_PASSWORD="postgres"

# Rate Limiting
RATE_LIMITER_ENABLED=true
RATE_LIMITER_POINTS=50
RATE_LIMITER_DURATION=1
RATE_LIMITER_STORE=memory

# Caching
CACHE_ENABLED=true
CACHE_TTL="30m"
CACHE_NAMESPACE="directus-cache"
CACHE_AUTO_PURGE=true
CACHE_STORE=memory
ASSETS_CACHE_TTL="30m"

# File Storage
STORAGE_LOCATIONS="local,s3"

STORAGE_LOCAL_DRIVER="local"
STORAGE_LOCAL_ROOT="./uploads"

STORAGE_S3_DRIVER="s3"
STORAGE_S3_KEY="abcdef"
STORAGE_S3_SECRET="ghijkl"
STORAGE_S3_ENDPOINT="ams3.digitaloceanspaces.com"
STORAGE_S3_BUCKET="my-files"
STORAGE_S3_REGION="ams3"

# Security
KEY="xxxxxxx-xxxxxx-xxxxxxxx-xxxxxxxxxx"
SECRET="abcdef"
ACCESS_TOKEN_TTL="15m"
REFRESH_TOKEN_TTL="7d"
REFRESH_TOKEN_COOKIE_SECURE="false"
REFRESH_TOKEN_COOKIE_SAME_SITE="lax"
REFRESH_TOKEN_COOKIE_NAME="directus_refresh_token"

CONTENT_SECURITY_POLICY_DIRECTIVES__SCRIPT_SRC='self' 'unsafe-eval' https://cdn.tiny.cloud http://127.0.0.1:8055 https://cdn.directus.io
CONTENT_SECURITY_POLICY_DIRECTIVES__IMG_SRC='self' data: blob: https://i.vimeocdn.com https://img.youtube.com https://cdn.tiny.cloud http://127.0.0.1:8055 https://cdn.directus.io

CORS_ENABLED="true"
CORS_ORIGIN="true"
CORS_METHODS=GET,POST,PATCH,DELETE
CORS_ALLOWED_HEADERS=Content-Type,Authorization
CORS_EXPOSED_HEADERS=Content-Range
CORS_CREDENTIALS="true"
CORS_MAX_AGE=18000

# Extensions
EXTENSIONS_PATH="./extensions"
EXTENSIONS_AUTO_RELOAD="false"

# Email
EMAIL_FROM="no-reply@directus.io"
EMAIL_TRANSPORT="sendmail"

## Email (Sendmail Transport)
EMAIL_SENDMAIL_NEW_LINE="unix"
EMAIL_SENDMAIL_PATH="/usr/sbin/sendmail"
```

### General Variables
Change these variables according to your setup.
* ⚠ `ADMIN_EMAIL` and `ADMIN_PASSWORD` define the superuser for the system. Make sure to change it.
* ⚠ `PORT` is also required and used in the `Dockerfile`
* `LOG_LEVEL` valid values are `fatal`, `error`, `warn`, `info`, `debug`, `trace` or `silent`.
* `LOG_STYLE` valid values are `pretty` or `raw`.

### Database Variables
Change these variables according to your setup.

### Rate Limiting Variables
Can be left alone. Detailed information can be found [here](https://docs.directus.io/self-hosted/config-options.html#rate-limiting).

### Caching Variables
Can be left alone. Detailed information can be found [here](https://docs.directus.io/self-hosted/config-options.html#cache).

### File Storage Variables
Change these variables according to your setup. Detailed information can be found [here](https://docs.directus.io/self-hosted/config-options.html#file-storage).

### Security Variables
Could be left alone, but advised to change. Detailed information can be found [here](https://docs.directus.io/self-hosted/config-options.html#security).

### Extensions Variables
Should be left alone.

### Email Variables
Currently we aren't using email. Left for future reference. Detailed information can be found [here](https://docs.directus.io/self-hosted/config-options.html#email)
