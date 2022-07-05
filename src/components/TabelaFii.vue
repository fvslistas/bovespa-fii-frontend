<template>
    <div>
        <table class="fiiTabela">
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
                    <td> {{fii.razao}} </td>
                    <td> {{fii.fundo}} </td>
                    <td> {{fii.segmento}} </td>
                    <td> {{fii.codigo}} </td>
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
.fiiTabela table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.fiiTabela td, fii.tabela th {
  border: 1px solid #ddd;
  padding: 8px;
}

.fiiTabela tr:nth-child(even){background-color: #f2f2f2;}

.fiiTabela tr:hover {background-color: #ddd;}

.fiiTabela th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
