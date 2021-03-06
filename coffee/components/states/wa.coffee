import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Young     from 'components/blocks/young'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import { verb }  from 'states'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'WA State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Washington has open caucuses {entity('mdash')} anyone can caucus for Bernie Sanders. Participation in Washington's caucuses is open to all voters who wish to participate as Democrats.
        </p>
        <p>
          Washington has Same-Day Registration which allows you to register to vote at the caucuses on Sat, March 26.
        </p>
        <p>
          <strong>Please plan to arrive no later than 9:30 AM.</strong> We strongly recommend <a href='https://www.demcaucus.com/register' target='_blank'>pre-registering for your caucus</a> to speed up the check-in process.
        </p>
        <Young {...@props} />
        <College {...@props} />
        <MoreInfo {...@props} />
        <p>
          You may also contact Bernie Sanders Washington State HQ:<br /> <a href='tel:+12064068527'>(206) 406-8527</a>.
        </p>
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
