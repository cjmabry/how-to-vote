import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'AZ State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Arizona has closed primaries {entity('mdash')} Arizonans must register as a Democrat to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <p>
          All Arizona polls are open from 6AM-7PM.
        </p>
        <h3 className='caps'>ID Requirement</h3>
        <p>
          Arizonans must present a photo ID and proof of current address in order to vote. Learn more about acceptable ID documents <a href='http://www.azsos.gov/elections/voting-election' target='_blank'>here</a>.
        </p>
        <h3 className='caps'>Early Voting</h3>
        <p>
          Arizonans can vote for Bernie Sanders before the March 22 presidential preference election, either in person or by mail-in absentee ballot, beginning February 24, 2016. Check with your <a href='http://www.azsos.gov/elections/voting-election/contact-information-county-election-officials' target='_blank'>local elections office</a> to learn more about early in-person or mail-in voting.
        </p>
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
