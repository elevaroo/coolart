export const addTag = () => {
  const tag = document.querySelector("#tag-js");
  if (tag) {
  tag.insertAdjacentHTML('afterend', '<div class="form-group string required artwork_tags_name"><label class="string required" for="artwork_tags_attributes_name">Tag <abbr title="required">*</abbr></label><input class="form-control string required" type="text" name="artwork[tags_attributes][][name]" id="artwork_tags_attributes_name"></div>')
  };
};

