# 作業: 班上有50位同學，單數號皆為男生，雙數號皆為女生，期中考及格同學為11,16,23,31,36,47,50 七位同學，期末考及格同學為3,9,16,20,27,31,36,49,50 九位同學，請以上述所教「R 中集合運算」指令回答：
midterm_pass <- c(11,16,23,31,36,47,50)
final_pass <- c(3,9,16,20,27,31,36,49,50)
both_pass <- intersect(midterm_pass, final_pass)
total <- union(midterm_pass, final_pass)
# (1)	列出期中期末皆及格的男生
both_pass[both_pass%%2 == 1]

# (2)	列出期中期末皆及格的女生
both_pass[both_pass%%2 == 0]

# (3)	列出期中及格、期末不及格的男生
setdiff(midterm_pass, final_pass)[setdiff(midterm_pass, final_pass)%%2 == 1]

# (4)	列出期中不及格、期末及格的女生
setdiff(final_pass, midterm_pass)[setdiff(final_pass, midterm_pass)%%2 == 0]
