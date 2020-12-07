import { addTag } from './add_tag';

export const linkListener = () => {

const link = document.querySelector(".tag-link");

if (link) {
link.addEventListener('click', (event) => {
  // Call your JS functions here
  event.preventDefault()
  addTag();
});
};
};
