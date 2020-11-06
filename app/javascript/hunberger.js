if (document.URL.match( /users/ )) {
  function hunberger () {
    const hunberger = document.getElementById("hunberger");

    hunberger.addEventListener("click", () => {
      const hunberger_lists = document.getElementById("hunberger_lists")
      if (hunberger_lists.getAttribute("style") =="display:block;") {
        hunberger_lists.removeAttribute("style", "display:block;");
      } else {
        hunberger_lists.setAttribute("style", "display:block;");
      }
    })
  }

  setInterval(hunberger, 1000);
}


