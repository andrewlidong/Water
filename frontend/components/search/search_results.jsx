import React from 'react';
import UserSearchItem from './user_search_item';
import StorySearchItem from './story_search_item';
import TagLink from '../tags/tag_link';

export default ({ query, stories, users, tags }) => {

  if (query === '') return <div></div>;

  const regExp = new RegExp(query.toLowerCase());

  const userMatches = users.filter(user => {
    return (user.name.toLowerCase().match(regExp) || user.bio.toLowerCase().match(regExp));
  });

  const storyMatches = stories.filter(story => {
    return (story.title.toLowerCase().match(regExp) || story.subtitle.toLowerCase().match(regExp));
  });

  const tagMatches = tags.filter(tag => {
    return tag.toLowerCase().match(regExp);
  });

  const userResults = userMatches.map((user, i) => <UserSearchItem key={i} user={user} />);
  const storyResults = storyMatches.map((story, i) => <StorySearchItem key={i} story={story} />);
  const tagResults = tagMatches.map((tag, i) => <TagLink key={i} tag={tag} />);

  return (
    <div className="search-results">
      <div className="search-results-partition">
        <h1 className="search-results-title">People</h1>
        {userResults}

        <h1 className="search-results-title">Tags</h1>
        <div className="tag-links-flex">
          {tagResults}
        </div>
      </div>

      <div className="search-results-partition">
        <h1 className="search-results-title">Stories</h1>
        {storyResults}
      </div>
    </div>
  );
};