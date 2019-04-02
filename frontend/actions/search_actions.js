import * as ApiUtil from '../util/search_api_util';

export const RECEIVE_ALL = 'RECEIVE_ALL';

export const fetchAllUsersAndStories = () => dispatch => {
  return ApiUtil.fetchAllUsersAndStories().then(
    payload => dispatch(receiveAll(payload))
  );
};

export const receiveAll = payload => {
  return {
    type: RECEIVE_ALL,
    payload
  }
};