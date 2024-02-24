(local oxocharcoal (. (require (.. :oxocharcoal)) :oxocharcoal))

(local colors {:color0 oxocharcoal.grey02
               :color1 oxocharcoal.color24
               :color2 oxocharcoal.white
               :color3 oxocharcoal.black
               :color6 oxocharcoal.grey04
               :color7 oxocharcoal.color1
               :color8 oxocharcoal.color2
               :color9 oxocharcoal.color34
               :color10 oxocharcoal.color3})

{:replace {:a {:fg (. colors :color0) :bg (. colors :color1)}
           :b {:fg (. colors :color2) :bg (. colors :color3)}}
 :inactive {:a {:fg (. colors :color0) :bg (. colors :color7)}
            :b {:fg (. colors :color6) :bg (. colors :color3)}
            :z {:fg (. colors :color0) :bg (. colors :color3)}}
 :normal {:a {:fg (. colors :color0) :bg (. colors :color7)}
          :b {:fg (. colors :color6) :bg (. colors :color3)}
          :c {:fg (. colors :color6) :bg (. colors :color3)}
          :z {:fg (. colors :color6) :bg (. colors :color3)}}
 :visual {:a {:fg (. colors :color0) :bg (. colors :color8)}
          :b {:fg (. colors :color6) :bg (. colors :color3)}
          :y {:fg (. colors :color6) :bg (. colors :color3)}
          :z {:fg (. colors :color9) :bg (. colors :color3)}}
 :insert {:a {:fg (. colors :color0) :bg (. colors :color9)}
          :b {:fg (. colors :color6) :bg (. colors :color3)}
          :z {:fg (. colors :color9) :bg (. colors :color3)}}
 :command {:a {:fg (. colors :color0) :bg (. colors :color10)}}}

