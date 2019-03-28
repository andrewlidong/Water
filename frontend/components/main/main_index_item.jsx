import React from 'react'
import { connect } from 'react-redux'
import { Link } from 'react-router-dom'
import MainIndexItemData from './main_index_item_data'

const MainIndexItem = ({ story, author,  }) => {
  const storyUrl = `/stories/${story.id}`
  const authorUrl = `/users/${author.id}`
  return (
    <div className="main-index-item">
      <div className="main-index-item-content">
        <div className="item-story">
          <Link to={storyUrl}>
            <h1 className="item-story-title">{story.title}</h1>
            <h1 className="item-story-subtitle">{story.subtitle}</h1>
          </Link>
          <Link to={authorUrl}>
            <h1 className="item-story-author">{author.name}</h1>
          </Link>
        </div>
        <MainIndexItemData 
          date={story.date}
          time_estimate={story.time_estimate} />
      </div>
      <div className="main-index-item-img">
        <img src={story.image_url} />
      </div>
    </div>
  )
}

const mapStateToProps = (state, ownProps) => {
  const author = state.entities.users[ownProps.story.author_id]
  return {
    author
  }
}

export default connect(
  mapStateToProps
)(MainIndexItem)