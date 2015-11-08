import os, sys


def main(strFData, strFOut):
    #read data
    liData = []
    liOut = []
    with open(strFData) as f:
        liData = f.read().splitlines()
    
    #process data
    strFlag = "... branch stack: nr:"
    strNull = ".....  idx: 00000000FFFFFFFF -> 00000000FFFFFFFF"
    
    nIndexData = 0
    nFlagLen = len(strFlag) 
    while nIndexData < len(liData):
        strLine = liData[nIndexData]
        nIndexData += 1

        if strLine[:nFlagLen] != strFlag:
            continue
        else:
            nUsedSlot = int(strLine[nFlagLen:])
            #error test
            if nUsedSlot+nIndexData > len(liData):
                print "Data format error! @", nIndexData, ", but i can fixup"
                break
            
            #add part of data
            i = 0
            while i < nUsedSlot:
                liOut.append(liData[nIndexData])
                nIndexData += 1
                i = i + 1
            
            if nUsedSlot == 16:
                continue
            
            #add strNull*(16-nUsedSlot)
            while nUsedSlot < 16:
                strTemp = strNull.replace("idx", str(nUsedSlot))
                liOut.append(strTemp)
                nUsedSlot += 1
        #end if
    #end while
    #output data
    with open(strFOut, "w+") as f:
        strOut = "\n".join(liOut)
        f.writelines(strOut)
    
if __name__ == "__main__":
    if len(sys.argv) != 3:
        print sys.argv[0], "data_file out_result_file"
        exit
    strFData = sys.argv[1]
    strFOut = sys.argv[2]
    main(strFData, strFOut)
    
    
    
