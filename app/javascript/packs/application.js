require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")
require("../calendar")

document.addEventListener('turbolinks:load', () => {
    const search = document.getElementById('search-text')
    const tableRows = document.querySelectorAll('.text-card-container')

    const filterTableRows = (e) => {
        const value = e.target.value.toLowerCase()
        for(const tr of tableRows) {
            const isVisible = tr.textContent.toLowerCase().includes(value)
            tr.style.display = isVisible? "" : "none"
        }
    }

    search.addEventListener('input', filterTableRows)
})
