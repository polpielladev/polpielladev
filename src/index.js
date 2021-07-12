const Parser = require("rss-parser");

(async () => {
    let feed = await new Parser().parseURL("https://www.reddit.com/.rss");

    feed.items.forEach((item) => {
        console.log(item.title + ":" + item.link);
    });
})();
