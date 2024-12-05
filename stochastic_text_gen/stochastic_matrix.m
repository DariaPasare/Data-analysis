function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors

    nr_secv = length(k_secv_set);
    nr_words = length(words_set);
    M = zeros(nr_secv, nr_words);

    for i = 1:length(k_secv_corpus)
        k_secv = k_secv_corpus{i};
        k_secv_idx = lookup(k_secv_set, k_secv);

        if i+k <= length(corpus_words) && k_secv_idx <= nr_secv
            next_word = corpus_words{i+k};
            next_word_idx = lookup(words_set, next_word);

            if next_word_idx <= nr_words
                M(k_secv_idx, next_word_idx) = M(k_secv_idx, next_word_idx) + 1;
            end
        end
    end

    retval = sparse(M);
end

