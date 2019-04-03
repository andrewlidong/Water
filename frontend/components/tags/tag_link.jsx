import React from 'react';
import { Link } from 'react-router-dom';

const TagLink = ({ tag }) => {
  const tagURL = `/tags/${tag}`;
  const capitalizeTagName = tag.toUpperCase();

  return (
    <Link to={tagURL}>
      <h1 className='tag-link-button'>{capitalizeTagName}</h1>
    </Link>
  );
};

export default TagLink;