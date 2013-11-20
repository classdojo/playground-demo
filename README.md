## Directory Layout


```
  .cortado.js            - test config for cortado
  public/                - all public HTTP files
    index.html           - index file
    css/                 - CSS files
    img/                 - images
    scripts/             - useful js / shell scripts
      server.js          - static HTML server
    vendor/              - third-party libraries
    test/                - test files
    js/                  - application
      views/             - mojo views & templates
      commands/          - global mediator commands
```


## Requirements

- [Node.js](http://nodejs.org)

## Installation

```bash
git clone git@github.com:classdojo/playground-demo.git && cd playground-demo && npm install;
```

## Running

```bash
npm run server
```

## Testing

```bash
npm test
```

## Troubleshooting

Trouble with dependencies?  Remove your node modules and reinstall.  

```bash
rm -rf node_modules; npm cache clear; npm install; npm run server
```
