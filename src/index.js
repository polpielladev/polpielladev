const Parser = require("rss-parser");
const fs = require("fs").promises;

async function getLatestArticles() {
    const feed = await new Parser().parseURL(
        "https://www.polpiella.codes/rss.xml"
    );

    return feed.items
        .slice(0, 3)
        .map(({ title, link }) => `- [${title}](${link})`)
        .join("\n");
}

async function readTemplateFile() {
    const template = await fs.readFile("./src/templates/README.md.tpl", {
        encoding: "utf-8",
    });
    return template;
}

(async () => {
    const latestArticlesMarkdown = await getLatestArticles();
    const template = await readTemplateFile();
    const newMarkdown = template.replace(
        "{latest_blogs}",
        latestArticlesMarkdown
    );
    fs.writeFile("./README.md", newMarkdown);
})();
