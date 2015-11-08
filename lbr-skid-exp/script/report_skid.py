import sys, io



def block_compare(toprcd, n, allrcd, m, nMaxSkid=4):
    if toprcd[n] == allrcd[m]:
        return 0
    else:
        if toprcd[n] == allrcd[m+1]:
            return 1   
        elif toprcd[n] == allrcd[m+2]:
            return 2
        elif toprcd[n] == allrcd[m+3]:
            return 3
        elif toprcd[n] == allrcd[m+4]:
            return 4

        else:
            print "unexpected skid value"


def main(allFName,topFName):
    toprcd = []
    with open(topFName) as topf:
        toprcd = topf.read().splitlines()
    allrcd = []
    with open(allFName) as allf:
        allrcd = allf.read().splitlines()
       
    nts = 0 
    nas = 24
    nMaxSkid = 4
    while (nts < len(toprcd)) and (nas < len(allrcd)-nMaxSkid):
        nskid = block_compare(toprcd, nts, allrcd, nas)
        if nskid is not None:
            print nskid
        
        nts = nts+8
        nas = nas+16
        

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print sys.argv[0], "perf.txt  perf.txt.top"
        exit
    allf = sys.argv[1]
    topf = sys.argv[2]
    main(allf, topf)
    
