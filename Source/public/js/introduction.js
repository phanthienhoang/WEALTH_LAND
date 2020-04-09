new Vue({
    el: '#introduction-tabs',
    data: {
        list: [],
        currentSlug: ''
    },
    created() {
        this.loadList()
    },
    computed: {
        currentIntro: function() {
            const self = this
            let current = self.list.find(e => e.slug_en == self.currentSlug)

            if (!current) {
                current = self.list[0]
                if(!current) return null
                self.currentSlug = current.slug_en
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
        }
    }
})