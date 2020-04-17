new Vue({
    el: '#introduction-tabs',
    data: {
        list: [],
        currentSlug: ''
    },
    created(){
        this.currentSlug = this.getQueryParams('tab');
        this.loadList()
    },
    computed: {
        currentIntro: function() {
            const self = this

            let current = this.list.find(e => {
                return e.slug == self.currentSlug
            })
            

            if (!current) {
                current = self.list[0]
                if(!current) return null
                self.currentSlug = current.slug
            }

            return current;
        }
    },
    methods: {
        async loadList() {
            const {data} = await axios.get('api/gioi-thieu')

            this.list = data
        },
        setCurrentSlug(slug) {
            this.currentSlug = slug
        },
        getQueryParams(queryParamName) {
            var url_string = window.location.href; //window.location.href
            
            var url = new URL(url_string);
            var c = url.searchParams.get(queryParamName);

            return c;
        },
    }
})