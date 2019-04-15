<metronome>
	<button disabled={ playing } class="btn btn-success" type="button" onclick={ startMetronome }>START</button>
	<button class="btn btn-danger" type="button" onclick={ stopMetronome }>STOP</button>

	<script>
		const BEAT = 500;
		let metronome;
        this.usersNotes=[]
        this.note=null
		this.playing = false;
		this.beatIndex = 0;
		this.beatCount = 0;
        this.roomCode=this.parent.roomcode


         console.log('hahahha',this)

		metroSound() {
			if (this.beatCount === 3) {

			}

			observer.trigger('onBeat', this.beatIndex);

			if (this.beatCount < 3) {
				this.beatCount++;
			} else {
				this.beatCount = 0;
			}
			if (this.beatIndex < 15) {
				this.beatIndex++;
			} else {
				this.beatIndex = 0;
			}
		}

		startMetronome() {
            metronome = setInterval(this.metroSound, BEAT);
            this.playing = true;
		}

		stopMetronome() {
			clearInterval(metronome);
			this.beatCount = 0;
			this.beat = 0;
			this.playing = false;
		}
	</script>

	<style>
		:scope {
			display: block;
		}
	</style>
</metronome>
