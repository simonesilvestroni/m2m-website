// ------------------------------------------------ \\
// RELATED POSTS
//
// * Checks for the presence of related posts
// * If related returns 0, the script removes 
// * the block from the DOM
// ------------------------------------------------ //
if(document.body.classList.contains('layout-post')){
  function removeIfEmptyChild(childId, fatherId) {
    const child = document.getElementById(childId)
    const father = document.getElementById(fatherId)
    if(child.innerHTML.trim() == "") {
      father.remove()
    }
  }
  removeIfEmptyChild("related-posts-list", "related-posts")
}