//
//  ViewController.swift
//  bmi
//
//  Created by 소프트웨어컴퓨터 on 2020/11/19.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var txtHeight: UITextField!
    @IBOutlet var txtWeight: UITextField!
    @IBOutlet var lblResult: UILabel!

    @IBAction func scMF(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
                    let height = Double(txtHeight.text!)!
                    let weight = Double(txtWeight.text!)!
                    print(height,weight)
                    let bmi = weight/(height*height*0.0001)
                    let shortenedBmi = String(format: "%.1f", bmi)
                    var body = ""
                    var color = UIColor.white
                    if bmi >= 40{
                        color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                        body = "3단계 비만"
                    } else if bmi >= 30 && bmi < 40{
                        color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
                        body = "2단계 비만"
                    } else if bmi >= 25 && bmi < 30{
                        color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
                        body = "1단계 비만"
                    } else if bmi >= 18.5 && bmi < 25{
                        color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
                        body = "정상"
                    } else {
                        color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
                        body = "저체중"
                    }
                    //print("BMI:\(shortenedBmi), 판정:\(body)")
                    lblResult.backgroundColor = color
                    lblResult.clipsToBounds = true
                    lblResult.layer.cornerRadius = 10
                    lblResult.text = "BMI:\(shortenedBmi), 판정:\(body)"
                    
            }
            else{
                    let height = Double(txtHeight.text!)!
                    let weight = Double(txtWeight.text!)!
                    print(height,weight)
                    let bmi = 703 * weight/(height*height)
                    let shortenedBmi = String(format: "%.1f", bmi)
                    var body = ""
                    var color = UIColor.white
                    if bmi >= 40{
                        color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                        body = "3단계 비만"
                    } else if bmi >= 35 && bmi < 40{
                        color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
                        body = "2단계 비만"
                    } else if bmi >= 30 && bmi < 35{
                        color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
                        body = "1단계 비만"
                    } else if bmi >= 25 && bmi < 30{
                        color = UIColor(displayP3Red: 0.2, green: 0.0, blue: 0.0, alpha: 1.0)
                        body = "과체중"
                    } else if bmi >= 18.5 && bmi < 25{
                        color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
                        body = "정상"
                    } else {
                        color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
                        body = "저체중"
                    }
                    //print("BMI:\(shortenedBmi), 판정:\(body)")
                    lblResult.backgroundColor = color
                    lblResult.clipsToBounds = true
                    lblResult.layer.cornerRadius = 10
                    lblResult.text = "BMI:\(shortenedBmi), 판정:\(body)"
                    
            }
}
    @IBAction func calcBMI(_ sender: UIButton) {
    if txtHeight.text == "" || txtWeight.text==""{
        print("input error")
        lblResult.text = "키와 체중을 입력해주세요!"
        return
    } else{
                let height = Double(txtHeight.text!)!
                let weight = Double(txtWeight.text!)!
                print(height,weight)
                let bmi = weight/(height*height*0.0001)
                let shortenedBmi = String(format: "%.1f", bmi)
                var body = ""
                var color = UIColor.white
                if bmi >= 40{
                    color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                    body = "3단계 비만"
                } else if bmi >= 30 && bmi < 40{
                    color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
                    body = "2단계 비만"
                } else if bmi >= 25 && bmi < 30{
                    color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
                    body = "1단계 비만"
                } else if bmi >= 18.5 && bmi < 25{
                    color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
                    body = "정상"
                } else {
                    color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
                    body = "저체중"
                }
                //print("BMI:\(shortenedBmi), 판정:\(body)")
                lblResult.backgroundColor = color
                lblResult.clipsToBounds = true
                lblResult.layer.cornerRadius = 10
                lblResult.text = "BMI:\(shortenedBmi), 판정:\(body)"
                
        }
    }
}
