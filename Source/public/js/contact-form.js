function phoneCheck(inputtxt) {
    var phoneno = /^\d{10}$/;

    return inputtxt.match(phoneno) || inputtxt.length >= 10
}

function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

new Vue({
    el: '#contact-form',
    data: {
        requesting: false,

        form: {
            fullname: '',
            email: '',
            phone: '',
            comment: ''
        }
    },

    methods: {  
        postComment() {

            const { fullname, email, phone, comment } = this.form

            if (fullname.length <= 2) {
                alert('Quý khách vui lòng nhập tên hợp lệ');
                return;
            }
            if (!phoneCheck(phone)) {
                alert('Quý khách vui lòng nhập Số điện thoại hợp lệ');
                return;
            }

            if (!validateEmail(email)) {
                alert('Quý khách vui lòng nhập Email hợp lệ');
                return;
            }
            if (comment.length <= 50) {
                alert('Quý khách vui lòng nhập nội dung (tối thiểu 50 ký tự)');
                return;
            }

            this.requesting = true;

            axios.post('/api/contact', { fullname, email, phone, comment })
                .then(res => {
                    alert('Cảm ơn quý khách hàng! Bình luận của quý khách đã được gửi thành công');
                    this.form = {
                        fullname: '',
                        email: '',
                        phone: '',
                        comment: ''
                    }
                })
                .catch(err => console.log(err))
                .finally(() => this.requesting = false)
        }
    }
})