export const addTag = () => {
  const tag = document.querySelector("#tag-js");
  if (tag) {
  tag.insertAdjacentHTML('afterend', '<div class="form-group string artwork_tags_name"><label class="string" for="artwork_tags_attributes_name">Tag</label><input class="form-control string" type="text" name="artwork[tags_attributes][][name]" id="artwork_tags_attributes_name"></div>')
  };
};

