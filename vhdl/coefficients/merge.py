lines1 = open('in_i.txt','r').readlines()
lines2 = open('in_q.txt','r').readlines()

with open('in.txt','w') as f:
    for i in range(len(lines1)):
        f.write(lines1[i][:-1] + ' ' + lines2[i][:-1] + '\n')
    

