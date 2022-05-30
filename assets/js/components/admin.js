const container = document.querySelector('#root');
const jobsBtn = document.querySelector('#Jobs')
const xhr = new XMLHttpRequest();

const jobsSection = async () => {
    xhr.onload = () => {
        if(xhr.status === 200) {
            container.innerHTML = xhr.responseText
        } else {
            container.innerHTML = `<div class="alert alert-danger" role="alert">
            ${xhr.status} ${xhr.statusText}
            </div>`
        }
    }
    xhr.open('GET', `/src/view/admin/allJobs-view.php`)
    xhr.send()
}

jobsBtn.addEventListener('click', () => {
    deleteAll();
    jobsSection().then(() => {
        $(document).ready(function () {
            $('#example').DataTable();
        });
    })
})

function deleteAll(){
    while (container.firstChild) {
        container.removeChild(container.lastChild)
    }
}