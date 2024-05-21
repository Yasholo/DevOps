// It will return you all the div(in the form of array) that have a class panel
const panels =
    document.querySelectorAll('.panel');

// Arrow function used here
panels.forEach((panel) => {
    var color = "#" + ((1 << 24) * Math.random() | 0).toString(16).padStart(6, "0");
    panel.addEventListener('click', () => {
        removeActiveClasses();
        // On clicking, it will add class "active" to the clicked panel
        panel.classList.add('active');
    });
    //It assigns color to the all panel in loop.
    panel.style.background = color;

    //It adds the color code to the h3 tag.
    panel.querySelector('h3').textContent += color;
});
// function to remove the class "active" from all the panels
function removeActiveClasses() {
    panels.forEach((panel) => {
        panel.classList.remove('active');
    });
}

    


