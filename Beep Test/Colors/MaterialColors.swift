//
//  MaterialColors.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-08-10.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

enum MaterialColors {
    case deeporange, lightgreen, amber, deeppurple, teal, orange, green, lightblue, indigo, purple, red, blue, cyan, pink, lime, yellow
    
    enum Lightness {
        case p50, p100, p200, p300, p400, p500, p600, p700, p800, p900
        case a100, a200, a400, a700
    }
}

enum LimitedMaterialColors {
    case brown, grey, bluegrey
    enum Lightness {
        case p50, p100, p200, p300, p400, p500, p600, p700, p800, p900
    }
}

func getColor(_ color: MaterialColors, _ lightness: MaterialColors.Lightness, alpha: Double) -> UIColor {
 	return getColor(color, lightness).withAlphaComponent(CGFloat(alpha))
}

func getColor(_ color: LimitedMaterialColors, _ lightness: LimitedMaterialColors.Lightness, alpha: Double) -> UIColor {
    return getColor(color, lightness).withAlphaComponent(CGFloat(alpha))
}

func getColor(_ color: LimitedMaterialColors, _ lightness: LimitedMaterialColors.Lightness) -> UIColor {
    switch (color, lightness) {
    case (.grey, .p50): return #colorLiteral(red: 0.980392156862745, green: 0.980392156862745, blue: 0.980392156862745, alpha: 1)
    case (.grey, .p100): return #colorLiteral(red: 0.96078431372549, green: 0.96078431372549, blue: 0.96078431372549, alpha: 1)
    case (.grey, .p200): return #colorLiteral(red: 0.933333333333333, green: 0.933333333333333, blue: 0.933333333333333, alpha: 1)
    case (.grey, .p300): return #colorLiteral(red: 0.87843137254902, green: 0.87843137254902, blue: 0.87843137254902, alpha: 1)
    case (.grey, .p400): return #colorLiteral(red: 0.741176470588235, green: 0.741176470588235, blue: 0.741176470588235, alpha: 1)
    case (.grey, .p500): return #colorLiteral(red: 0.619607843137255, green: 0.619607843137255, blue: 0.619607843137255, alpha: 1)
    case (.grey, .p600): return #colorLiteral(red: 0.458823529411765, green: 0.458823529411765, blue: 0.458823529411765, alpha: 1)
    case (.grey, .p700): return #colorLiteral(red: 0.380392156862745, green: 0.380392156862745, blue: 0.380392156862745, alpha: 1)
    case (.grey, .p800): return #colorLiteral(red: 0.258823529411765, green: 0.258823529411765, blue: 0.258823529411765, alpha: 1)
    case (.grey, .p900): return #colorLiteral(red: 0.129411764705882, green: 0.129411764705882, blue: 0.129411764705882, alpha: 1)
        
    case (.bluegrey, .p50): return #colorLiteral(red: 0.925490196078431, green: 0.937254901960784, blue: 0.945098039215686, alpha: 1)
    case (.bluegrey, .p100): return #colorLiteral(red: 0.811764705882353, green: 0.847058823529412, blue: 0.862745098039216, alpha: 1)
    case (.bluegrey, .p200): return #colorLiteral(red: 0.690196078431373, green: 0.745098039215686, blue: 0.772549019607843, alpha: 1)
    case (.bluegrey, .p300): return #colorLiteral(red: 0.564705882352941, green: 0.643137254901961, blue: 0.682352941176471, alpha: 1)
    case (.bluegrey, .p400): return #colorLiteral(red: 0.470588235294118, green: 0.564705882352941, blue: 0.611764705882353, alpha: 1)
    case (.bluegrey, .p500): return #colorLiteral(red: 0.376470588235294, green: 0.490196078431373, blue: 0.545098039215686, alpha: 1)
    case (.bluegrey, .p600): return #colorLiteral(red: 0.329411764705882, green: 0.431372549019608, blue: 0.47843137254902, alpha: 1)
    case (.bluegrey, .p700): return #colorLiteral(red: 0.270588235294118, green: 0.352941176470588, blue: 0.392156862745098, alpha: 1)
    case (.bluegrey, .p800): return #colorLiteral(red: 0.215686274509804, green: 0.27843137254902, blue: 0.309803921568627, alpha: 1)
    case (.bluegrey, .p900): return #colorLiteral(red: 0.149019607843137, green: 0.196078431372549, blue: 0.219607843137255, alpha: 1)
        
    case (.brown, .p50): return #colorLiteral(red: 0.937254901960784, green: 0.92156862745098, blue: 0.913725490196078, alpha: 1)
    case (.brown, .p100): return #colorLiteral(red: 0.843137254901961, green: 0.8, blue: 0.784313725490196, alpha: 1)
    case (.brown, .p200): return #colorLiteral(red: 0.737254901960784, green: 0.666666666666667, blue: 0.643137254901961, alpha: 1)
    case (.brown, .p300): return #colorLiteral(red: 0.631372549019608, green: 0.533333333333333, blue: 0.498039215686275, alpha: 1)
    case (.brown, .p400): return #colorLiteral(red: 0.552941176470588, green: 0.431372549019608, blue: 0.388235294117647, alpha: 1)
    case (.brown, .p500): return #colorLiteral(red: 0.474509803921569, green: 0.333333333333333, blue: 0.282352941176471, alpha: 1)
    case (.brown, .p600): return #colorLiteral(red: 0.427450980392157, green: 0.298039215686275, blue: 0.254901960784314, alpha: 1)
    case (.brown, .p700): return #colorLiteral(red: 0.364705882352941, green: 0.250980392156863, blue: 0.215686274509804, alpha: 1)
    case (.brown, .p800): return #colorLiteral(red: 0.305882352941176, green: 0.203921568627451, blue: 0.180392156862745, alpha: 1)
    case (.brown, .p900): return #colorLiteral(red: 0.243137254901961, green: 0.152941176470588, blue: 0.137254901960784, alpha: 1)
    }
}

