import { displayRec } from './display_rec';

export const checkCheckbox = () => {
  document.querySelectorAll(".heart-checkbox").forEach(checkbox =>
    checkbox.addEventListener('click', () => {
      checkbox.checked = true;
})
);
};
