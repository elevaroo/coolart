export const displayRec = () => {
  const row = document.querySelector("#first-row");
  if (row) {
  row.insertAdjacentHTML('afterend', '<div class="row"><div class="col-12"><div class="card-container d-flex flex-wrap"><div class="p-2 d-flex flex-wrap align-content-start"><% @artwork.similar_items(n_results: 3).each do |artwork| %><%= render "artworks/card", artwork: artwork %><% end %></div></div></div></div>')
  };
};


