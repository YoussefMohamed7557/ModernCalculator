//
//  brainCalculator.swift
//  modern_calculator
//
//  Created by Yossef on 2/9/20.
//  Copyright © 2020 Yossef. All rights reserved.
//

import Foundation
class brainCalculator{
    
    typealias calcElement = (Num : Double ,op: Character)
    private var NumWithOpArray : [calcElement]=[]
    
    func Add (Number : Double ,with operation :Character)
    {
        NumWithOpArray.append(calcElement(Num:Number,op:operation))
    }
    func result() ->String{
        calcMultiplicationAndDivision()
        calcSubrtract()
        return String(NumWithOpArray.reduce(0, {$0 + $1.Num}) )
    }
    func restart() {
        NumWithOpArray = []
    }
    func calcMultiplicationAndDivision (){
        for (index ,current) in NumWithOpArray . enumerated()
        {
            if current.op == "X" || current.op == "/"
            {
                let afterCurrent = NumWithOpArray[index + 1]
                var newCalc : calcElement!
                if current .op == "X"
                {
                    newCalc = calcElement(Num: current.Num * afterCurrent.Num ,op : afterCurrent.op)
                }
                else if current .op == "/"
                {
                    newCalc = calcElement(Num: current.Num / afterCurrent.Num ,op : afterCurrent.op)
                }
                NumWithOpArray.remove(at: index);NumWithOpArray.remove(at: index)
                NumWithOpArray.insert(newCalc, at: index)
                calcMultiplicationAndDivision()
                break
            }
        }
    }
    func calcSubrtract (){
        for (index ,current) in NumWithOpArray . enumerated()
        {
            if current.op == "-"
            {
                let afterCurrent = NumWithOpArray[index + 1]
                let newCalc : calcElement = calcElement(Num: current.Num - afterCurrent.Num ,op : afterCurrent.op)
                NumWithOpArray.remove(at: index);NumWithOpArray.remove(at: index)
                NumWithOpArray.insert(newCalc, at: index)
                calcSubrtract()
                break
            }
        }
    }
}
