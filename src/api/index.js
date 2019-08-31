import axios from 'axios';
export const getSongById = (id) => {
  return axios.get(`/api/song/url?id=${id}`);
};
