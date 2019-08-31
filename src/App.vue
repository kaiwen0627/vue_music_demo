<template>
  <div id="app">
    <button @click="getsong"> {{data}}</button>
    <audio :src="song_url" autoplay controls></audio>
    <router-view/>
  </div>
</template>

<script>
import { getSongById } from "./api";
export default {
  name:'app',
  data() {
    return{
      data:'播放音频',
      song_url:''
    }
  },
  methods:{
    getsong(){
      getSongById('33894312').then((data)=>{
        const {url}=data.data.data[0]

        console.log(url);
        // this.$set(this.song_url,url)
        this.song_url=url
      })
    }
  }
}

</script>


<style lang="less">
html,body{
  width: 100%;
  height: 100%;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
