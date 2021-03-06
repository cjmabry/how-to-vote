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
  displayName: 'GA State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Georgia has open primaries {entity('mdash')} Georgians can vote for Bernie Sanders regardless of their registered party.
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>ID Requirement</h3>
        <p>
          Georgia requires you to present a photo identification in order to vote in person. Acceptable IDs include valid state or federal photo IDs, including a free photo ID card issued by your county registrar's office or the Georgia Department of Driver Services, a Georgia Driver's License (current or expired), employee photo IDs from any federal, state, or local agency, a valid U.S. passport, a valid U.S. military photo ID, or a valid tribal photo ID.
        </p>
        <h3 className='caps'>Early Voting</h3>
        <p>
          Advanced voting for the Georgia democratic primary takes place between February 8 and February 26. Click <a href='http://sos.ga.gov/elections/CountyContacts/AdvanceVotingDisplay.aspx' target='_blank'>here</a> for information about early voting times and locations in your county. Georgia allows any voter to vote by absentee ballot. You can apply for an absentee ballot <a href='http://sos.ga.gov/admin/uploads/absentee_ballot_app_201431.pdf' target='_blank'>here</a>.
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
