//
//  ContentView.swift
//  CDU_ACARS_FMC
//
//  Created by kushagra Ahuja on 4/29/22.
//

import SwiftUI

enum cduAlphabets: String{
    case a = "A"
    case b = "B"
    case c = "C"
    case d = "D"
    case e = "E"
    case f = "F"
    case g = "G"
    case h = "H"
    case i = "I"
    case j = "J"
    case k = "K"
    case l = "L"
    case m = "M"
    case n = "N"
    case o = "O"
    case p = "P"
    case q = "Q"
    case r = "R"
    case s = "S"
    case t = "T"
    case u = "U"
    case v = "V"
    case w = "W"
    case x = "X"
    case y = "Y"
    case z = "Z"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eigth = "8"
    case nine = "9"
    case zero = "0"
    case test = "test"
    
}

struct ContentView: View {
    
    @State var screenName: String =  "ACARS-APPLICATION MENU"
    @State var headerPlaceHolder: String = " "
    @State private var Selection: String? = nil;
    @State var selectPage: String = "Existing";
    
    
    let columns: [GridItem] = [GridItem(.fixed(200)), GridItem(.fixed(200)), GridItem(.fixed(200)), GridItem(.fixed(200)), GridItem(.fixed(200)), GridItem(.fixed(200)), GridItem(.fixed(200))]
    
    let alphaButtons : [[cduAlphabets]] =
    [[.a, .b, .c, .d, .e]]
    
    
    
    //    func buttonPressed(){
    //        if(Selection == nil){
    //            Selection = "1"
    //        }
    //        else{
    //            Selection = nil
    //        }
    //    }
    
    var body: some View {
        ZStack{
            Image("base screen").resizable().ignoresSafeArea()
            
            VStack{
                Image("Initial Screen")
                Spacer()
                
                //HStack for L and R keys In Vertical contained in VStack
                
                
                //--->> Vstack Containing Loops for Alphabet keys Insert 5 Rows With 5 Sets of Horizontal Stacks
                
                
                Button(action: {}, label: {}).buttonStyle(CustomButtonStyle())
                
                HStack (spacing: -25){
                    
                    ForEach(alphaButtons, id: \.self){ row in
                        ForEach(row, id: \.self) {item in
                            Button(action:{}, label:{Text(item.rawValue).foregroundColor(.white)}).buttonStyle(CustomButtonStyle()).padding(65)
                        }
                    }
                }
            }
            
            
            
            //                HStack{
            //
            //                    HStack (spacing:20){
            //                        LazyVGrid(columns: columns,spacing: 25){
            //                            Button(action: {}, label: {}).buttonStyle(CustomButtonStyle())
            //                        }}.padding(.trailing, 35)
            
            
            
            
            
            
            
            
            HStack (spacing: -25){
                Spacer()
                ForEach(alphaButtons, id: \.self){ row in
                    ForEach(row, id: \.self) {item in
                        Image("Key_Shape")
                    }
                }
            }
            HStack (spacing: -25){
                Spacer()
                ForEach(alphaButtons, id: \.self){ row in
                    ForEach(row, id: \.self) {item in
                        Image("Key_Shape")
                    }
                }
            }
            HStack (spacing: -25){
                Spacer()
                ForEach(alphaButtons, id: \.self){ row in
                    ForEach(row, id: \.self) {item in
                        Image("Key_Shape")
                    }
                }
            }
            
        }
    }
    
    
    
    
    struct LaunchScreen: View{
        var body: some View{
            ZStack{
            }
        }
        
        
        struct Screen2AOC: View {
            var body: some View{
                ZStack{
                    Image("Initial Screen")
                    
                }
            }
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
    }
}

