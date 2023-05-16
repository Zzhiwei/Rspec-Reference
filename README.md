# source
https://www.udemy.com/course/testing-ruby-with-rspec/
# installation
`gem install rspec`

# order
### basics
1. card
2. context
3. before after
4. nested hook
5. overwriting let
### preventing code dup & reducing code
6. implicit subject
7. explicit subject
8. described class
9. one liner syntax
10. shared examples
11. shared context
### built-in matchers
12. not_to
13. equality: eq, eql, equal, be
14. comparison matchers
15. predicate matches
16. all matchers
17. be matcher(truthy, falsy, nil)
18. change matcher
19. contain exactly (ignore order)
20. start_with, end_with
21. have_attribute
22. include (substr, arr elt, keys, key-val)
23. raise error
24. respond to (check if class has method & #args)
25. satisfy: custom predicate function
26. not_to_spec
27. compound expectations
### mocking
28. double()
29. movie 
30. allow(double_or_real_obj).to receive(:method_name).with(matching_arg).and_return(a, b, c)
31. matching arguments
32. instance double (only can mock real methods)
33. class double
34. spies I (vs double)
