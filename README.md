<h3 align="center">
    bertini36/lokalise-docker 🐳
</h3>

![Docker Automated build](https://img.shields.io/docker/cloud/automated/bertini36/lokalise)
![Docker Build Status](https://img.shields.io/docker/cloud/build/bertini36/lokalise)

## 🚀️ Setup

Just declare in your  `docker-compose.yml` the `lokalise` container specifying 
input and output css files in the command tag. 
```
  lokalise:
    image: bertini36/lokalise
    volumes:
      - ".:/code/"
```

Then for download translations
```
docker-compose run --rm --user=${UID} --entrypoint sh lokalise -c "lokalise2 file download --unzip-to src/i18n --format json --project-id $(PROJECT_ID) --token $(LOKALISE_TOKEN)"
```

And for upload them
```
@docker-compose run --rm --entrypoint sh lokalise -c "lokalise2 file upload --lang-iso en_GB --file 'src/i18n/en_GB/en_GB.json' --project-id $(PROJECT_ID) --token  $(LOKALISE_TOKEN)"
```

<br />
<p align="center">&mdash; Built with ❤️ from Mallorca &mdash;</p>