func getColor(_ color: MaterialColors, _ lightness: MaterialColors.Lightness) -> UIColor {
    switch (color, lightness) {
    case (.deeporange, .p50): return #colorLiteral(red: 0.984313725490196, green: 0.913725490196078, blue: 0.905882352941176, alpha: 1)
    case (.deeporange, .p100): return #colorLiteral(red: 1.0, green: 0.8, blue: 0.737254901960784, alpha: 1)
    case (.deeporange, .p200): return #colorLiteral(red: 1.0, green: 0.670588235294118, blue: 0.568627450980392, alpha: 1)
    case (.deeporange, .p300): return #colorLiteral(red: 1.0, green: 0.541176470588235, blue: 0.396078431372549, alpha: 1)
    case (.deeporange, .p400): return #colorLiteral(red: 1.0, green: 0.43921568627451, blue: 0.262745098039216, alpha: 1)
    case (.deeporange, .p500): return #colorLiteral(red: 1.0, green: 0.341176470588235, blue: 0.133333333333333, alpha: 1)
    case (.deeporange, .p600): return #colorLiteral(red: 0.956862745098039, green: 0.317647058823529, blue: 0.117647058823529, alpha: 1)
    case (.deeporange, .p700): return #colorLiteral(red: 0.901960784313726, green: 0.290196078431373, blue: 0.0980392156862745, alpha: 1)
    case (.deeporange, .p800): return #colorLiteral(red: 0.847058823529412, green: 0.262745098039216, blue: 0.0823529411764706, alpha: 1)
    case (.deeporange, .p900): return #colorLiteral(red: 0.749019607843137, green: 0.211764705882353, blue: 0.0470588235294118, alpha: 1)
    case (.deeporange, .a100): return #colorLiteral(red: 1.0, green: 0.619607843137255, blue: 0.501960784313725, alpha: 1)
    case (.deeporange, .a200): return #colorLiteral(red: 1.0, green: 0.431372549019608, blue: 0.250980392156863, alpha: 1)
    case (.deeporange, .a400): return #colorLiteral(red: 1.0, green: 0.23921568627451, blue: 0.0, alpha: 1)
    case (.deeporange, .a700): return #colorLiteral(red: 0.866666666666667, green: 0.172549019607843, blue: 0.0, alpha: 1)
        
    case (.lightgreen, .p50): return #colorLiteral(red: 0.945098039215686, green: 0.972549019607843, blue: 0.913725490196078, alpha: 1)
    case (.lightgreen, .p100): return #colorLiteral(red: 0.862745098039216, green: 0.929411764705882, blue: 0.784313725490196, alpha: 1)
    case (.lightgreen, .p200): return #colorLiteral(red: 0.772549019607843, green: 0.882352941176471, blue: 0.647058823529412, alpha: 1)
    case (.lightgreen, .p300): return #colorLiteral(red: 0.682352941176471, green: 0.835294117647059, blue: 0.505882352941176, alpha: 1)
    case (.lightgreen, .p400): return #colorLiteral(red: 0.611764705882353, green: 0.8, blue: 0.396078431372549, alpha: 1)
    case (.lightgreen, .p500): return #colorLiteral(red: 0.545098039215686, green: 0.764705882352941, blue: 0.290196078431373, alpha: 1)
    case (.lightgreen, .p600): return #colorLiteral(red: 0.486274509803922, green: 0.701960784313725, blue: 0.258823529411765, alpha: 1)
    case (.lightgreen, .p700): return #colorLiteral(red: 0.407843137254902, green: 0.623529411764706, blue: 0.219607843137255, alpha: 1)
    case (.lightgreen, .p800): return #colorLiteral(red: 0.333333333333333, green: 0.545098039215686, blue: 0.184313725490196, alpha: 1)
    case (.lightgreen, .p900): return #colorLiteral(red: 0.2, green: 0.411764705882353, blue: 0.117647058823529, alpha: 1)
    case (.lightgreen, .a100): return #colorLiteral(red: 0.8, green: 1.0, blue: 0.564705882352941, alpha: 1)
    case (.lightgreen, .a200): return #colorLiteral(red: 0.698039215686274, green: 1.0, blue: 0.349019607843137, alpha: 1)
    case (.lightgreen, .a400): return #colorLiteral(red: 0.462745098039216, green: 1.0, blue: 0.0117647058823529, alpha: 1)
    case (.lightgreen, .a700): return #colorLiteral(red: 0.392156862745098, green: 0.866666666666667, blue: 0.0901960784313725, alpha: 1)
        
    case (.amber, .p50): return #colorLiteral(red: 1.0, green: 0.972549019607843, blue: 0.882352941176471, alpha: 1)
    case (.amber, .p100): return #colorLiteral(red: 1.0, green: 0.925490196078431, blue: 0.701960784313725, alpha: 1)
    case (.amber, .p200): return #colorLiteral(red: 1.0, green: 0.87843137254902, blue: 0.509803921568627, alpha: 1)
    case (.amber, .p300): return #colorLiteral(red: 1.0, green: 0.835294117647059, blue: 0.309803921568627, alpha: 1)
    case (.amber, .p400): return #colorLiteral(red: 1.0, green: 0.792156862745098, blue: 0.156862745098039, alpha: 1)
    case (.amber, .p500): return #colorLiteral(red: 1.0, green: 0.756862745098039, blue: 0.0274509803921569, alpha: 1)
    case (.amber, .p600): return #colorLiteral(red: 1.0, green: 0.701960784313725, blue: 0.0, alpha: 1)
    case (.amber, .p700): return #colorLiteral(red: 1.0, green: 0.627450980392157, blue: 0.0, alpha: 1)
    case (.amber, .p800): return #colorLiteral(red: 1.0, green: 0.56078431372549, blue: 0.0, alpha: 1)
    case (.amber, .p900): return #colorLiteral(red: 1.0, green: 0.435294117647059, blue: 0.0, alpha: 1)
    case (.amber, .a100): return #colorLiteral(red: 1.0, green: 0.898039215686275, blue: 0.498039215686275, alpha: 1)
    case (.amber, .a200): return #colorLiteral(red: 1.0, green: 0.843137254901961, blue: 0.250980392156863, alpha: 1)
    case (.amber, .a400): return #colorLiteral(red: 1.0, green: 0.768627450980392, blue: 0.0, alpha: 1)
    case (.amber, .a700): return #colorLiteral(red: 1.0, green: 0.670588235294118, blue: 0.0, alpha: 1)
        
    case (.deeppurple, .p50): return #colorLiteral(red: 0.929411764705882, green: 0.905882352941176, blue: 0.964705882352941, alpha: 1)
    case (.deeppurple, .p100): return #colorLiteral(red: 0.819607843137255, green: 0.768627450980392, blue: 0.913725490196078, alpha: 1)
    case (.deeppurple, .p200): return #colorLiteral(red: 0.701960784313725, green: 0.615686274509804, blue: 0.858823529411765, alpha: 1)
    case (.deeppurple, .p300): return #colorLiteral(red: 0.584313725490196, green: 0.458823529411765, blue: 0.803921568627451, alpha: 1)
    case (.deeppurple, .p400): return #colorLiteral(red: 0.494117647058824, green: 0.341176470588235, blue: 0.76078431372549, alpha: 1)
    case (.deeppurple, .p500): return #colorLiteral(red: 0.403921568627451, green: 0.227450980392157, blue: 0.717647058823529, alpha: 1)
    case (.deeppurple, .p600): return #colorLiteral(red: 0.368627450980392, green: 0.207843137254902, blue: 0.694117647058824, alpha: 1)
    case (.deeppurple, .p700): return #colorLiteral(red: 0.317647058823529, green: 0.176470588235294, blue: 0.658823529411765, alpha: 1)
    case (.deeppurple, .p800): return #colorLiteral(red: 0.270588235294118, green: 0.152941176470588, blue: 0.627450980392157, alpha: 1)
    case (.deeppurple, .p900): return #colorLiteral(red: 0.192156862745098, green: 0.105882352941176, blue: 0.572549019607843, alpha: 1)
    case (.deeppurple, .a100): return #colorLiteral(red: 0.701960784313725, green: 0.533333333333333, blue: 1.0, alpha: 1)
    case (.deeppurple, .a200): return #colorLiteral(red: 0.486274509803922, green: 0.301960784313725, blue: 1.0, alpha: 1)
    case (.deeppurple, .a400): return #colorLiteral(red: 0.396078431372549, green: 0.12156862745098, blue: 1.0, alpha: 1)
    case (.deeppurple, .a700): return #colorLiteral(red: 0.384313725490196, green: 0.0, blue: 0.917647058823529, alpha: 1)
        
    case (.teal, .p50): return #colorLiteral(red: 0.87843137254902, green: 0.949019607843137, blue: 0.945098039215686, alpha: 1)
    case (.teal, .p100): return #colorLiteral(red: 0.698039215686274, green: 0.874509803921569, blue: 0.858823529411765, alpha: 1)
    case (.teal, .p200): return #colorLiteral(red: 0.501960784313725, green: 0.796078431372549, blue: 0.768627450980392, alpha: 1)
    case (.teal, .p300): return #colorLiteral(red: 0.301960784313725, green: 0.713725490196078, blue: 0.674509803921569, alpha: 1)
    case (.teal, .p400): return #colorLiteral(red: 0.149019607843137, green: 0.650980392156863, blue: 0.603921568627451, alpha: 1)
    case (.teal, .p500): return #colorLiteral(red: 0.0, green: 0.588235294117647, blue: 0.533333333333333, alpha: 1)
    case (.teal, .p600): return #colorLiteral(red: 0.0, green: 0.537254901960784, blue: 0.482352941176471, alpha: 1)
    case (.teal, .p700): return #colorLiteral(red: 0.0, green: 0.474509803921569, blue: 0.419607843137255, alpha: 1)
    case (.teal, .p800): return #colorLiteral(red: 0.0, green: 0.411764705882353, blue: 0.36078431372549, alpha: 1)
    case (.teal, .p900): return #colorLiteral(red: 0.0, green: 0.301960784313725, blue: 0.250980392156863, alpha: 1)
    case (.teal, .a100): return #colorLiteral(red: 0.654901960784314, green: 1.0, blue: 0.92156862745098, alpha: 1)
    case (.teal, .a200): return #colorLiteral(red: 0.392156862745098, green: 1.0, blue: 0.854901960784314, alpha: 1)
    case (.teal, .a400): return #colorLiteral(red: 0.113725490196078, green: 0.913725490196078, blue: 0.713725490196078, alpha: 1)
    case (.teal, .a700): return #colorLiteral(red: 0.0, green: 0.749019607843137, blue: 0.647058823529412, alpha: 1)
        
    case (.orange, .p50): return #colorLiteral(red: 1.0, green: 0.952941176470588, blue: 0.87843137254902, alpha: 1)
    case (.orange, .p100): return #colorLiteral(red: 1.0, green: 0.87843137254902, blue: 0.698039215686274, alpha: 1)
    case (.orange, .p200): return #colorLiteral(red: 1.0, green: 0.8, blue: 0.501960784313725, alpha: 1)
    case (.orange, .p300): return #colorLiteral(red: 1.0, green: 0.717647058823529, blue: 0.301960784313725, alpha: 1)
    case (.orange, .p400): return #colorLiteral(red: 1.0, green: 0.654901960784314, blue: 0.149019607843137, alpha: 1)
    case (.orange, .p500): return #colorLiteral(red: 1.0, green: 0.596078431372549, blue: 0.0, alpha: 1)
    case (.orange, .p600): return #colorLiteral(red: 0.984313725490196, green: 0.549019607843137, blue: 0.0, alpha: 1)
    case (.orange, .p700): return #colorLiteral(red: 0.96078431372549, green: 0.486274509803922, blue: 0.0, alpha: 1)
    case (.orange, .p800): return #colorLiteral(red: 0.937254901960784, green: 0.423529411764706, blue: 0.0, alpha: 1)
    case (.orange, .p900): return #colorLiteral(red: 0.901960784313726, green: 0.317647058823529, blue: 0.0, alpha: 1)
    case (.orange, .a100): return #colorLiteral(red: 1.0, green: 0.819607843137255, blue: 0.501960784313725, alpha: 1)
    case (.orange, .a200): return #colorLiteral(red: 1.0, green: 0.670588235294118, blue: 0.250980392156863, alpha: 1)
    case (.orange, .a400): return #colorLiteral(red: 1.0, green: 0.568627450980392, blue: 0.0, alpha: 1)
    case (.orange, .a700): return #colorLiteral(red: 1.0, green: 0.427450980392157, blue: 0.0, alpha: 1)
        
    case (.green, .p50): return #colorLiteral(red: 0.909803921568627, green: 0.96078431372549, blue: 0.913725490196078, alpha: 1)
    case (.green, .p100): return #colorLiteral(red: 0.784313725490196, green: 0.901960784313726, blue: 0.788235294117647, alpha: 1)
    case (.green, .p200): return #colorLiteral(red: 0.647058823529412, green: 0.83921568627451, blue: 0.654901960784314, alpha: 1)
    case (.green, .p300): return #colorLiteral(red: 0.505882352941176, green: 0.780392156862745, blue: 0.517647058823529, alpha: 1)
    case (.green, .p400): return #colorLiteral(red: 0.4, green: 0.733333333333333, blue: 0.415686274509804, alpha: 1)
    case (.green, .p500): return #colorLiteral(red: 0.298039215686275, green: 0.686274509803922, blue: 0.313725490196078, alpha: 1)
    case (.green, .p600): return #colorLiteral(red: 0.262745098039216, green: 0.627450980392157, blue: 0.27843137254902, alpha: 1)
    case (.green, .p700): return #colorLiteral(red: 0.219607843137255, green: 0.556862745098039, blue: 0.235294117647059, alpha: 1)
    case (.green, .p800): return #colorLiteral(red: 0.180392156862745, green: 0.490196078431373, blue: 0.196078431372549, alpha: 1)
    case (.green, .p900): return #colorLiteral(red: 0.105882352941176, green: 0.368627450980392, blue: 0.125490196078431, alpha: 1)
    case (.green, .a100): return #colorLiteral(red: 0.725490196078431, green: 0.964705882352941, blue: 0.792156862745098, alpha: 1)
    case (.green, .a200): return #colorLiteral(red: 0.411764705882353, green: 0.941176470588235, blue: 0.682352941176471, alpha: 1)
    case (.green, .a400): return #colorLiteral(red: 0.0, green: 0.901960784313726, blue: 0.462745098039216, alpha: 1)
    case (.green, .a700): return #colorLiteral(red: 0.0, green: 0.784313725490196, blue: 0.325490196078431, alpha: 1)
        
    case (.lightblue, .p50): return #colorLiteral(red: 0.882352941176471, green: 0.96078431372549, blue: 0.996078431372549, alpha: 1)
    case (.lightblue, .p100): return #colorLiteral(red: 0.701960784313725, green: 0.898039215686275, blue: 0.988235294117647, alpha: 1)
    case (.lightblue, .p200): return #colorLiteral(red: 0.505882352941176, green: 0.831372549019608, blue: 0.980392156862745, alpha: 1)
    case (.lightblue, .p300): return #colorLiteral(red: 0.309803921568627, green: 0.764705882352941, blue: 0.968627450980392, alpha: 1)
    case (.lightblue, .p400): return #colorLiteral(red: 0.16078431372549, green: 0.713725490196078, blue: 0.964705882352941, alpha: 1)
    case (.lightblue, .p500): return #colorLiteral(red: 0.0117647058823529, green: 0.662745098039216, blue: 0.956862745098039, alpha: 1)
    case (.lightblue, .p600): return #colorLiteral(red: 0.0117647058823529, green: 0.607843137254902, blue: 0.898039215686275, alpha: 1)
    case (.lightblue, .p700): return #colorLiteral(red: 0.00784313725490196, green: 0.533333333333333, blue: 0.819607843137255, alpha: 1)
    case (.lightblue, .p800): return #colorLiteral(red: 0.00784313725490196, green: 0.466666666666667, blue: 0.741176470588235, alpha: 1)
    case (.lightblue, .p900): return #colorLiteral(red: 0.00392156862745098, green: 0.341176470588235, blue: 0.607843137254902, alpha: 1)
    case (.lightblue, .a100): return #colorLiteral(red: 0.501960784313725, green: 0.847058823529412, blue: 1.0, alpha: 1)
    case (.lightblue, .a200): return #colorLiteral(red: 0.250980392156863, green: 0.768627450980392, blue: 1.0, alpha: 1)
    case (.lightblue, .a400): return #colorLiteral(red: 0.0, green: 0.690196078431373, blue: 1.0, alpha: 1)
    case (.lightblue, .a700): return #colorLiteral(red: 0.0, green: 0.568627450980392, blue: 0.917647058823529, alpha: 1)
        
    case (.indigo, .p50): return #colorLiteral(red: 0.909803921568627, green: 0.917647058823529, blue: 0.964705882352941, alpha: 1)
    case (.indigo, .p100): return #colorLiteral(red: 0.772549019607843, green: 0.792156862745098, blue: 0.913725490196078, alpha: 1)
    case (.indigo, .p200): return #colorLiteral(red: 0.623529411764706, green: 0.658823529411765, blue: 0.854901960784314, alpha: 1)
    case (.indigo, .p300): return #colorLiteral(red: 0.474509803921569, green: 0.525490196078431, blue: 0.796078431372549, alpha: 1)
    case (.indigo, .p400): return #colorLiteral(red: 0.36078431372549, green: 0.419607843137255, blue: 0.752941176470588, alpha: 1)
    case (.indigo, .p500): return #colorLiteral(red: 0.247058823529412, green: 0.317647058823529, blue: 0.709803921568627, alpha: 1)
    case (.indigo, .p600): return #colorLiteral(red: 0.223529411764706, green: 0.286274509803922, blue: 0.670588235294118, alpha: 1)
    case (.indigo, .p700): return #colorLiteral(red: 0.188235294117647, green: 0.247058823529412, blue: 0.623529411764706, alpha: 1)
    case (.indigo, .p800): return #colorLiteral(red: 0.156862745098039, green: 0.207843137254902, blue: 0.576470588235294, alpha: 1)
    case (.indigo, .p900): return #colorLiteral(red: 0.101960784313725, green: 0.137254901960784, blue: 0.494117647058824, alpha: 1)
    case (.indigo, .a100): return #colorLiteral(red: 0.549019607843137, green: 0.619607843137255, blue: 1.0, alpha: 1)
    case (.indigo, .a200): return #colorLiteral(red: 0.325490196078431, green: 0.427450980392157, blue: 0.996078431372549, alpha: 1)
    case (.indigo, .a400): return #colorLiteral(red: 0.23921568627451, green: 0.352941176470588, blue: 0.996078431372549, alpha: 1)
    case (.indigo, .a700): return #colorLiteral(red: 0.188235294117647, green: 0.309803921568627, blue: 0.996078431372549, alpha: 1)
        
    case (.purple, .p50): return #colorLiteral(red: 0.952941176470588, green: 0.898039215686275, blue: 0.96078431372549, alpha: 1)
    case (.purple, .p100): return #colorLiteral(red: 0.882352941176471, green: 0.745098039215686, blue: 0.905882352941176, alpha: 1)
    case (.purple, .p200): return #colorLiteral(red: 0.807843137254902, green: 0.576470588235294, blue: 0.847058823529412, alpha: 1)
    case (.purple, .p300): return #colorLiteral(red: 0.729411764705882, green: 0.407843137254902, blue: 0.784313725490196, alpha: 1)
    case (.purple, .p400): return #colorLiteral(red: 0.670588235294118, green: 0.27843137254902, blue: 0.737254901960784, alpha: 1)
    case (.purple, .p500): return #colorLiteral(red: 0.611764705882353, green: 0.152941176470588, blue: 0.690196078431373, alpha: 1)
    case (.purple, .p600): return #colorLiteral(red: 0.556862745098039, green: 0.141176470588235, blue: 0.666666666666667, alpha: 1)
    case (.purple, .p700): return #colorLiteral(red: 0.482352941176471, green: 0.12156862745098, blue: 0.635294117647059, alpha: 1)
    case (.purple, .p800): return #colorLiteral(red: 0.415686274509804, green: 0.105882352941176, blue: 0.603921568627451, alpha: 1)
    case (.purple, .p900): return #colorLiteral(red: 0.290196078431373, green: 0.0784313725490196, blue: 0.549019607843137, alpha: 1)
    case (.purple, .a100): return #colorLiteral(red: 0.917647058823529, green: 0.501960784313725, blue: 0.988235294117647, alpha: 1)
    case (.purple, .a200): return #colorLiteral(red: 0.87843137254902, green: 0.250980392156863, blue: 0.984313725490196, alpha: 1)
    case (.purple, .a400): return #colorLiteral(red: 0.835294117647059, green: 0.0, blue: 0.976470588235294, alpha: 1)
    case (.purple, .a700): return #colorLiteral(red: 0.666666666666667, green: 0.0, blue: 1.0, alpha: 1)
        
    case (.red, .p50): return #colorLiteral(red: 1.0, green: 0.92156862745098, blue: 0.933333333333333, alpha: 1)
    case (.red, .p100): return #colorLiteral(red: 1.0, green: 0.803921568627451, blue: 0.823529411764706, alpha: 1)
    case (.red, .p200): return #colorLiteral(red: 0.937254901960784, green: 0.603921568627451, blue: 0.603921568627451, alpha: 1)
    case (.red, .p300): return #colorLiteral(red: 0.898039215686275, green: 0.450980392156863, blue: 0.450980392156863, alpha: 1)
    case (.red, .p400): return #colorLiteral(red: 0.937254901960784, green: 0.325490196078431, blue: 0.313725490196078, alpha: 1)
    case (.red, .p500): return #colorLiteral(red: 0.956862745098039, green: 0.262745098039216, blue: 0.211764705882353, alpha: 1)
    case (.red, .p600): return #colorLiteral(red: 0.898039215686275, green: 0.223529411764706, blue: 0.207843137254902, alpha: 1)
    case (.red, .p700): return #colorLiteral(red: 0.827450980392157, green: 0.184313725490196, blue: 0.184313725490196, alpha: 1)
    case (.red, .p800): return #colorLiteral(red: 0.776470588235294, green: 0.156862745098039, blue: 0.156862745098039, alpha: 1)
    case (.red, .p900): return #colorLiteral(red: 0.717647058823529, green: 0.109803921568627, blue: 0.109803921568627, alpha: 1)
    case (.red, .a100): return #colorLiteral(red: 1.0, green: 0.541176470588235, blue: 0.501960784313725, alpha: 1)
    case (.red, .a200): return #colorLiteral(red: 1.0, green: 0.32156862745098, blue: 0.32156862745098, alpha: 1)
    case (.red, .a400): return #colorLiteral(red: 1.0, green: 0.0901960784313725, blue: 0.266666666666667, alpha: 1)
    case (.red, .a700): return #colorLiteral(red: 0.835294117647059, green: 0.0, blue: 0.0, alpha: 1)
        
    case (.blue, .p50): return #colorLiteral(red: 0.890196078431372, green: 0.949019607843137, blue: 0.992156862745098, alpha: 1)
    case (.blue, .p100): return #colorLiteral(red: 0.733333333333333, green: 0.870588235294118, blue: 0.984313725490196, alpha: 1)
    case (.blue, .p200): return #colorLiteral(red: 0.564705882352941, green: 0.792156862745098, blue: 0.976470588235294, alpha: 1)
    case (.blue, .p300): return #colorLiteral(red: 0.392156862745098, green: 0.709803921568627, blue: 0.964705882352941, alpha: 1)
    case (.blue, .p400): return #colorLiteral(red: 0.258823529411765, green: 0.647058823529412, blue: 0.96078431372549, alpha: 1)
    case (.blue, .p500): return #colorLiteral(red: 0.129411764705882, green: 0.588235294117647, blue: 0.952941176470588, alpha: 1)
    case (.blue, .p600): return #colorLiteral(red: 0.117647058823529, green: 0.533333333333333, blue: 0.898039215686275, alpha: 1)
    case (.blue, .p700): return #colorLiteral(red: 0.0980392156862745, green: 0.462745098039216, blue: 0.823529411764706, alpha: 1)
    case (.blue, .p800): return #colorLiteral(red: 0.0823529411764706, green: 0.396078431372549, blue: 0.752941176470588, alpha: 1)
    case (.blue, .p900): return #colorLiteral(red: 0.0509803921568627, green: 0.27843137254902, blue: 0.631372549019608, alpha: 1)
    case (.blue, .a100): return #colorLiteral(red: 0.509803921568627, green: 0.694117647058824, blue: 1.0, alpha: 1)
    case (.blue, .a200): return #colorLiteral(red: 0.266666666666667, green: 0.541176470588235, blue: 1.0, alpha: 1)
    case (.blue, .a400): return #colorLiteral(red: 0.16078431372549, green: 0.474509803921569, blue: 1.0, alpha: 1)
    case (.blue, .a700): return #colorLiteral(red: 0.16078431372549, green: 0.384313725490196, blue: 1.0, alpha: 1)
        
    case (.cyan, .p50): return #colorLiteral(red: 0.87843137254902, green: 0.968627450980392, blue: 0.980392156862745, alpha: 1)
    case (.cyan, .p100): return #colorLiteral(red: 0.698039215686274, green: 0.92156862745098, blue: 0.949019607843137, alpha: 1)
    case (.cyan, .p200): return #colorLiteral(red: 0.501960784313725, green: 0.870588235294118, blue: 0.917647058823529, alpha: 1)
    case (.cyan, .p300): return #colorLiteral(red: 0.301960784313725, green: 0.815686274509804, blue: 0.882352941176471, alpha: 1)
    case (.cyan, .p400): return #colorLiteral(red: 0.149019607843137, green: 0.776470588235294, blue: 0.854901960784314, alpha: 1)
    case (.cyan, .p500): return #colorLiteral(red: 0.0, green: 0.737254901960784, blue: 0.831372549019608, alpha: 1)
    case (.cyan, .p600): return #colorLiteral(red: 0.0, green: 0.674509803921569, blue: 0.756862745098039, alpha: 1)
    case (.cyan, .p700): return #colorLiteral(red: 0.0, green: 0.592156862745098, blue: 0.654901960784314, alpha: 1)
    case (.cyan, .p800): return #colorLiteral(red: 0.0, green: 0.513725490196078, blue: 0.56078431372549, alpha: 1)
    case (.cyan, .p900): return #colorLiteral(red: 0.0, green: 0.376470588235294, blue: 0.392156862745098, alpha: 1)
    case (.cyan, .a100): return #colorLiteral(red: 0.517647058823529, green: 1.0, blue: 1.0, alpha: 1)
    case (.cyan, .a200): return #colorLiteral(red: 0.0941176470588235, green: 1.0, blue: 1.0, alpha: 1)
    case (.cyan, .a400): return #colorLiteral(red: 0.0, green: 0.898039215686275, blue: 1.0, alpha: 1)
    case (.cyan, .a700): return #colorLiteral(red: 0.0, green: 0.72156862745098, blue: 0.831372549019608, alpha: 1)
        
    case (.pink, .p50): return #colorLiteral(red: 0.988235294117647, green: 0.894117647058824, blue: 0.925490196078431, alpha: 1)
    case (.pink, .p100): return #colorLiteral(red: 0.972549019607843, green: 0.733333333333333, blue: 0.815686274509804, alpha: 1)
    case (.pink, .p200): return #colorLiteral(red: 0.956862745098039, green: 0.56078431372549, blue: 0.694117647058824, alpha: 1)
    case (.pink, .p300): return #colorLiteral(red: 0.941176470588235, green: 0.384313725490196, blue: 0.572549019607843, alpha: 1)
    case (.pink, .p400): return #colorLiteral(red: 0.925490196078431, green: 0.250980392156863, blue: 0.47843137254902, alpha: 1)
    case (.pink, .p500): return #colorLiteral(red: 0.913725490196078, green: 0.117647058823529, blue: 0.388235294117647, alpha: 1)
    case (.pink, .p600): return #colorLiteral(red: 0.847058823529412, green: 0.105882352941176, blue: 0.376470588235294, alpha: 1)
    case (.pink, .p700): return #colorLiteral(red: 0.76078431372549, green: 0.0941176470588235, blue: 0.356862745098039, alpha: 1)
    case (.pink, .p800): return #colorLiteral(red: 0.67843137254902, green: 0.0784313725490196, blue: 0.341176470588235, alpha: 1)
    case (.pink, .p900): return #colorLiteral(red: 0.533333333333333, green: 0.0549019607843137, blue: 0.309803921568627, alpha: 1)
    case (.pink, .a100): return #colorLiteral(red: 1.0, green: 0.501960784313725, blue: 0.670588235294118, alpha: 1)
    case (.pink, .a200): return #colorLiteral(red: 1.0, green: 0.250980392156863, blue: 0.505882352941176, alpha: 1)
    case (.pink, .a400): return #colorLiteral(red: 0.96078431372549, green: 0.0, blue: 0.341176470588235, alpha: 1)
    case (.pink, .a700): return #colorLiteral(red: 0.772549019607843, green: 0.0666666666666667, blue: 0.384313725490196, alpha: 1)
        
    case (.lime, .p50): return #colorLiteral(red: 0.976470588235294, green: 0.984313725490196, blue: 0.905882352941176, alpha: 1)
    case (.lime, .p100): return #colorLiteral(red: 0.941176470588235, green: 0.956862745098039, blue: 0.764705882352941, alpha: 1)
    case (.lime, .p200): return #colorLiteral(red: 0.901960784313726, green: 0.933333333333333, blue: 0.611764705882353, alpha: 1)
    case (.lime, .p300): return #colorLiteral(red: 0.862745098039216, green: 0.905882352941176, blue: 0.458823529411765, alpha: 1)
    case (.lime, .p400): return #colorLiteral(red: 0.831372549019608, green: 0.882352941176471, blue: 0.341176470588235, alpha: 1)
    case (.lime, .p500): return #colorLiteral(red: 0.803921568627451, green: 0.862745098039216, blue: 0.223529411764706, alpha: 1)
    case (.lime, .p600): return #colorLiteral(red: 0.752941176470588, green: 0.792156862745098, blue: 0.2, alpha: 1)
    case (.lime, .p700): return #colorLiteral(red: 0.686274509803922, green: 0.705882352941177, blue: 0.168627450980392, alpha: 1)
    case (.lime, .p800): return #colorLiteral(red: 0.619607843137255, green: 0.615686274509804, blue: 0.141176470588235, alpha: 1)
    case (.lime, .p900): return #colorLiteral(red: 0.509803921568627, green: 0.466666666666667, blue: 0.0901960784313725, alpha: 1)
    case (.lime, .a100): return #colorLiteral(red: 0.956862745098039, green: 1.0, blue: 0.505882352941176, alpha: 1)
    case (.lime, .a200): return #colorLiteral(red: 0.933333333333333, green: 1.0, blue: 0.254901960784314, alpha: 1)
    case (.lime, .a400): return #colorLiteral(red: 0.776470588235294, green: 1.0, blue: 0.0, alpha: 1)
    case (.lime, .a700): return #colorLiteral(red: 0.682352941176471, green: 0.917647058823529, blue: 0.0, alpha: 1)
        
    case (.yellow, .p50): return #colorLiteral(red: 1.0, green: 0.992156862745098, blue: 0.905882352941176, alpha: 1)
    case (.yellow, .p100): return #colorLiteral(red: 1.0, green: 0.976470588235294, blue: 0.768627450980392, alpha: 1)
    case (.yellow, .p200): return #colorLiteral(red: 1.0, green: 0.96078431372549, blue: 0.615686274509804, alpha: 1)
    case (.yellow, .p300): return #colorLiteral(red: 1.0, green: 0.945098039215686, blue: 0.462745098039216, alpha: 1)
    case (.yellow, .p400): return #colorLiteral(red: 1.0, green: 0.933333333333333, blue: 0.345098039215686, alpha: 1)
    case (.yellow, .p500): return #colorLiteral(red: 1.0, green: 0.92156862745098, blue: 0.231372549019608, alpha: 1)
    case (.yellow, .p600): return #colorLiteral(red: 0.992156862745098, green: 0.847058823529412, blue: 0.207843137254902, alpha: 1)
    case (.yellow, .p700): return #colorLiteral(red: 0.984313725490196, green: 0.752941176470588, blue: 0.176470588235294, alpha: 1)
    case (.yellow, .p800): return #colorLiteral(red: 0.976470588235294, green: 0.658823529411765, blue: 0.145098039215686, alpha: 1)
    case (.yellow, .p900): return #colorLiteral(red: 0.96078431372549, green: 0.498039215686275, blue: 0.0901960784313725, alpha: 1)
    case (.yellow, .a100): return #colorLiteral(red: 1.0, green: 1.0, blue: 0.552941176470588, alpha: 1)
    case (.yellow, .a200): return #colorLiteral(red: 1.0, green: 1.0, blue: 0.0, alpha: 1)
    case (.yellow, .a400): return #colorLiteral(red: 1.0, green: 0.917647058823529, blue: 0.0, alpha: 1)
    case (.yellow, .a700): return #colorLiteral(red: 1.0, green: 0.83921568627451, blue: 0.0, alpha: 1)

    }
}



