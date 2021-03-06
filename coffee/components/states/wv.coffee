import React     from 'react'
import Sticky    from 'react-stickynode'
import Button    from 'components/blocks/button'
import College   from 'components/blocks/college'
import DateBox   from 'components/blocks/dateBox'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Young     from 'components/blocks/young'
import AddToCal  from 'components/widgets/addToCalWidget'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Reminder  from 'components/widgets/reminderWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'
import moment    from 'moment'

module.exports = React.createClass
  displayName: 'WV State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          West Virginia has semi-closed primaries {entity('mdash')} West Virginians must register as a Democrat or undeclared to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <Young {...@props} />
        <h3 className='caps'>Early Voting</h3>
        <p>
          Early voting in the West Virginia Democratic Primary takes place bewteen April 27 and May 7, 2016. Contact your <a href='http://www.sos.wv.gov/elections/Vote/EarlyVoting/Pages/default.aspx' target='_blank'>county clerk</a> to confirm early voting hours and locations.
        </p>
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <DateBox title='Primary Date' date={@props.state.date} />
          <AddToCal date={@props.state.date} state={@props.state} />
          <DateBox title='Registration Deadline' date={@props.state.regDate} />
          <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
          <Reminder {...@props} />

          <hr className='right-divider' />
          <Button title='Register to Vote' link={@props.state.regLink} classes={'blue' unless moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')} />
          <Button title='Check Registration Status' link={@props.state.chkLink} />
          <Button title='Commit to Vote' classes='blue' link='https://go.berniesanders.com/page/s/commit-to-vote-WV?source=votesite' />
        </Sticky>
      </div>
    </section>
