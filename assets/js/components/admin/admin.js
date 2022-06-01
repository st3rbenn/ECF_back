const container = document.querySelector('#root');
const jobsBtn = document.querySelector('#Jobs');
const enterpriseBtn = document.querySelector('#enterprise');
const userBtn = document.querySelector('#user');
const candidateBtn = document.querySelector('#candidate')
const editBtn = document.querySelector('#edit')
const xhr = new XMLHttpRequest();

const request = (url) => {
    xhr.onload = () => {
        if(xhr.status === 200) {
            container.innerHTML = xhr.responseText
            return $(document).ready(function () {
                $('#example').DataTable({
                    columnDefs: [
                        {
                            targets: [0],
                            orderData: [0, 1],
                        },
                        {
                            targets: [1],
                            orderData: [1, 0],
                        },
                        {
                            targets: [4],
                            orderData: [4, 0],
                        },
                    ],
                });
            });
        } else {
            container.innerHTML = `<div class="alert alert-danger" role="alert">
            ${xhr.status} ${xhr.statusText}
            </div>`
        }
    };
    xhr.open('GET', `${url}`);
    xhr.send();
};

jobsBtn.addEventListener('click', () => {
    deleteAll();
    request('/src/view/admin/allJobs-view.php');
});

enterpriseBtn.addEventListener('click', () => {
    deleteAll();
    request('/src/view/admin/allEnterprise-view.php');
});

candidateBtn.addEventListener('click', () => {
    deleteAll();
    request('/src/view/admin/allCandidate-view.php');
})

userBtn.addEventListener('click', () => {
    deleteAll();
    request('/src/view/admin/allUser-view.php');
});

function deleteAll(){
    while (container.firstChild) {
        container.removeChild(container.lastChild);
    };
};


window.onload = request('/src/view/admin/allJobs-view.php');

/*
if (editBtn !== undefined) {
    editBtn.addEventListener('click', () => {
        deleteAll();
        request('/src/view/admin/component/editJobs.php');
    });
}*/
