const Parser = require("rss-parser");

async function getLatestArticles() {
    const feed = await new Parser().parseURL(
        "https://www.polpiella.codes/rss.xml"
    );

    return feed.items
        .slice(0, 3)
        .map(({ title, link }) => `- [${title}](${link})`)
        .join("\n");
}

(async () => {
    console.log(await getLatestArticles());
})();
