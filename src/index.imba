# ---------------------
# hack against tag duplication
# try to remove it and do several updates
if module:hot
  if document:body
    document:body:innerHTML = ''
  module:hot.accept
# ---------------------

console.time
console.log 'starting...'
import { Card } from './components/Card'

tag App
  def render
    <self .row>
      <Card .s12 .m4
        title='Title card 1'>
      <Card .s12 .m4 title='Title card 2'>
      <Card .s12 .m4 title='Title card 3'>
      <Card .s12 .m4 title='Title card 4'>

Imba.mount <App>
console.timeEnd
