
import re


def get_equip_list():
    result = []
    with open('..\\jzjh\\scripts\\map\\static\\attrs.lua', encoding='utf-8') as f:
        for line in f.readlines():
            d = dict()
            regex = r'\s*Cun\((.*)\)'
            if re.match(regex, line):
                l = re.search(regex, line).group(1).split(',')
                flag = True
                for od in result:
                    print(od)
                    if od['id'] == l[0].strip(' "'):
                        for i in range(0, len(l[2:]), 2):
                            od[l[2+i].strip(' "')] = l[3+i].strip(' "')
                        flag = False
                if flag:
                    d['id'] = l[0].strip(' "')
                    d['name'] = l[1].strip(' "')
                    for i in range(0, len(l[2:]), 2):
                        d[l[2+i].strip(' "')] = l[3+i].strip(' "')
                    result.append(d)

    return result

#10进制转其他进制，从地位到高位输出结果
def conversion(n, d):
    l = []
    s = ''
    while(n//d >= 1):
        l.append(chr(n%d))
        n = n//d
    if(n%d !=0):
        l.append(chr(n%d))
    while len(l) > 0:
        s += l.pop()
    return s


def main():
    l = get_equip_list()
    with open('a.ini', 'w', encoding='utf-8') as f:
        for d in l:
            print(d)
            f.write("['" + d['name'] + "']\n")
            for k, v in d.items():
                if k != 'name' and k != 'nil':
                    if k == 'id':
                        f.write("'" + k + "'" + ' = ' + "'" + conversion(int(v), 256) + '\'\n')
                    else:
                        f.write("'" + k + "'" + ' = ' + v + '\n')



if __name__ == '__main__':
    main()
