/* ********************************************************************************************
   | Handle Submitting Posts - called by $('#post-button').click(submitPost)
   ********************************************************************************************
   */
function submitPost(event) {
    post_word = $( "#post-text" ).text()
    $.post(post_submit_url,{'post_word': post_word},pcll);
    // TODO Objective 8: send contents of post-text via AJAX Post to post_submit_view (reload page upon success)
}

function pcll(data, status) {
    if (status == 'success') {
        location.reload();
    }
    else {
        alert('failed to request more ppl' + status);
    }
};


/* ********************************************************************************************
   | Handle Liking Posts - called by $('.like-button').click(submitLike)
   ********************************************************************************************
   */
function submitLike(event) {
    console.log('Like Button Pressed');
    console.log(event.currentTarget);
    // TODO Objective 10: send post-n id via AJAX POST to like_view (reload page upon success)
    post_id = {'postId' : event.currentTarget.id}
    $.post(like_post_url, post_id, sll)
}

function sll(data,status) {
    if (status == 'success') {
        // reload page to display new Post
        location.reload();
    }
    else {
        alert('failed to request more posts' + status);
    }
}

/* ********************************************************************************************
   | Handle Requesting More Posts - called by $('#more-button').click(submitMore)
   ********************************************************************************************
   */
function moreResponse(data,status) {
    if (status == 'success') {
        // reload page to display new Post
        location.reload();
    }
    else {
        alert('failed to request more posts' + status);
    }
}

function submitMore(event) {
    // submit empty data
    let json_data = { };
    // globally defined in messages.djhtml using i{% url 'social:more_post_view' %}
    let url_path = more_post_url;

    // AJAX post
    $.post(url_path,
           json_data,
           moreResponse);
}











/* ********************************************************************************************
   | Document Ready (Only Execute After Document Has Been Loaded)
   ********************************************************************************************
   */
$(document).ready(function() {
    // handle post submission
    $('#post-button').click(submitPost);
    // handle likes
    $('.like-button').click(submitLike);
    // handle more posts
    $('#more-button').click(submitMore);
});
