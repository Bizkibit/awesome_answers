module VotesHelper

  def question_voter(question, vote)
    # if vote.nil?
     [
      link_to(
        fa_icon('chevron-up lg'),
        question_votes_path(question, { is_up: true }),
        method: :post
      ),
      question.vote_total,
      link_to(
        fa_icon('chevron-down lg'),
        question_votes_path(question, { is_up: false }),
        method: :post
      )
    ].join('')
  # end
  end
end
