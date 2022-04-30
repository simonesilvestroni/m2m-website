<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title><xsl:value-of select="/rss/channel/title"/> RSS Feed</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <meta charset="UTF-8"/>
        <style type="text/css">
          body {
            max-width: 960px;
            margin: 0 auto;
            padding: 24px 12px 48px 12px;
            text-rendering: optimizeLegibility;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            color: black;
            font: 20px/1.4 system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", "Liberation Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
          }
          .head {
            display: flex;
            flex: wrap;
            align-items: center;
            justify-content: start;
            margin-bottom: 48px;
          }
          .avatar {
            padding-right: 20px;
          }
          .description {
            flex-grow: 1;
            padding-left: 20px;
            border-left: 1px solid #E6E6E6;
          }
          article {
            padding-bottom: 20px;
            border-bottom: 2px solid #E6E6E6;
          }
          h2 {
            margin-bottom: 36px;
          }
          h3 {
            font-size: 22px;
          }
          footer {
            font-size: 16px;
            color: #777;
          }
          .rss-logo {
            width: 30px;
            height: 30px;
            padding-right: 8px;
          }
          .aboutfeeds {
            font-size: 16px;
            background-color: #F5F5F5;
            margin: 20px 0 40px 0;
            padding: 4px 20px;
          }
          .about {
            margin-top: 40px;
            font-size: 16px;
          }
          .about img {
            padding-right: 8px;
            vertical-align: middle;
          }
        </style>
      </head>
      <body>
        <header>
          <h1><img class="rss-logo" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+DQo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPiANCjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB2ZXJzaW9uPSIxLjEiIHdpZHRoPSIxMjhweCIgaGVpZ2h0PSIxMjhweCIgaWQ9IlJTU2ljb24iIHZpZXdCb3g9IjAgMCAyNTYgMjU2Ij4NCjxkZWZzPg0KPGxpbmVhckdyYWRpZW50IHgxPSIwLjA4NSIgeTE9IjAuMDg1IiB4Mj0iMC45MTUiIHkyPSIwLjkxNSIgaWQ9IlJTU2ciPg0KPHN0b3AgIG9mZnNldD0iMC4wIiBzdG9wLWNvbG9yPSIjRTM3MDJEIi8+PHN0b3AgIG9mZnNldD0iMC4xMDcxIiBzdG9wLWNvbG9yPSIjRUE3RDMxIi8+DQo8c3RvcCAgb2Zmc2V0PSIwLjM1MDMiIHN0b3AtY29sb3I9IiNGNjk1MzciLz48c3RvcCAgb2Zmc2V0PSIwLjUiIHN0b3AtY29sb3I9IiNGQjlFM0EiLz4NCjxzdG9wICBvZmZzZXQ9IjAuNzAxNiIgc3RvcC1jb2xvcj0iI0VBN0MzMSIvPjxzdG9wICBvZmZzZXQ9IjAuODg2NiIgc3RvcC1jb2xvcj0iI0RFNjQyQiIvPg0KPHN0b3AgIG9mZnNldD0iMS4wIiBzdG9wLWNvbG9yPSIjRDk1QjI5Ii8+DQo8L2xpbmVhckdyYWRpZW50Pg0KPC9kZWZzPg0KPHJlY3Qgd2lkdGg9IjI1NiIgaGVpZ2h0PSIyNTYiIHJ4PSI1NSIgcnk9IjU1IiB4PSIwIiAgeT0iMCIgIGZpbGw9IiNDQzVEMTUiLz4NCjxyZWN0IHdpZHRoPSIyNDYiIGhlaWdodD0iMjQ2IiByeD0iNTAiIHJ5PSI1MCIgeD0iNSIgIHk9IjUiICBmaWxsPSIjRjQ5QzUyIi8+DQo8cmVjdCB3aWR0aD0iMjM2IiBoZWlnaHQ9IjIzNiIgcng9IjQ3IiByeT0iNDciIHg9IjEwIiB5PSIxMCIgZmlsbD0idXJsKCNSU1NnKSIvPg0KPGNpcmNsZSBjeD0iNjgiIGN5PSIxODkiIHI9IjI0IiBmaWxsPSIjRkZGIi8+DQo8cGF0aCBkPSJNMTYwIDIxM2gtMzRhODIgODIgMCAwIDAgLTgyIC04MnYtMzRhMTE2IDExNiAwIDAgMSAxMTYgMTE2eiIgZmlsbD0iI0ZGRiIvPg0KPHBhdGggZD0iTTE4NCAyMTNBMTQwIDE0MCAwIDAgMCA0NCA3MyBWIDM4YTE3NSAxNzUgMCAwIDEgMTc1IDE3NXoiIGZpbGw9IiNGRkYiLz4NCjwvc3ZnPg0K" alt="RSS logo" /><xsl:value-of select="/rss/channel/title"/></h1>
          <div class="aboutfeeds">
            <p>This is a web feed, also known as an RSS feed. <strong>Subscribe</strong> by copying the URL into your RSS reader. To know more read <a href="https://aboutfeeds.com/" target="_blank"><strong>About Feeds</strong></a> by Matt Webb.</p>
          </div>
          <div class="head">
            <div class="avatar">
              <img src="/assets/images/minutestomidnight-avatar-uphoto.png" alt="Avatar of Simone Silvestroni"/>
            </div>
            <div class="description">
              <p><xsl:value-of select="/rss/channel/description"/></p>
              <p><a hreflang="en"><xsl:attribute name="href"><xsl:value-of select="/rss/channel/link"/></xsl:attribute>Visit Website &#x2192;</a></p>
            </div>
          </div>
        </header>
        <main>
          <h2>📄 Recent Posts</h2>
          <xsl:for-each select="/rss/channel/item">
            <article>
              <h3><a hreflang="en" target="_blank"><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute><xsl:value-of select="title"/></a></h3>
              <footer>Published: <time><xsl:value-of select="pubDate" /></time></footer>
            </article>
          </xsl:for-each>
          <p class="about"><img src="http://localhost:4000/assets/images/favicons/favicon.svg" alt="Minutes to Midnight icon" width="24" height="24" /><a href="https://minutestomidnight.co.uk/about/">About Simone Silvestroni</a> (Minutes to Midnight).</p>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>