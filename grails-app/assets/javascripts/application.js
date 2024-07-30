// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-3.5.1.min
//= require bootstrap/dist/js/bootstrap.bundle
//= require_self

function setTheme(theme) {
    const items = document.querySelectorAll("#oldschool.theme .dropdown-menu .dropdown-item")
    for (let i = 0; i < items.length; i++) {
        if (items[i].text.trim().toLowerCase() === theme) {
            document.querySelector('#oldschool.theme .dropdown-toggle i').setAttribute('class',
                items[i].getElementsByTagName('i')[0].getAttribute('class'))
            break
        }
    }
    document.getElementsByTagName('html')[0].setAttribute('data-bs-theme', theme != 'auto'? theme :
        (window.matchMedia('(prefers-color-scheme: dark)').matches? 'dark' : 'light'))
}
setTheme('auto')
const items = document.querySelectorAll("#oldschool.theme .dropdown-menu .dropdown-item")
for (let i = 0; i < items.length; i++) {
    items[i].addEventListener('click', function() {
        setTheme(this.text.trim().toLowerCase())
    })
}