/*
 
 extension UInt {
 init?(_ string: String, radix: UInt) {
 let digits = "0123456789abcdefghijklmnopqrstuvwxyz"
 var result = UInt(0)
 for digit in string.lowercased().characters {
 if let index = digits.characters.index(of: digit) {
 let val = UInt(digits.characters.distance(from: digits.characters.startIndex, to: index))
 if val >= radix {
 return nil
 }
 result = result * radix + val
 } else {
 return nil
 }
 }
 self = result
 }
 }
 
 let data = stringJson.data(using: .utf8)!
 do{
 let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! [String: [String: String]]
 var result = ""
 for (name,tmp) in json {
 let keys = ["50","100","200","300","400","500","600","700","800","900","a100","a200","a400","a700"]
 for number in keys {
 
 if let color = tmp[number] {
 
 let uicolor = UIColor(UInt(Int(color, radix: 16)!))
 
 var fRed : CGFloat = 0
 var fGreen : CGFloat = 0
 var fBlue : CGFloat = 0
 var fAlpha: CGFloat = 0
 uicolor.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha)
 
 if number.hasPrefix("a") {
 result += "case (.\(name), .\(number)): return #colorLiteral(red: \(fRed), green: \(fGreen), blue: \(fBlue), alpha: 1)\n"
 } else {
 result += "case (.\(name), .p\(number)): return #colorLiteral(red: \(fRed), green: \(fGreen), blue: \(fBlue), alpha: 1)\n"
 }
 }
 }
 }
 
 print(result)
 } catch( let e) {
 print(e)
 print(e)
 }
 
 var stringJson = "{\r\n  \"red\": {\r\n    \"50\": \"ffebee\",\r\n    \"100\": \"ffcdd2\",\r\n    \"200\": \"ef9a9a\",\r\n    \"300\": \"e57373\",\r\n    \"400\": \"ef5350\",\r\n    \"500\": \"f44336\",\r\n    \"600\": \"e53935\",\r\n    \"700\": \"d32f2f\",\r\n    \"800\": \"c62828\",\r\n    \"900\": \"b71c1c\",\r\n    \"a100\": \"ff8a80\",\r\n    \"a200\": \"ff5252\",\r\n    \"a400\": \"ff1744\",\r\n    \"a700\": \"d50000\"\r\n  },\r\n  \"pink\": {\r\n    \"50\": \"fce4ec\",\r\n    \"100\": \"f8bbd0\",\r\n    \"200\": \"f48fb1\",\r\n    \"300\": \"f06292\",\r\n    \"400\": \"ec407a\",\r\n    \"500\": \"e91e63\",\r\n    \"600\": \"d81b60\",\r\n    \"700\": \"c2185b\",\r\n    \"800\": \"ad1457\",\r\n    \"900\": \"880e4f\",\r\n    \"a100\": \"ff80ab\",\r\n    \"a200\": \"ff4081\",\r\n    \"a400\": \"f50057\",\r\n    \"a700\": \"c51162\"\r\n  },\r\n  \"purple\": {\r\n    \"50\": \"f3e5f5\",\r\n    \"100\": \"e1bee7\",\r\n    \"200\": \"ce93d8\",\r\n    \"300\": \"ba68c8\",\r\n    \"400\": \"ab47bc\",\r\n    \"500\": \"9c27b0\",\r\n    \"600\": \"8e24aa\",\r\n    \"700\": \"7b1fa2\",\r\n    \"800\": \"6a1b9a\",\r\n    \"900\": \"4a148c\",\r\n    \"a100\": \"ea80fc\",\r\n    \"a200\": \"e040fb\",\r\n    \"a400\": \"d500f9\",\r\n    \"a700\": \"aa00ff\"\r\n  },\r\n  \"deeppurple\": {\r\n    \"50\": \"ede7f6\",\r\n    \"100\": \"d1c4e9\",\r\n    \"200\": \"b39ddb\",\r\n    \"300\": \"9575cd\",\r\n    \"400\": \"7e57c2\",\r\n    \"500\": \"673ab7\",\r\n    \"600\": \"5e35b1\",\r\n    \"700\": \"512da8\",\r\n    \"800\": \"4527a0\",\r\n    \"900\": \"311b92\",\r\n    \"a100\": \"b388ff\",\r\n    \"a200\": \"7c4dff\",\r\n    \"a400\": \"651fff\",\r\n    \"a700\": \"6200ea\"\r\n  },\r\n  \"indigo\": {\r\n    \"50\": \"e8eaf6\",\r\n    \"100\": \"c5cae9\",\r\n    \"200\": \"9fa8da\",\r\n    \"300\": \"7986cb\",\r\n    \"400\": \"5c6bc0\",\r\n    \"500\": \"3f51b5\",\r\n    \"600\": \"3949ab\",\r\n    \"700\": \"303f9f\",\r\n    \"800\": \"283593\",\r\n    \"900\": \"1a237e\",\r\n    \"a100\": \"8c9eff\",\r\n    \"a200\": \"536dfe\",\r\n    \"a400\": \"3d5afe\",\r\n    \"a700\": \"304ffe\"\r\n  },\r\n  \"blue\": {\r\n    \"50\": \"e3f2fd\",\r\n    \"100\": \"bbdefb\",\r\n    \"200\": \"90caf9\",\r\n    \"300\": \"64b5f6\",\r\n    \"400\": \"42a5f5\",\r\n    \"500\": \"2196f3\",\r\n    \"600\": \"1e88e5\",\r\n    \"700\": \"1976d2\",\r\n    \"800\": \"1565c0\",\r\n    \"900\": \"0d47a1\",\r\n    \"a100\": \"82b1ff\",\r\n    \"a200\": \"448aff\",\r\n    \"a400\": \"2979ff\",\r\n    \"a700\": \"2962ff\"\r\n  },\r\n  \"lightblue\": {\r\n    \"50\": \"e1f5fe\",\r\n    \"100\": \"b3e5fc\",\r\n    \"200\": \"81d4fa\",\r\n    \"300\": \"4fc3f7\",\r\n    \"400\": \"29b6f6\",\r\n    \"500\": \"03a9f4\",\r\n    \"600\": \"039be5\",\r\n    \"700\": \"0288d1\",\r\n    \"800\": \"0277bd\",\r\n    \"900\": \"01579b\",\r\n    \"a100\": \"80d8ff\",\r\n    \"a200\": \"40c4ff\",\r\n    \"a400\": \"00b0ff\",\r\n    \"a700\": \"0091ea\"\r\n  },\r\n  \"cyan\": {\r\n    \"50\": \"e0f7fa\",\r\n    \"100\": \"b2ebf2\",\r\n    \"200\": \"80deea\",\r\n    \"300\": \"4dd0e1\",\r\n    \"400\": \"26c6da\",\r\n    \"500\": \"00bcd4\",\r\n    \"600\": \"00acc1\",\r\n    \"700\": \"0097a7\",\r\n    \"800\": \"00838f\",\r\n    \"900\": \"006064\",\r\n    \"a100\": \"84ffff\",\r\n    \"a200\": \"18ffff\",\r\n    \"a400\": \"00e5ff\",\r\n    \"a700\": \"00b8d4\"\r\n  },\r\n  \"teal\": {\r\n    \"50\": \"e0f2f1\",\r\n    \"100\": \"b2dfdb\",\r\n    \"200\": \"80cbc4\",\r\n    \"300\": \"4db6ac\",\r\n    \"400\": \"26a69a\",\r\n    \"500\": \"009688\",\r\n    \"600\": \"00897b\",\r\n    \"700\": \"00796b\",\r\n    \"800\": \"00695c\",\r\n    \"900\": \"004d40\",\r\n    \"a100\": \"a7ffeb\",\r\n    \"a200\": \"64ffda\",\r\n    \"a400\": \"1de9b6\",\r\n    \"a700\": \"00bfa5\"\r\n  },\r\n  \"green\": {\r\n    \"50\": \"e8f5e9\",\r\n    \"100\": \"c8e6c9\",\r\n    \"200\": \"a5d6a7\",\r\n    \"300\": \"81c784\",\r\n    \"400\": \"66bb6a\",\r\n    \"500\": \"4caf50\",\r\n    \"600\": \"43a047\",\r\n    \"700\": \"388e3c\",\r\n    \"800\": \"2e7d32\",\r\n    \"900\": \"1b5e20\",\r\n    \"a100\": \"b9f6ca\",\r\n    \"a200\": \"69f0ae\",\r\n    \"a400\": \"00e676\",\r\n    \"a700\": \"00c853\"\r\n  },\r\n  \"lightgreen\": {\r\n    \"50\": \"f1f8e9\",\r\n    \"100\": \"dcedc8\",\r\n    \"200\": \"c5e1a5\",\r\n    \"300\": \"aed581\",\r\n    \"400\": \"9ccc65\",\r\n    \"500\": \"8bc34a\",\r\n    \"600\": \"7cb342\",\r\n    \"700\": \"689f38\",\r\n    \"800\": \"558b2f\",\r\n    \"900\": \"33691e\",\r\n    \"a100\": \"ccff90\",\r\n    \"a200\": \"b2ff59\",\r\n    \"a400\": \"76ff03\",\r\n    \"a700\": \"64dd17\"\r\n  },\r\n  \"lime\": {\r\n    \"50\": \"f9fbe7\",\r\n    \"100\": \"f0f4c3\",\r\n    \"200\": \"e6ee9c\",\r\n    \"300\": \"dce775\",\r\n    \"400\": \"d4e157\",\r\n    \"500\": \"cddc39\",\r\n    \"600\": \"c0ca33\",\r\n    \"700\": \"afb42b\",\r\n    \"800\": \"9e9d24\",\r\n    \"900\": \"827717\",\r\n    \"a100\": \"f4ff81\",\r\n    \"a200\": \"eeff41\",\r\n    \"a400\": \"c6ff00\",\r\n    \"a700\": \"aeea00\"\r\n  },\r\n  \"yellow\": {\r\n    \"50\": \"fffde7\",\r\n    \"100\": \"fff9c4\",\r\n    \"200\": \"fff59d\",\r\n    \"300\": \"fff176\",\r\n    \"400\": \"ffee58\",\r\n    \"500\": \"ffeb3b\",\r\n    \"600\": \"fdd835\",\r\n    \"700\": \"fbc02d\",\r\n    \"800\": \"f9a825\",\r\n    \"900\": \"f57f17\",\r\n    \"a100\": \"ffff8d\",\r\n    \"a200\": \"ffff00\",\r\n    \"a400\": \"ffea00\",\r\n    \"a700\": \"ffd600\"\r\n  },\r\n  \"amber\": {\r\n    \"50\": \"fff8e1\",\r\n    \"100\": \"ffecb3\",\r\n    \"200\": \"ffe082\",\r\n    \"300\": \"ffd54f\",\r\n    \"400\": \"ffca28\",\r\n    \"500\": \"ffc107\",\r\n    \"600\": \"ffb300\",\r\n    \"700\": \"ffa000\",\r\n    \"800\": \"ff8f00\",\r\n    \"900\": \"ff6f00\",\r\n    \"a100\": \"ffe57f\",\r\n    \"a200\": \"ffd740\",\r\n    \"a400\": \"ffc400\",\r\n    \"a700\": \"ffab00\"\r\n  },\r\n  \"orange\": {\r\n    \"50\": \"fff3e0\",\r\n    \"100\": \"ffe0b2\",\r\n    \"200\": \"ffcc80\",\r\n    \"300\": \"ffb74d\",\r\n    \"400\": \"ffa726\",\r\n    \"500\": \"ff9800\",\r\n    \"600\": \"fb8c00\",\r\n    \"700\": \"f57c00\",\r\n    \"800\": \"ef6c00\",\r\n    \"900\": \"e65100\",\r\n    \"a100\": \"ffd180\",\r\n    \"a200\": \"ffab40\",\r\n    \"a400\": \"ff9100\",\r\n    \"a700\": \"ff6d00\"\r\n  },\r\n  \"deeporange\": {\r\n    \"50\": \"fbe9e7\",\r\n    \"100\": \"ffccbc\",\r\n    \"200\": \"ffab91\",\r\n    \"300\": \"ff8a65\",\r\n    \"400\": \"ff7043\",\r\n    \"500\": \"ff5722\",\r\n    \"600\": \"f4511e\",\r\n    \"700\": \"e64a19\",\r\n    \"800\": \"d84315\",\r\n    \"900\": \"bf360c\",\r\n    \"a100\": \"ff9e80\",\r\n    \"a200\": \"ff6e40\",\r\n    \"a400\": \"ff3d00\",\r\n    \"a700\": \"dd2c00\"\r\n  },\r\n  \"brown\": {\r\n    \"50\": \"efebe9\",\r\n    \"100\": \"d7ccc8\",\r\n    \"200\": \"bcaaa4\",\r\n    \"300\": \"a1887f\",\r\n    \"400\": \"8d6e63\",\r\n    \"500\": \"795548\",\r\n    \"600\": \"6d4c41\",\r\n    \"700\": \"5d4037\",\r\n    \"800\": \"4e342e\",\r\n    \"900\": \"3e2723\"\r\n  },\r\n  \"grey\": {\r\n    \"50\": \"fafafa\",\r\n    \"100\": \"f5f5f5\",\r\n    \"200\": \"eeeeee\",\r\n    \"300\": \"e0e0e0\",\r\n    \"400\": \"bdbdbd\",\r\n    \"500\": \"9e9e9e\",\r\n    \"600\": \"757575\",\r\n    \"700\": \"616161\",\r\n    \"800\": \"424242\",\r\n    \"900\": \"212121\"\r\n  },\r\n  \"bluegrey\": {\r\n    \"50\": \"eceff1\",\r\n    \"100\": \"cfd8dc\",\r\n    \"200\": \"b0bec5\",\r\n    \"300\": \"90a4ae\",\r\n    \"400\": \"78909c\",\r\n    \"500\": \"607d8b\",\r\n    \"600\": \"546e7a\",\r\n    \"700\": \"455a64\",\r\n    \"800\": \"37474f\",\r\n    \"900\": \"263238\"\r\n  }\r\n}"
*/
















