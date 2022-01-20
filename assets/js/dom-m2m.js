// Footer menu
const footer = document.getElementById("m2m-footer");
const main = document.getElementById("m2m-main");
const header = document.getElementById("navigation-main");
const largeDevice = window.matchMedia("(min-width: 768px)");
largeDevice.addListener(handleDeviceChange);
function handleDeviceChange(e) {
  if(e.matches) header.after(footer);
  else main.after(footer);
}
handleDeviceChange(largeDevice);

// Related posts & Webmentions
if(document.body.classList.contains('layout-post')){
  function removeIfEmptyChild(childId, fatherId) {
    const child = document.getElementById(childId)
    const father = document.getElementById(fatherId)
    if(child.innerHTML.trim() == "") {
      father.remove()
    }
  }
  removeIfEmptyChild("related-posts-list", "related-posts")
  removeIfEmptyChild("webmentions", "webmentions-cont")
}