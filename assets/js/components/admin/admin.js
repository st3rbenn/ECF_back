const container = document.querySelector('#root');
const jobsBtn = document.querySelector('#Jobs');
const enterpriseBtn = document.querySelector('#enterprise');
const userBtn = document.querySelector('#user');
const candidateBtn = document.querySelector('#candidate')
const xhr = new XMLHttpRequest();

const request = (url) => {
    xhr.onload = () => {
        if(xhr.status === 200) {
            container.innerHTML = xhr.responseText
            return $(document).ready(function () {
                $('#dataTable').DataTable({
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
request('/src/view/admin/allJobs-view.php');

jobsBtn.addEventListener('click', () => {
    deleteAll(container);
    request('/src/view/admin/allJobs-view.php');
});

enterpriseBtn.addEventListener('click', () => {
    deleteAll(container);
    request('/src/view/admin/allEnterprise-view.php');
    const script = document.createElement('script');
    script.src = '/assets/js/components/admin/enterprise.js';
    enterpriseBtn.appendChild(script);
});

candidateBtn.addEventListener('click', () => {
    deleteAll(container);
    request('/src/view/admin/allCandidate-view.php');
})

userBtn.addEventListener('click', () => {
    deleteAll(container);
    request('/src/view/admin/allUser-view.php');
});

function deleteAll(contain){
    while (contain.firstChild) {
        contain.removeChild(container.lastChild);
    };
};

setInterval(() => {
    if(document.querySelector('#addEnterprise') !== null) {
        document.querySelector('#addEnterprise').addEventListener('click', (ev) => {
            ev.currentTarget.parentNode.parentElement.children[1].remove();
            const form = document.createElement('form');
            form.setAttribute('action', '#');
            form.setAttribute('method', 'post');
            form.setAttribute('enctype', 'multipart/form-data');
            form.setAttribute('class', 'form-horizontal');
            form.setAttribute('role', 'form');
            form.setAttribute('id', 'addEnterpriseForm');
            //company name
            const companyName = document.createElement('div');
            companyName.setAttribute('class', 'form-group');
            const companyNameLabel = document.createElement('label');
            companyNameLabel.setAttribute('class', 'col-sm-2 control-label');
            companyNameLabel.innerHTML = 'Company Name';
            const companyNameInput = document.createElement('div');
            companyNameInput.setAttribute('class', 'col-sm-10');
            const companyNameInputField = document.createElement('input');
            companyNameInputField.setAttribute('type', 'text');
            companyNameInputField.setAttribute('class', 'form-control');
            companyNameInputField.setAttribute('name', 'companyName');
            companyNameInputField.setAttribute('placeholder', 'Company Name');
            companyNameInput.appendChild(companyNameInputField);
            companyName.appendChild(companyNameLabel);
            companyName.appendChild(companyNameInput);
            form.appendChild(companyName);
            //company location
            const companyLocation = document.createElement('div');
            companyLocation.setAttribute('class', 'form-group');
            const companyLocationLabel = document.createElement('label');
            companyLocationLabel.setAttribute('class', 'col-sm-2 control-label');
            companyLocationLabel.innerHTML = 'Company Location';
            const companyLocationInput = document.createElement('div');
            companyLocationInput.setAttribute('class', 'col-sm-10');
            const companyLocationInputField = document.createElement('input');
            companyLocationInputField.setAttribute('type', 'text');
            companyLocationInputField.setAttribute('class', 'form-control');
            companyLocationInputField.setAttribute('name', 'companyLocation');
            companyLocationInputField.setAttribute('placeholder', 'Company Location');
            companyLocationInput.appendChild(companyLocationInputField);
            companyLocation.appendChild(companyLocationLabel);
            companyLocation.appendChild(companyLocationInput);
            form.appendChild(companyLocation);
            //company logo
            const companyLogo = document.createElement('div');
            companyLogo.setAttribute('class', 'form-group');
            const companyLogoLabel = document.createElement('label');
            companyLogoLabel.setAttribute('class', 'col-sm-2 control-label');
            companyLogoLabel.innerHTML = 'Company Logo';
            const companyLogoInput = document.createElement('div');
            companyLogoInput.setAttribute('class', 'col-sm-10');
            const companyLogoInputField = document.createElement('input');
            companyLogoInputField.setAttribute('type', 'file');
            companyLogoInputField.setAttribute('class', 'form-control');
            companyLogoInputField.setAttribute('name', 'companyLogo');
            companyLogoInput.appendChild(companyLogoInputField);
            companyLogo.appendChild(companyLogoLabel);
            companyLogo.appendChild(companyLogoInput);
            form.appendChild(companyLogo);


            //submit button
            const submitButton = document.createElement('div');
            submitButton.setAttribute('class', 'form-group');
            const submitButtonLabel = document.createElement('label');
            submitButtonLabel.setAttribute('class', 'col-sm-2 control-label');
            submitButtonLabel.innerHTML = 'Submit';
            const submitButtonInput = document.createElement('div');
            submitButtonInput.setAttribute('class', 'col-sm-10');
            const submitButtonInputField = document.createElement('input');
            submitButtonInputField.setAttribute('type', 'submit');
            submitButtonInputField.setAttribute('class', 'btn btn-primary');
            submitButtonInputField.setAttribute('value', 'Submit');
            submitButtonInput.appendChild(submitButtonInputField);
            submitButton.appendChild(submitButtonLabel);
            submitButton.appendChild(submitButtonInput);
            form.appendChild(submitButton);

            //append form to #bodyAppend
            document.querySelector('#bodyAppend').appendChild(form);
        })
    };
    const edit = document.querySelectorAll('#editEnterprise');
    edit.forEach(function (editEnterprise) {
        editEnterprise.addEventListener('click', function (e) {
            if(e.currentTarget.parentNode !== null){
                e.currentTarget.parentNode.parentNode.children[1].innerHTML = '<input type="text" class="form-control" name="companyName" placeholder="Company Name" value="' + e.currentTarget.parentNode.parentNode.children[1].innerHTML + '">';
                e.currentTarget.parentNode.parentNode.children[2].innerHTML = '<input type="text" class="form-control" name="companyLocation" placeholder="Company location" value="' + e.currentTarget.parentNode.parentNode.children[2].innerHTML + '">';
                e.currentTarget.parentNode.innerHTML = '<button class="btn btn-danger">Cancel</button><button class="btn btn-primary">Submit</button>';
            }

            const cancel = document.querySelectorAll('.btn-danger');
            cancel.forEach(function (cancel) {
                cancel.addEventListener('click', function (e) {
                    if(e.currentTarget.parentNode !== null){
                    e.currentTarget.parentNode.parentNode.children[1].innerHTML = e.currentTarget.parentNode.parentNode.children[1].children[0].value;
                    e.currentTarget.parentNode.parentNode.children[2].innerHTML = e.currentTarget.parentNode.parentNode.children[2].children[0].value;
                    e.currentTarget.parentNode.innerHTML = '<td><a class="btnJobs" style="margin-left: 1rem" id="editEnterprise"><i class="fa-solid fa-pen-to-square"></i></a><a class="btnJobs" style="margin-left: 1rem" href="/home/admin/dashboard"><i class="fa-solid fa-trash"></i></a></td>\n';
                    }
                })
            })

        });
    })
}, 1000)