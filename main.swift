

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

func swap (integers:inout [Int], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp

}

func sort () {
    var tempCount = 0
    var totalCount = 0
    var functionInvoke = true
    var unsortedArray = unsortedIntegers
    print("Pass: \(0), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedArray)")
    while(functionInvoke){
        for i in 0 ..< unsortedArray.count{
            for j in 1 ..< unsortedArray.count - i{
                if(unsortedArray[j] < unsortedArray[j-1]){
                    functionInvoke = true
                    tempCount += 1
                    totalCount += 1
                    swap(integers:&unsortedArray, firstIndex:j, secondIndex:j-1)
                }
            }
            print("Pass: \(i+1), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedArray)")

            if(tempCount == 0){
                functionInvoke = false
                break
            }
            tempCount = 0
        }
    }
}
sort()
