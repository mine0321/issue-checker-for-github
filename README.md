# issue-checker-for-github

[![](misc/store_badge.png)][store]

A Chrome extension to check GitHub issues assigned to you.

# Screenshot

![screenshot](misc/screenshot.gif)

# How to develop

Firstly, load the `app` directory directly onto (extension management page)[chrome://extensions/].

Then, start watching the `src` directory to compile the assets automatically.

```bash
yarn install && grunt watch
```

Or you can compile them by yourself as well.

```bash
yarn install && grunt compile
```

# How to pack

```bash
yarn install && grunt pack
```

[store]: https://chrome.google.com/webstore/detail/issue-checker-for-github/dejgifcjoefbogdjpjokobdlddjhbich
