
export tag Card
  prop title

  def btnHandler e
    e.prevent
    console.log 'Click OK!', title
    M.toast html: "Click ok, card {title}!", el: e, classes: "rounded"

  def render
    <self .col>
      <div .card .blue-grey .center>
        <div .card-content .white-text>
          <span .card-title>
            title
          <p> 'Content card...'
        <div .card-action>
          <button .waves-effect .waves-light .btn-small
            :tap.btnHandler>
            <i .fa .fa-user>
            ' FontAwesomeIcon'
