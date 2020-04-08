const bannerDetail = new Vue({
    el: '#banner-detail',
    data: {
        currentIndex: 0,
        currentInterval: null,
        currentList: []
    },
    computed: {
        currentBanner: function () {
            return this.currentList[this.currentIndex];
        }
    },
    methods: {
        startIntervalCarousel(index = 0) {
            const self = this

            clearInterval(this.currentInterval)

            this.currentIndex = index

            this.currentInterval = setInterval(function () {

                self.currentIndex = self.currentIndex >= 3 ? 0 : self.currentIndex + 1
            }, 6900)
        },
        onPreviousClick() {
            const bannersLength = this.currentList.length;
            this.currentIndex = this.currentIndex == 0 ? bannersLength - 1 : this.currentIndex - 1;

            this.startIntervalCarousel(this.currentIndex)
        },
        onNextClick() {
            const bannersLength = this.currentList.length;
            this.currentIndex = this.currentIndex >= bannersLength - 1 ? 0 : this.currentIndex + 1;

            this.startIntervalCarousel(this.currentIndex)
        }
    },
    created() {
        this.startIntervalCarousel()

        this.currentList = JSON.parse($('#banner-data').val());
    },
})

$('.ws_next').click(function () {
    bannerDetail.onNextClick()
})

$('.ws_prev').click(function () {
    bannerDetail.onPreviousClick()
})