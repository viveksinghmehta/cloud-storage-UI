//
//  StorageStatView.swift
//  Cloud Storage
//
//  Created by WishACloud on 01/05/21.
//

import SwiftUI

struct Arc: InsettableShape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    var insetAmount: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct StorageStatView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color(UIColor(red: 246/255, green: 248/255, blue: 252/255, alpha: 1.0))
                .frame(width: 310, height: 200)
                .cornerRadius(25)
            VStack(alignment: .center) {
                HStack {
                    Text("Global statistics")
                        .font(.system(.title2, design: .rounded))
                        .bold()
                        .foregroundColor(Color("textColor"))
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                VStack(alignment: .center) {
                    ZStack {
                        Arc(startAngle: .degrees(-120), endAngle: .degrees(120), clockwise: true)
                            .stroke(style: StrokeStyle(lineWidth: 15.0, lineCap: .round))
                            .foregroundColor(Color("lightGrey"))
                            .frame(width: 250, height: 250)
                        Arc(startAngle: .degrees(-120), endAngle: .degrees(60), clockwise: true)
                            .stroke(style: StrokeStyle(lineWidth: 25.0, lineCap: .round))
                            .foregroundColor(.blue)
                            .shadow(color: Color.blue.opacity(0.5), radius: 8)
                            .frame(width: 250, height: 250)
                        VStack(alignment: .center) {
                            Text("64%")
                                .font(.system(.largeTitle, design: .rounded))
                                .bold()
                            Text("used space")
                                .font(.system(.body, design: .rounded))
                                .foregroundColor(.secondary)
                        }
                    }
                    HStack(spacing: 20) {
                        VStack {
                            Text("Total space")
                                .font(.system(.footnote, design: .rounded))
                                .foregroundColor(.secondary)
                            HStack {
                                Circle().fill(Color("lightGrey"))
                                    .frame(width: 10, height: 10)
                                Text("2 TB")
                                    .font(.system(.body, design: .rounded))
                                    .bold()
                            }
                        }
                        VStack {
                            Text("Space used")
                                .font(.system(.footnote, design: .rounded))
                                .foregroundColor(.secondary)
                            HStack {
                                Circle().fill(Color.blue)
                                    .frame(width: 10, height: 10)
                                Text("1.28 TB")
                                    .font(.system(.body, design: .rounded))
                                    .bold()
                            }
                        }
                    }
                    .offset(x: 0, y: -50.0)
                }
            }
            .padding(.all, 10)
            .background(Color.white)
            .cornerRadius(25)
            .offset(y: -20.0)
        }
    }
}

struct StorageStatView_Previews: PreviewProvider {
    static var previews: some View {
        StorageStatView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
