import React from 'react';
import { connect } from 'react-redux';
import ClapButton from '../clap/clap_button';
import { authorOfComment } from '../../reducers/selectors';

const CommentIndexItem = ({ comment, author, clapOrStory }) => {
  let lastElement = <ClapButton content={comment} type="Comment" />;

  if (clapOrStory === 'story') {
    lastElement = <p className="comment-index-item-storyname">{storyName}</p>;
  }

  if (!comment || !author) return <div></div>;
  
  return (
    <div className="comment-index-item">
      <div className="comment-form-author-index">
        <img className="comment-image" src={author.avatar} />
        <div className="story-form-author-detail">
          <p className="story-form-author-name">{author.name}</p>
          <p className="story-form-author-date">{comment.date}</p>
        </div>
      </div>

      <p className="comment-index-item-body">{comment.body}</p>

      <div className="comment-index-clapOrStory-container">
        {lastElement}
      </div>
    </div>
  );
};

const mapStateToProps = (state, ownProps) => {
  let author;

  if (ownProps.comment) {
    author = authorOfComment(state, ownProps.comment);
  }
  
  return {
    author
  };
};

export default connect(mapStateToProps)(CommentIndexItem);