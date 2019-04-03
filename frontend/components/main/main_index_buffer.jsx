import React from 'react';
import MainIndex from './main_index';
import TagLinkContainer from '../tags/tag_link_container';

const MainIndexBuffer = ({currentUser, stories, feedStories, tags, editButton}) => {
  let personalStream;

  if (currentUser && feedStories.length >= 1) {
    personalStream = (
      <MainIndex
        title='Personal Stream'
        stories={feedStories}
        additionalClasses=''
      />
    );
  }

  return (
    <div className="main">
      {personalStream}

      <TagLinkContainer
        tags={tags}
        tagClasses='tag-link-button'
        containerClasses='mobile-tag-container' />

      <MainIndex
        title='Recent Stream'
        stories={stories} />
    </div>
  );
};

export default MainIndexBuffer;
