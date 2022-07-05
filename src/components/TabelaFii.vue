<template>
    <div>
        <header>Fii's</header>
        <table>
            <thead>
                <tr>
                    <th>Razão</th>
                    <th>Fundo</th>
                    <th>Segmento</th>
                    <th>Código</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="fii in fiis" :key="fii.razao">
                    <td>{{fii.razao}} </td>
                    <td>{{fii.fundo}}</td>
                    <td>{{fii.segmento}}</td>
                    <td>{{fii.codigo}}</td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script lang="ts">
    import axios from 'axios'
    import { defineComponent } from 'vue'

    export default defineComponent({
        name: 'TabelaFii',
        data() {
            return {
                fiis: {},
            }
        },
        mounted () {
            axios
            .get('http://localhost:8081/fii/list')
            .then((res)=>{
                this.fiis = res.data;
            })
            .catch((error)=>{
                console.log(error);
            })
        }
    })
</script>

<style scoped>
</style>
