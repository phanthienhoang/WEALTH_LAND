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
            this.requesting = true;

            const { fullname, email, phone, comment } = this.form

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