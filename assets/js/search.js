class jekyllSearch {
  constructor(dataSource, searchField, resultsList, siteURL) {
    this.dataSource = dataSource
    this.searchField = document.querySelector(searchField)
    this.resultsList = document.querySelector(resultsList)
    this.siteURL = siteURL
    this.displayResults = this.displayResults.bind(this)
  }
  fetchedData() {
    return fetch(this.dataSource)
      .then(blob => blob.json())
  }
  async findResults() {
    const data = await this.fetchedData()
    return data.filter(item => {
      const regex = new RegExp(this.searchField.value, 'gi')
      return item.title.match(regex) || item.excerpt.match(regex)
    })
  }
  async displayResults() {
    const results = await this.findResults()
    const html = results.map(item => {
      return `
        <li>
          <article class="article">
            <h2><a href="${this.siteURL + item.url}" title="${item.title}">${item.title}</a></h2>
            <p>${item.excerpt}</p>
          </article>
        </li>`
    }).join('')
    if ((results.length == 0) || (this.searchField.value == '')) {
      this.resultsList.innerHTML = `<p><em>Sorry, nothing was found</em>.</p>`
    } else {
      this.resultsList.innerHTML = html
    }
  }
  init() {
    const url = new URL(document.location)
    if (url.searchParams.get("search")) {
      this.searchField.value = url.searchParams.get("search")
      this.displayResults()
    }
    this.searchField.addEventListener('keyup', () => {
      this.displayResults()
      url.searchParams.set("search", this.searchField.value)
      window.history.pushState('', '', url.href)
    })
    this.searchField.addEventListener('keypress', event => {
      if (event.keyCode == 13) {
        event.preventDefault()
      }
    })
  }
}
const search = new jekyllSearch(
  '/assets/js/search.json',
  '#search',
  '#list',
  ''
);
search.init();