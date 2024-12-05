function retval = word_idx (distinct_wds)
    % return the word_idx dictionary HINT: containers.Map
    indi =  zeros(1, length(distinct_wds));
    for i = 1:length(distinct_wds)
        indi(i) = i;
    end
    retval = containers.Map(distinct_wds, indi);
endfunction
