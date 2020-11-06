if (document.URL.match( /users/ )) {
  window.addEventListener("load",() => {
    const hunberger = document.getElementById("hunberger");
    const hunbergerList = document.getElementsByClassName("hunberger_list");

    hunberger.addEventListener("click", () => {
      const hunberger_lists = document.getElementById("hunberger_lists")
      if (hunberger_lists.getAttribute("style") =="display:block;") {
        hunberger_lists.removeAttribute("style", "display:block;");
      } else {
        hunberger_lists.setAttribute("style", "display:block;");
      }
    })
  }) 
}
    // hunbergerList.addEventListener("mouseover", () => {
    //   console.log("こんにちは");
    //   // this.setAttribute("style", "background-color: red;")
    // })

    // hunbergerList.addEventListener("mouceout", () => {
    //   this.removeAttribute("style", "background-color: red;")
    // })

