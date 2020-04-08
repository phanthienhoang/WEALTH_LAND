const bannerDetail = new Vue({
    el: '#banner-detail',
    data: {
        currentIndex: 0,
        currentInterval: null,
        currentList: [],
        isAnimating: false
    },
    computed: {
        currentBanner: function () {
            return this.currentList[this.currentIndex];
        }
    },
    props: ['listString'],
    methods: {
        startIntervalCarousel(index = 0) {
            const self = this
            if(this.isAnimating) {
                return
            }

            /** Prevent spam click */
            this.isAnimating = true

            setTimeout(function () {
                self.isAnimating = false
            }, 2000)

            clearInterval(this.currentInterval)

            this.currentIndex = index

            this.currentInterval = setInterval(function () {

                self.currentIndex = self.currentIndex >= 3 ? 0 : self.currentIndex + 1
            }, 6900)
        },
        onPreviousClick() {
            /** Prevent spam click */
            if (this.isAnimating) {
                return
            }

            const bannersLength = this.currentList.length;
            this.currentIndex = this.currentIndex == 0 ? bannersLength - 1 : this.currentIndex - 1;

            this.startIntervalCarousel(this.currentIndex)
        },
        onNextClick() {
            /** Prevent spam click */
            if (this.isAnimating) {
                console.log('is animating')
                return
            }

            console.log('ok')


            const bannersLength = this.currentList.length;
            this.currentIndex = this.currentIndex >= bannersLength - 1 ? 0 : this.currentIndex + 1;

            this.startIntervalCarousel(this.currentIndex)
        }
    },
    created() {
        this.startIntervalCarousel()

        this.currentList = JSON.parse($('#banner-data').val());
        
        this.isAnimating = false
    },
})

$('.ws_next').click(function () {
    bannerDetail.onNextClick()
})

$('.ws_prev').click(function () {
    bannerDetail.onPreviousClick()
})

$('#banner-data').remove()