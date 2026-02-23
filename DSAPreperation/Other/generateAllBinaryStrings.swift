//
//  generateAllBinaryStrings.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 23/02/26.
//


func generateAllBinaryStrings(k: Int) -> [String] {
    var results = [String]()
    
    // This is the recursive "engine"
    func build(currentString: String) {
        // Base Case: If the string is the right length, save it
        if currentString.count == k {
            results.append(currentString)
            return
        }
        
        // Step 1: Try adding a '0'
        build(currentString: currentString + "0")
        
        // Step 2: Try adding a '1'
        build(currentString: currentString + "1")
    }
    
    // Start the process with an empty string
    build(currentString: "")
    
    return results
}

// Example usage:
//let combinations = generateAllBinaryStrings(k: 3)
//print(combinations)
// Output: ["000", "001", "010", "011", "100", "101", "110", "111"]


func generateBinaryIterative(k: Int) -> [String] {
    var results = [""] // Start with an empty slot
    
    // We do this 'k' times
    for _ in 1...k {
        var tempResults = [String]()
        
        for string in results {
            // Take the existing string and branch it
            tempResults.append(string + "0")
            tempResults.append(string + "1")
        }
        
        // Replace the old list with the new, doubled list
        results = tempResults
    }
    
    return results
}

//let result = generateBinaryIterative(k: 3)
//print(result)
// ["000", "001", "010", "011", "100", "101", "110", "111"]
