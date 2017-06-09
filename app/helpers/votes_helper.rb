module VotesHelper
  def question_voter(question, vote)

    if vote.nil?
      upvote = link_to fa_icon('chevron-up lg'),
        question_votes_path(question, { is_up: true }),
        method: :post
      downvote = link_to fa_icon('chevron-down lg'),
        question_votes_path(question, { is_up: false }),
        method: :post
    elsif vote.is_up?
      upvote = link_to fa_icon('chevron-up 2x'),
        question_vote_path(@question, @vote),
        method: :delete
      downvote = link_to fa_icon('chevron-down lg'),
        question_votes_path(question, { is_up: false }),
        method: :post
    else
      upvote = link_to fa_icon('chevron-up 2x'),
        question_vote_path(@question, @vote, { is_up: true }),
        method: :patch
      downvote = link_to fa_icon('chevron-down lg'),
        question_votes_path(question, { is_up: false }),
        method: :post
    end

    [ upvote, question.vote_total, downvote ].join('').html_safe
  end
end
